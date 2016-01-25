define(function() {

return {
  // Checks if the given Net ID already has an order underway, checking
  // the validity of the Net ID in the process
  // Responds with:
  //   valid   Boolean  true if the Net ID is valid
  //   exists  Boolean  true if an order exists for the given netid
  orderExists: function( netid, fn ) {
    // No api calls prepared yet
    fn({
      valid:  Math.random() < .9,
      exists: Math.random() < .5
    });
  },

  // Checks if the given code matches the given netid
  // Responds with:
  //   match  Boolean  true if the code matches the netid
  checkOrderCode: function( netid, code, fn ) {
    // No api calls prepared yet
    fn({
      match: Math.random() < .5
    });
  },

  // Retrieves the order for a netid
  // Responds with:
  //   match  Boolean  true if the code matches the netid
  //   items  Array    An array of the items ordered by the NetID, each
  //                   having the following properties
  //     id    String
  //     name  String
  //     size  String
  //     qty   Number
  retrieveOrder: function( netid, code, fn ) {
    // No api calls prepared yet
    fn({
      match: true,
      items: []
    });
  }
};

});