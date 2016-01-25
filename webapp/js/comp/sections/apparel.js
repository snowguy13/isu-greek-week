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

      orderInfo = {},

      part = {
        netid: el.find("#apparel-form-netid"),
        code:  el.find("#apparel-form-code"),
        info:  el.find("#apparel-form-info"),
        order: el.find("#apparel-form-order")
      },

      input = {
        netid: el.find("input[name=netid]"),
        code:  el.find("input[name=code]"),
        name:  el.find("input[name=name]"),
        chapter: el.find("select[name=chapter]")
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
        orderInfo.new = !res.exists;
        orderInfo.id  = val;

        // Hide the appropriate label
        var newLabel = part.code.find("#apparel-form-code-new"),
            extLabel = part.code.find("#apparel-form-code-existing");
        
        newLabel[ orderInfo.new ? "show" : "hide" ]();
        extLabel[ orderInfo.new ? "hide" : "show" ]();

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
  var checkCode = function( code ) {
    var code = input.code.val();

    // Disable controls, hide error
    errorP.hide();
    input.code.attr("disabled", true );
    button.checkCode.attr("disabled", true );
    button.switchNetid.attr("disable", true );

    // Check the code
    OrderManager.checkOrderCode( orderInfo.id, code, function( res ) {
      // If there was a match...
      if( res.match ) {
        // Hide the current section
        part.code.hide();

        // If the order is new...
        if( orderInfo.new ) {
          // Show the info section
          part.info.show();

          // Reset inputs, focus the first one
          input.name.val("")
            .focus();
          input.chapter.val("none");
        } else {
          // Otherwise, just show the order section
          part.order.show();

          // prepareOrder();
        }
      } else {
        // Otherwise, show an error
        errorP.text("The code you provided doesn't match our records.")
              .show();
      }
    });
  };

  input.code.on("input", function() {
    var text = input.netid.val();
    
    // Enable the button if there's text
    button.checkCode.attr("disabled", !text );
  }).keydown(function( ev ) {
    // Ignore everything but [Enter]
    if( (ev.keyCode || ev.which) !== 13 ) return;

    // Do nothing if empty
    if( !input.code.val() ) return;

    // Check the code
    checkCode();
  });

  button.checkCode.click( checkCode );

  button.switchNetid.click(function() {
    // Reset order info
    orderInfo = {};

    // Switch back to netid part
    part.code.hide();
    part.netid.show();

    input.netid.val("")
      .focus();
  });

  //
  // Info form part
  //
  
  

  // Show the first form part
  part.netid.show();

  // Notify the SectionManager the section is ready
  done();
};

return {
  prepare: prepare
};

});