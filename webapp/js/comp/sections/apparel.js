define(["jquery", "data/chapters"], function( $, chapters ) {

// Actual prepare method. Call once apparel info is loaded
// and .prepare on the returned object has been invoked
var prepare = function( el, done ) {
  

  // Notify the SectionManager the section is ready
  done();
};

// Make a request to get apparel information
var done = false,
    shouldCallPrepare
    
    // only needed if .prepare is called before apparel is loaded
    prepareElement,
    prepareDone;

$.ajax({
  method: "GET",
  url:    "/api/apparel"
  success: function( data ) {
    // Save the apparel information
    apparel = data;

    // If the prepare callback hasn't been ca
    if( !shouldCallPrepare ) {
      shouldCallPrepare = true;
    } else {
      prepare( prepareElement, prepareDone );
    }
  }
});

return {
  prepare: function( el, done ) {
    if( !shouldCallPrepare ) {
      shouldCallPrepare = true;
      prepareElement = el;
      prepareDone = done;
    } else {
      prepare( el, done );
    }
  }
};

});