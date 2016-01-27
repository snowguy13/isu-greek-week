var pg = require("pg");

// Should work remotely or locally
var DB = process.env.DATABASE_URL || "tomscallon:tomscallon@localhost/isugreekweek";

// Common statements
var STMT = {
  GET_APPAREL: "SELECT name, "
                    + "regexp_split_to_array( sizes, ',' ) AS sizes, "
                    + "cost::numeric AS cost, "
                    + "regexp_split_to_array( images, ',' ) AS images "
             + "FROM Apparel;",

  CHECK_ORDER_EXISTS: function( netid ) {
    return "SELECT EXISTS( SELECT 1 FROM Orders WHERE netid = '" + netid + "' ) AS exists;";
  }
};

// Create a client, connect to the DB
var client = new pg.Client( DB );
client.connect();

// Save apparel information -- it doesn't change
var apparel;

module.exports = {
  getApparel: function( cb ) {
    if( apparel ) {
      // If we already have the apparel, just return the cached value
      cb( null, apparel );
    } else {
      // Otherwise, get the data from the server
      client.query( STMT.GET_APPAREL, function( err, res ) {
        // Grab the apparel information
        apparel = res.rows;

        // Make sure sizes and images are lists
        apparel.forEach(function( item ) {
          item.cost = +item.cost;
        });
        
        // Return the apparel
        cb( err, apparel );
      });
    }
  },

  checkOrderExists: function( netid, cb ) {
    // Query the database to see if such an order exists
    client.query( STMT.CHECK_ORDER_EXISTS( netid ), function( err, res ) {
      cb( err, res.rows[ 0 ].exists );
    });
  }
};