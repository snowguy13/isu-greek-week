var pg = require("pg");

// Should work remotely or locally
var DB = process.env.DATABASE_URL || "tomscallon:tomscallon@localhost/isugreekweek";

// Creates a random code (used in CREATE_ORDER)
var CODE_LEN = 10,
    TOKEN_LEN = 20,
    CHARS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

var generateRandom = function( len ) {
  var code = "";

  for( var i = 0; i < len; i++ ) {
    code += CHARS[ Math.floor( Math.random() * CHARS.length ) ];
  }

  return code;
};

// Common statements
var STMT = {
  GET_APPAREL: "SELECT name, "
                    + "regexp_split_to_array( sizes, ',' ) AS sizes, "
                    + "cost::numeric AS cost, "
                    + "regexp_split_to_array( images, ',' ) AS images "
             + "FROM Apparel;",

  GET_ORDER: function( netid ) {
    return "SELECT * FROM Orders WHERE netid = '" + netid + "';";
  },

  CREATE_ORDER: function( netid ) {
    return "INSERT INTO Orders (netid, code) VALUES ('" + netid + "', '" + generateRandom( CODE_LEN ) + "')";
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

  createOrder: function( netid, cb ) {
    // Query the database to see if such an order exists
    client.query( STMT.GET_ORDER( netid ), function( err, res ) {
      // If there was an error, quit now
      if( err ) {
        cb( err );
      }
      
      // Grab the row (if it's there)
      var row = res.rows[ 0 ];
      
      // If no such order exists...
      if( !row ) {
        // ...create the order
        client.query( STMT.CREATE_ORDER( netid ), function( err, res ) {
          // If there was an error, quit now
          cb( err, err ? undefined : {
            newOrderCreated: true,
            orderHasInfo:    false
          });
        });
      } else {
        // Otherwise, the order already exists
        cb( undefined, {
          newOrderCreated: false,
          orderHasInfo:    !!(row.name && row.chapter)
        });
      }
    });
  },

  checkOrderCode: function( netid, code, cb ) {

  }
};