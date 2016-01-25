define(function() {

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
  //   valid   Boolean  true if the Net ID is valid
  //   exists  Boolean  true if an order exists for the given netid
  orderExists: function( args, fn ) {
    // No api calls prepared yet
    fn({
      valid:  Math.random() < .9,
      exists: Math.random() < .5
    });
  },

  // Checks if the given code matches the given netid
  //
  // Accepted args fields:
  //   netid  String  The Net ID check
  //   code   String  The code to check
  //
  // Responds with:
  //   valid  Boolean  true if the code matches the netid
  //   token  String   The token to use when validating API calls
  checkOrderCode: function( args, fn ) {
    // When a new order code is tried, remove authentication
    auth = false;
    netid = undefined;
    token = undefined;

    // If valid, save the netid and token
    auth = true;
    netid = args.netid;
    token = "test";

    // No api calls prepared yet
    fn({
      valid: Math.random() < .5,
      token: "test"
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

  // Retrieves the order for a netid
  //
  // Accepted args fields:
  //   netid  String  The Net ID of the order to update
  //   token  String  The auth code for that Net ID
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
  retrieveOrder: function( args, fn ) {
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