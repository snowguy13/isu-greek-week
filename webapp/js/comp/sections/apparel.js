define(["jquery", "data/chapters", "json!/api/apparel"], function( $, chapters, apparel ) {

// Parse the apparel
apparel = JSON.parse( apparel );
console.log( apparel );

var prepare = function( el, done ) {
  // Grab references to important elements
  var grid = el.find("#apparel-grid .grid"),
      form = el.find("#apparel-form");

  // Add apparel images to the page
  apparel.forEach(function( type ) {
    var cell = $("<div />")
      .addClass("cell")
      .css("background-image", "url(image/apparel/" + type.images[0] + ")")
      .append("<span class='apparel-title'>" + type.name + "</span>");

    // Append the cell to the grid
    grid.append( cell );
  });

  // Prepare buttons
  el.find("#apparel-grid-order-button").click(function() {
    el.addClass("show-form");
  });

  el.find("#apparel-form-grid-button").click(function() {
    el.removeClass("show-form");
  });

  // Notify the SectionManager the section is ready
  done();
};

return {
  prepare: prepare
};

});