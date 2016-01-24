define(["jquery", "data/chapters", "json!/api/apparel", "util/OrderManager"], function( $, chapters, apparel, OrderManager ) {

// Parse the apparel
apparel = JSON.parse( apparel );
console.log( apparel );

var prepare = function( el, done ) {
  // Grab references to important elements
  var grid = el.find("#apparel-grid .grid"),
      form = el.find("#apparel-form"),

      errorP = el.find(".error"),

      newOrder,

      part = {
        netid: el.find("#apparel-form-netid"),
        code:  el.find("#apparel-form-code"),
        info:  el.find("#apparel-form-info"),
        order: el.find("#apparel-form-order")
      },

      input = {
        netid: el.find("input[name=netid]")
      },

      button = {
        netid: el.find("#apparel-form-netid-button")
      };

  // Hide the error paragraph
  errorP.hide();
  
  // Add apparel images to the page
  apparel.forEach(function( type ) {
    var cell = $("<div />")
      .addClass("cell")
      .css("background-image", "url(image/apparel/" + type.images[0] + ")")
      .append("<span class='apparel-title'>" + type.name + "</span>");

    // Append the cell to the grid
    grid.append( cell );
  });

  // Buttons for showing / hiding order form
  el.find("#apparel-grid-order-button").click(function() {
    el.addClass("show-form");
  });

  el.find("#apparel-form-grid-button").click(function() {
    el.removeClass("show-form");
  });

  // Net ID form part
  var checkNetID = function() {
    // Disable input, hide error
    errorP.hide();
    input.netid.attr("disabled", true );
    button.netid.attr("disabled", true );
    
    // Check the net id
    OrderManager.orderExists( input.netid.val(), function( res ) {
      if( res.valid ) {
        // Valid netid was given, so hide current section and show the code section
        part.netid.hide();
        part.code.show();
        
        // Remember whether the order exists or not
        newOrder = !res.exists;

        // Hide the appropriate label
        part.code.find( newOrder ? "#apparel-form-code-existing" : "#apparel-form-code-new" )
          .hide();
      } else {
        // Not valid, show a warning message
        errorP.text("The Net ID you entered is not valid.")
              .show();
      }

      // Re-enable inputs
      input.netid.attr("disabled", false );
      button.netid.attr("disabled", false );
    });
  };

  input.netid.on("input", function() {
    var text = input.netid.val();
    
    // Enable the button if there's text
    button.netid.attr("disabled", !text );
  }).keydown(function( ev ) {
    // Ignore everything but [Enter]
    if( (ev.keyCode || ev.which) !== 13 ) return;

    // Do nothing if empty
    if( !input.netid.val() ) return;

    // Check the code
    checkNetID();
  });

  button.netid.click( checkNetID );

  // Show the first form part
  part.netid.show();

  // Notify the SectionManager the section is ready
  done();
};

return {
  prepare: prepare
};

});