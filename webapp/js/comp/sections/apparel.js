define(["jquery", "data/chapters", "json!/api/apparel", "util/OrderManager"], function( $, chapters, apparel, OrderManager ) {

// Parse the apparel
apparel = JSON.parse( apparel );
console.log( apparel );

var prepare = function( el, done ) {
  // Grab references to important elements
  var grid = el.find("#apparel-grid .grid"),
      form = el.find("#apparel-form"),
      input = {
        netid: el.find("input[name=netid]")
      },

      button = {
        netid: el.find("#apparel-form-netid-button")
      };
  console.log( input, button );
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
    alert("Clicked!");
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

  // Notify the SectionManager the section is ready
  done();
};

return {
  prepare: prepare
};

});