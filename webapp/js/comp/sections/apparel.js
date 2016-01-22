define(["jquery", "data/chapters", "json!/api/apparel"], function( $, chapters, apparel ) {

// Parse the apparel
apparel = JSON.parse( apparel );
console.log( apparel );

var prepare = function( el, done ) {
  // Grab references to important elements
  var grid  = el.find("#apparel-grid"),
      formA = el.find("#apparel-form-part-a"),
      formB = el.find("#apparel-form-part-b");

  // Add apparel images to the page
  apparel.forEach(function( type ) {
    var cell = $("<div />")
      .addClass("cell")
      .css("background-image", "url(image/apparel/" + type.images[0] + ")")
      .append("<span class='apparel-title'>" + type.name + "</span>");

    // Append images
    /*type.images.slice(0,1).forEach(function( src ) {
      var img = $("<img />")
        .attr("src", "/image/apparel/" + src );

      cell.append( img );
    });*/

    // Append the cell to the grid
    grid.append( cell );
  });

  // Notify the SectionManager the section is ready
  done();
};

return {
  prepare: prepare
};

});