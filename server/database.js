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

  CREATE_ORDER: function( netid, code ) {
    return "INSERT INTO Orders (netid, code) VALUES ('" + netid + "', '" + code + "')";
  },

  CHECK_ORDER_CODE: function( netid, code ) {
    return "SELECT EXISTS(SELECT 1 FROM Orders WHERE netid='" + netid + "' AND code='" + code + "')";
  },

  UPDATE_TOKEN: function( netid, token ) {
    return "UPDATE Orders SET token='" + token + "' WHERE netid='" + netid + "'";
  }
};

// Create a client, connect to the DB
var client = new pg.Client( DB );
client.connect();

// Save apparel information -- it doesn't change
var apparel;

module.exports = {
  /**
   * Retrieves a listing of the available apparel items in JSON format.
   *
   * Parameters:
   *   cb  Function( err, apparel )
   *     A callback to invoke on error or success
   *     
   *     err  Anything
   *       Any error arising during the retrieval process.
   *     apparel  Array
   *       An array of the apparel items, each a JSON object with the following
   *       properties:
   *       
   *       name    String         The name of the apparel item
   *       sizes   Array<String>  The sizes available for this item
   *       cost    Number         The cost of this item
   *       images  Array<String>  A list of file names -- these files, located in the folder
   *                              'webapp/image/apparel', contain images of this item
   */
  getApparel: function( cb ) {
    if( apparel ) {
      // If we already have the apparel, just return the cached value
      cb( null, apparel );
    } else {
      // Otherwise, get the data from the server
      client.query( STMT.GET_APPAREL, function( err, res ) {
        // For now, any error here should crash the program
        if( err ) {
          process.exit();
        }

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
  
  /**
   * Creates an order for the given Net ID (if one does not already exist).
   *
   * Parameters:
   *   cb  Function( err, info )
   *     A callback to invoke when the creation succeeds or fails.
   * 
   *     err  Anything
   *       Any error raised while checking the order's existence or creating an order.
   *     info  Object
   *       A JSON object containing information about the status of the order. It has
   *       the following properties:
   *       
   *       newOrderCreated  Boolean  true if a new order was created, false if an order
   *                                 already existed for the given Net ID
   *       orderCode        String   The password-code associated with the order
   *       orderHasInfo     Boolean  true if the order has valid 'name' and 'chapter'
   *                                 values associated with it, false otherwise
   */
  createOrder: function( netid, cb ) {
    // Query the database to see if such an order exists
    client.query( STMT.GET_ORDER( netid ), function( err, res ) {
      // If there was an error, quit now
      if( err ) {
        cb( err );
        return;
      }
      
      // Grab the row (if it's there)
      var row = res.rows[ 0 ];
      
      // If no such order exists...
      if( !row ) {
        // ...create the order
        var code = generateRandom( CODE_LEN );
        client.query( STMT.CREATE_ORDER( netid, code ), function( err, res ) {
          // If there was an error, quit now
          cb( err, err ? undefined : {
            newOrderCreated: true,
            orderCode:       code,
            orderHasInfo:    false
          });
        });
      } else {
        // Otherwise, the order already exists
        cb( undefined, {
          newOrderCreated: false,
          orderCode:       row.code,
          orderHasInfo:    !!(row.name && row.chapter)
        });
      }
    });
  },
  
  /**
   * Checks if the given code matches the given Net ID.
   * 
   * Parameters:
   *   netid  String  
   *     The Net ID to check
   *   code  String
   *     The code to check against the Net ID
   *   cb  Function( err, info )
   *     A callback to invoke when the verification process fails or succeeds.
   *     
   *     err  Anything
   *       Any error raised while checking the Net ID-code pair.
   *     info  Object
   *       A JSON object contain information about the verification. It has the
   *       following properties:
   *       
   *       match  Boolean  true if the code matches the Net ID, false otherwise
   */
  checkOrderCode: function( netid, code, cb ) {
    // Query the database to see if the given credentials match
    client.query( STMT.CHECK_ORDER_CODE( netid, code ), function( err, res ) {
      // If the was an error, quit now
      if( err ) {
        cb("Error while checking code: " + err );
        return;
      }

      // If there was no match, notify the caller now
      var match = res.rows[0].exists;
      if( !match ) {
        cb( null, {
          match: false,
          token: null
        });
        return;
      }

      // Otherwise, generate a token for the requester
      var token = generateRandom( TOKEN_LEN );
      client.query( STMT.UPDATE_TOKEN( netid, token ), function( err, res ) {
        // If there was an error, fail
        if( err ) {
          cb("Error while updating order token: " + err );
          return;
        }

        // Otherwise, notify the caller of the success
        cb( null, {
          match: true,
          token: token
        });
      });
    });
  }
};