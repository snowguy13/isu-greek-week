var xlsx = require("xlsx");
    db   = require("../server/database"),
    chapters = require("./chapters");

var encode = xlsx.utils.encode_cell;

// A list of workbooks to read in
// If <name> is an element of BOOKS, then the script will look for a book
// called waivers-<name>.xls and will import the waiver data into a table
// called waivers.<name>
var BOOKS = ["lipsync", "general"];

var doneCount = 0;
var checkDisconnect = function() {
  if( ++doneCount === BOOKS.length + 1 ) db.disconnect();
};

// A mapping from column headers to property names
var COLS = {
  "First Name":   "first",
  "Last Name":    "last",
  "Organization": "chapter"
};

var readRow = function( sheet, row ) {
  var vals = [];
  
  // Read across the row until the last relevant column is hit
  for( var i = 0, e = sheet['!range'].e.c; i < e; i++ ) {
    vals.push( sheet[ encode({ r: row, c: i }) ].v );
  }

  return vals;
};

var reduceRow = function( sheet, row, cols ) {
  var res = {}, val;

  // Grab the relevant columns
  for( var col in cols ) {
    val = sheet[ encode({ r: row, c: cols[ col ] }) ];
    res[ col ] = val ? val.v.trim() : "";
  }

  return res;
};

var readBookToDatabase = function( name, cb ) {
  // First, open the workbook and grab the first sheet
  var book = xlsx.readFile( `waivers-${name}.xls` );
  var sheet = book.Sheets[ book.SheetNames[0] ];

  // Then, locate the indices of the requested columns
  var cols = readRow( sheet, 0 ).reduce(function( colMap, colName, index ) {
    // If the current column name is requested, add it to the map
    if( colName in COLS ) {
      colMap[ COLS[ colName ] ] = index;
    }

    // Return the map
    return colMap;
  }, {});

  // Now, columns have been located, so map each row into an object
  var rows = [];
  for( var i = 1, end = sheet['!range'].e.r - 1; i < end; i++ ) {
    rows.push( reduceRow( sheet, i, cols ) );
  }

  // Attempt to mark each row in the database
  var len = rows.length,
      counts = {
        seen: 0,
        erred: 0,
        failNone: 0,
        failMany: 0,
        success: 0
      };
  var failed = [],
      succeeded = [];
  
  // Callback checking so we know when to close the db
  var checkDone = function() {
    if( counts.seen < len ) return;

    console.log("Done importing '%s' waivers. (%d attempted, %d failed.)", name, len, failed.length );
    console.log("  %d erred", counts.erred );
    console.log("  %d failed because no matching roster entry was found", counts.failNone );
    failed.filter( row => row[1] === "none" ).forEach( row => console.log( row[0] ) );
    console.log("  %d failed because more than one matching roster entry was found", counts.failMany );
    failed.filter( row => row[1] === "many" ).forEach( row => console.log( row[0] ) );
    console.log("  %d succeeded", counts.success );

    checkDisconnect();
  }
  
  rows.forEach(function( row ) {
    db.setWaiverStatus( row, name, true, function( err, res ) {
      counts.seen++;
      
      // If an error occurred, add it to the stack of errors
      if( err ) {
        counts.erred++;
        failed.push([ row, "error", err ]);
      } else {
        if( res.updated ) {
          counts.success++;
          succeeded.push( row );
        } else if( res.options.length ) {
          counts.failMany++;
          failed.push([ row, "many", res.options ]);
        } else {
          counts.failNone++;
          failed.push([ row, "none", res.options ]);
        }
      }

      checkDone();
    });
  });
};

// Read each of the books into the database
BOOKS.forEach( readBookToDatabase );

// PIKE sent paper general waivers, their netids are in "pikes.json"
// Read PIKEs into the database
var pikes = require("./pikes.json");
var failed = [], notFound = [], count = 0;
var printResults = function() {
  console.log("\n-----Pike stuff-----")
  console.log("  Failed: ", failed);
  console.log("  Not found: ", notFound);
  checkDisconnect();
}
pikes.forEach(function( netId ) {
  // Add it to the database!
  db.setWaiverStatusByNetID( netId, "general", true, function( err, res ) {
    if( err ) {
      failed.push( netId );
    } else if( !res.success ) {
      notFound.push( netId );
    }

    if( ++count === pikes.length ) printResults();
  });
});

// Disconnect from the database
//db.disconnect();