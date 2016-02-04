define(["jquery"],
function( $ ) {

var auth = false,
    netid, token;

return {
  // Checks if the given Net ID already has an order underway, checking
  // the validity of the Net ID in the process
  //
  // Accepted args fields:
  //   netid  String  The Net ID check
  //
  // Responds with:
  //   newOrderCreated  Boolean  true if a new order was created, false if one already existed
  //   hasOrderInfo     Boolean  true if the order has name and chapter info already
  createOrder: function( args, fn ) {
    $.ajax({
      method: "POST",
      url:    "/api/orders/" + args.netid + "/create",
      success: function( res ) {
        fn( res );
      }
    });
  },

  // Checks if the given code matches the given netid
  //
  // Accepted args fields:
  //   netid  String  The Net ID check
  //   code   String  The code to check
  //
  // Responds with:
  //   [error]  String   Any error occurring during the request
  //   [valid]  Boolean  If no error, true if the code matches the netid
  //   [token]  String   If valid=true, the token to use when validating API calls
  checkOrderCode: function( args, fn ) {
    // When a new order code is tried, remove authentication
    auth = false;
    netid = undefined;
    token = undefined;
    
    // Make the api call
    $.ajax({
      method: "POST",
      url:    "/api/orders/" + args.netid + "/check",
      contentType: "application/json; charset=utf-8",
      data: JSON.stringify({
        code: args.code
      }),
      success: function( res ) {
        // If valid, save the netid and token (if there was no error)
        if( !( "error" in res ) ) {
          auth  = true;
          netid = args.netid;
          token = res.token;
        }

        // No api calls prepared yet
        fn( res );
      }
    });
  },

  // Updates an order with 'name' and 'chapter' fields
  //
  // Accepted args fields:
  //   name     String  The name to use with the order
  //   chapter  String  The chapter this order is for
  // 
  // Responds with:
  //   success  Boolean  true if the update was successful
  //   [error]  String   If success=false, a description of what went wrong
  updateOrderInfo: function( args, fn ) {
    if( !auth ) {
      fn({
        success: false,
        reason:  "Not authenticated"
      });
    }
    
    // No api calls prepared yet
    fn({
      success: Math.random() < .5,
    });
  },

  // Retrieves the order for the stored credentials
  //
  // Responds with:
  //   success  Boolean  true if the order was retrieved successfully
  //   [error]  String   If success=false, a description of what went wrong
  //   [items]  Array    If success=true, an array of the items ordered by
  //                     the NetID, each having the following properties
  //     id     String
  //     name   String
  //     size   String
  //     count  Number
  retrieveOrder: function( fn ) {
    if( !auth ) {
      fn({
        success: false,
        reason:  "Not authenticated"
      });
    }

    // No api calls prepared yet
    fn({
      match: true,
      items: []
    });
  },

  // Adds a new item to the order
  //
  // Accepted item fields:
  //   name   String
  //   size   String
  //   count  Number
  //
  // Responds with:
  //   success  Boolean  true if the addition succeeded
  //   [error]  String   If success=false, indicates what went wrong
  //   [id]     String   If success=true, the id of the new order item
  addItem: function( item, fn ) {
    if( !auth ) {
      fn({
        success: false,
        reason:  "Not authenticated"
      });
    }

    // No api calls prepared
    fn({
      success: true,
      id: Math.round( Math.random() * 1000000 )
    });
  },

  // Deletes an item from an order
  //
  // Accepted item fields:
  //   id  String  The id of the order item to delete
  //
  // Responds with:
  //   success  Boolean  true if the addition succeeded
  //   [error]  String   If success=false, indicates what went wrong
  deleteItem: function( item, fn ) {
    if( !auth ) {
      fn({
        success: false,
        reason:  "Not authenticated"
      });
    }

    // No api calls prepared
    fn({
      success: true
    });
  }
};

});