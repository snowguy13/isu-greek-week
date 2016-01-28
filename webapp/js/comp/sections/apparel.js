define(["jquery", "data/chapters", "json!/api/apparel", "util/OrderManager", "./apparel/OrderTable"], 
function( $,       chapters,        apparel,             OrderManager,        OrderTable ) {

// Parse the apparel
apparel = JSON.parse( apparel );

var alphaNumeric = /[^0-9a-zA-Z]/;

var prepareOrderPart = function( part, isNew ) {
  var table;

  if( isNew ) {
    // Create the table with no items
    table = new OrderTable( part.find("#order-table"), [] );

    // Then show the part
    part.show();
  } else {
    // Otherwise, retrieve the items
    OrderManager.retrieveOrder(function( items ) {
      // Then create the table
      table = new OrderTable( part.find("#order-table"), [] );

      // And show the part
      part.show();
    });
  }
};

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
        switchNetid: el.find("#apparel-form-code-switch-button"),
        info:        el.find("#apparel-form-info-button")
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
    OrderManager.createOrder({
      netid: val
    }, function( res ) {
      if( res.valid ) {
        // Remember whether the order exists or not
        orderInfo.new = res.newOrderCreated;
        orderInfo.hasInfo = res.orderHasInfo;
        orderInfo.id  = val;

        // Hide the appropriate label
        var newLabel = part.code.find("#apparel-form-code-new"),
            extLabel = part.code.find("#apparel-form-code-existing");
        
        newLabel[ orderInfo.new ? "show" : "hide" ]();
        extLabel[ orderInfo.new ? "hide" : "show" ]();

        // Fill in the given netid in the netid span
        part.code.find(".netid").text( orderInfo.id );

        // Valid netid was given, so hide current section and show the code section
        button.checkCode.attr("disabled", true );
        part.netid.hide();
        part.code.show();

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
    button.switchNetid.attr("disabled", true );

    // Check the code
    OrderManager.checkOrderCode({
      netid: orderInfo.id,
      code:  code
    }, function( res ) {
      // If there was a match...
      if( res.valid ) {
        // Hide the current section
        part.code.hide();

        // Save the token
        orderInfo.token = res.token;

        // Re-enable controls
        input.code.attr("disabled", false );
        button.checkCode.attr("disabled", false );
        button.switchNetid.attr("disabled", false );

        // If the order is lacking info...
        if( !orderInfo.hasInfo ) {
          // Show the info section
          part.info.show();

          // Reset inputs, focus the first one
          input.name.val("")
            .focus();
          input.chapter.val("none");
        } else {
          // Otherwise, order has info, so prepare the order part
          prepareOrderPart( part.order, false ); // false indicates existing order
        }
      } else {
        // Otherwise, show an error
        errorP.text("The code you provided doesn't match our records.")
              .show();

        // Re-enable controls
        input.code.attr("disabled", false );
        button.checkCode.attr("disabled", false );
        button.switchNetid.attr("disabled", false );
      }
    });
  };

  input.code.on("input", function() {
    var text = input.code.val();
    
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
    
    // Disable the button
    button.netid.attr("disabled", true );

    // Switch back to netid part
    part.code.hide();
    part.netid.show();

    input.netid.val("")
      .focus();
  });

  //
  // Info form part
  //

  var validateForm = function() {
    var name    = input.name.val(),
        chapter = input.chapter.val(),

        valid = name !== "" && chapter !== "none";
    
    // Disable the button if not valid, otherwise enable it
    button.info.attr("disabled", !valid );
  };

  var postInfo = function() {
    // Hide error paragraph, disable form controls
    errorP.hide();
    input.name.attr("disabled", true );
    input.chapter.attr("disabled", true );
    button.info.attr("disabled", true );

    // Post the information
    OrderManager.updateOrderInfo({
      netid:   orderInfo.id,
      token:   orderInfo.token,
      name:    input.name.val(),
      chapter: input.chapter.val()
    }, function( res ) {
      if( res.success ) {
        // Post was successful, so show the order screen
        part.info.hide();

        // Prepare the order part
        prepareOrderPart( part.order, true ); // true indicates new order
      } else {
        // Something went wrong, show error message
        errorP.text("Whoops, something went wrong, and your info wasn't updated. Please try again.")
          .show();
      }

      // Re-enable controls
      input.name.attr("disabled", false );
      input.chapter.attr("disabled", false );
      button.info.attr("disabled", false );
    });
  };

  // Listen to updates on the input
  input.name
    .on("input", validateForm )
    .keydown(function( ev ) {
      // Ignore everything but [Enter]
      if( (ev.keyCode || ev.which) !== 13 ) return;
  
      // Do nothing if form not valid
      if( button.info.attr("disabled") ) return;
  
      // If everything is valid, post the info
      postInfo();
    });
  
  // Populate the chapter select with the list of chapters
  chapters.forEach(function( chapter ) {
    input.chapter.append( $("<option />")
      .attr("val", chapter )
      .text( chapter )
    );
  })
  
  // When chapter is changed, validate the form
  input.chapter.on("change", validateForm );

  // If the button is clicked, post the info
  button.info.click( postInfo );

  // Show the first form part
  part.netid.show();

  // Notify the SectionManager the section is ready
  done();
};

return {
  prepare: prepare
};

});