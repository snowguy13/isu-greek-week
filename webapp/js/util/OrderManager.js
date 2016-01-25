define(function() {

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
  //   match  Boolean  true if the code matches the netid
  //   token  String   The token to use when validating API calls
  checkOrderCode: function( args, fn ) {
    // No api calls prepared yet
    fn({
      match: Math.random() < .5,
      token: "test"
    });
  },

  // Updates an order with 'name' and 'chapter' fields
  //
  // Accepted args fields:
  //   netid    String  The Net ID of the order to update
  //   code     String  The auth code for that Net ID
  //   name     String  The name to use with the order
  //   chapter  String  The chapter this order is for
  // 
  // Responds with:
  //   success  Boolean  true if the update was successful
  updateOrderInfo: function( args, fn ) {
    fn({
      success: true,
    });
  },

  // Retrieves the order for a netid
  //
  // Accepted args fields:
  //   netid    String  The Net ID of the order to update
  //   code     String  The auth code for that Net ID
  //
  // Responds with:
  //   match  Boolean  true if the code matches the netid
  //   items  Array    An array of the items ordered by the NetID, each
  //                   having the following properties
  //     id    String
  //     name  String
  //     size  String
  //     qty   Number
  retrieveOrder: function( args, fn ) {
    // No api calls prepared yet
    fn({
      match: true,
      items: []
    });
  }
};

});