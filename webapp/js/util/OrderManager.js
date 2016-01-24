define(function() {

return {
  // Returns true if the given netid already has an order
  orderExists: function( netid, fn ) {
    // No api calls prepared yet
    fn({
      valid:  Math.random() < .9,
      exists: Math.random() < .5
    });
  },

  // Retrieves the order for a netid
  retrieveOrder: function( netid, fn ) {
    // No api calls prepared yet
    fn({
      items: []
    });
  }
};

});