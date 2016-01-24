define(["jquery", "data/chapters", "json!/api/apparel", "util/OrderManager"], function( $, chapters, apparel, OrderManager ) {

// Parse the apparel
apparel = JSON.parse( apparel );
console.log( apparel );

var alphaNumeric = /[^0-9a-zA-Z]/;

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
        netid: el.find("input[name=netid]"),
        code:  el.find("input[name=code]")
      },

      button = {
        netid:       el.find("#apparel-form-netid-button"),
        checkCode:   el.find("#apparel-form-code-button"),
        switchNetid: el.find("#apparel-form-code-switch-button")
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
  
  //
  // Net ID form part
  //
  var checkNetID = function() {
    // Disable input, hide error
    errorP.hide();
    input.netid.attr("disabled", true );
    button.netid.attr("disabled", true );

    var val = input.netid.val();

    // If a valid character is found...
    if( alphaNumeric.test( val ) ) {
      // Show error message
      errorP.text("Net IDs can only contain letters and numbers.").show();

      // Re-enable inputs
      input.netid.attr("disabled", false );
      button.netid.attr("disabled", false );

      return;
    }
    
    // Check the net id
    OrderManager.orderExists( val, function( res ) {
      if( res.valid ) {
        // Valid netid was given, so hide current section and show the code section
        part.netid.hide();
        part.code.show();
        
        // Remember whether the order exists or not
        newOrder = !res.exists;

        // Hide the appropriate label
        var newLabel = part.code.find("#apparel-form-code-new"),
            extLabel = part.code.find("#apparel-form-code-existing");
        
        newLabel[ newOrder ? "show" : "hide" ]();
        extLabel[ newOrder ? "hide" : "show" ]();

        input.code.val("")
          .focus();
      } else {
        // Not valid, show a warning message
        errorP.text("The Net ID you entered is not valid.")
              .show();

        input.netid.focus().select();
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

  //
  // Code form part
  //
  button.switchNetid.click(function() {
    // Switch back to netid part
    part.code.hide();
    part.netid.show();

    input.netid.val("")
      .focus();
  });

  // Show the first form part
  part.netid.show();

  // Notify the SectionManager the section is ready
  done();
};

return {
  prepare: prepare
};

});