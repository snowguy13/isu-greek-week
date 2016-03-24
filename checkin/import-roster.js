var xlsx = require("xlsx"),
    db   = require("../server/database");

var encode = xlsx.utils.encode_cell,
    decode = xlsx.utils.decode_cell;

// The local name of the workbook containing member information
var BOOK = "members.xlsx";

// Mapping desired columns to their database column names
var COLS = {
  "ISU ID":    "isu_id",
  "ISU NetID": "net_id",
  "First":     "first_name",
  "Last":      "last_name",
  "Chapter":   "chapter"
};

// Members in central
var CENTRAL = [
  "ljgosse",
  "sramundt",
  "brgeiger",
  "mdharm",
  "vanscoy",
  "rsmccc",
  "banwartl",
  "kmkassel",
  "hannahb",
  "asposeto",
  "kohlmann",
  "hemeador",
  "bbiegger",
  "cjroyer",
  "dschertz",
  "bpick",
  "laurac",
  "dheppner",
  "tegavin",
  "nsuvorov",
  "tscallon",
  "pthenn",
  "jmcentee"
];

// Members in crew
var CREW = [
  "aditya",
  "ajoder",
  "jthurin",
  "tameraa",
  "maggwen",
  "rglenarz",
  "gmperrin",
  "mcarlson",
  "stalians",
  "kaf",
  "mtguion",
  "afarniok",
  "nateholl",
  "pearsonz",
  "bzimm",
  "mwilwerd",
  "njyeager",
  "tdwiese",
  "wforsyth",
  "konradi",
  "jgremel",
  "willman",
  "camandt",
  "rekinney",
  "bherren",
  "lbrooke",
  "rachbill",
  "mteubert",
  "aburney",
  "bkdarr",
  "ocweaver",
  "jxglass",
  "jkruse2",
  "bbye",
  "endecott",
  "whsmith",
  "fbeeler"
];

var readRow = function( sheet, row ) {
  var vals = [];

  /*// Testing
  for( var prop in sheet ) {
    if( prop[0] === '!' ) {
      console.log( prop, ":", sheet[ prop ] );
    }
  }*/
  
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

// First, open the workbook and grab the first sheet
var book = xlsx.readFile( BOOK );
var sheet = book.Sheets[ book.SheetNames[0] ];

// Make sure the sheet has a !range property
if( !sheet['!range'] ) {
  var ref = sheet['!ref'], e;

  if( !ref ) {
    console.log("Unable to determine bounds of worksheet");
    process.exit();
  }

  // Determine the bounds from !ref
  ref = ref.split(":");
  sheet['!range'] = {
    s: decode( ref[0] ),
    e: e = decode( ref[1] )
  }

  // Update end positions (to make them behave like array lengths)
  e.r++;
  e.c++;
}

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

// Add each of the rows to the database, if it isn't there already
var len = rows.length,
    count = 0,
    added = 0,
    erred = 0,
    errors = {};

var checkDone = function() {
  if( count === len ) {
    console.log("Errors:");
    for( var err in errors ) {
      console.log("  %d\t%s", errors[err], err );
    }
    console.log("\nDone. Checked %d members, added %d new. %d failed (see errors above).", count, added, erred );

    // Disconnect from the database
    db.disconnect();
  }
};

rows.forEach(function( row ) {
  // Check if the member is in crew or central
  if( CENTRAL.indexOf( row.net_id ) > -1 ) {
    row.gw_role = "Central";
  } else if( CREW.indexOf( row.net_id ) > -1 ) {
    row.gw_role = "Crew";
  }

  db.addMemberToRoster( row, function( err, res ) {
    count++;

    if( err ) {
      erred++;
      
      if( !( err.message in errors ) ) {
        errors[ err.message ] = 1;
      } else {
        errors[ err.message ]++;
      }
    } else {
      res.created && added++;
    }

    checkDone();
  });
});