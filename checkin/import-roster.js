var xlsx = require("xlsx"),
    db   = require("../server/database");

var encode = xlsx.utils.encode_cell;

// The local name of the workbook containing member information
var BOOK = "members.xls";

// Mapping desired columns to their database column names
var COLS = {
  "ISU ID":    "isu_id",
  "ISU NetID": "net_id",
  "First":     "first_name",
  "Last":      "last_name",
  "Chapter":   "chapter"
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
    res[ col ] = val ? val.v : "";
  }

  return res;
};

// First, open the workbook and grab the first sheet
var book = xlsx.readFile( BOOK );
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

// Add each of the rows to the database, if it isn't there already
var len = rows.length,
    count = 0,
    added = 0;

var checkDone = function() {
  if( count === len ) {
    console.log("Done. Checked %d members, added %d new.", count, added );

    // Disconnect from the database
    db.disconnect();
  }
};

rows.forEach(function( row ) {
  db.addMemberToRoster( row, function( err, res ) {
    count++;
    res.created && added++;
    checkDone();
  });
});