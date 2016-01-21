define(["jquery", "util/HexagonCanvas", "util/Color"], function( $, HexagonCanvas, Color ) {

var HEX_SPACING      = 0,
    HEX_BORDER_WIDTH = 0,
    HEX_FILL_STYLE   = Color.randomAlphaFunction( Color.BLACK, 0.05, 0.15 ),
    FADE_DURATION    = 3000,
    FADE_GAP         = 3000;

var swapBGs = function( current, hexCanvas ) {
  var next = current.data("next"),
      imageData,
       
      ready = false,
      swapAgain;

  // A function to initiate the next swap
  swapAgain = function() {
    if( ready ) {
      setTimeout(function() {
        swapBGs( next, hexCanvas );
      }, FADE_GAP );
    } else {
      ready = true;
    }
  };

  // Redraw the canvas
  hexCanvas.draw();
  imageData = hexCanvas.toDataURL();

  // Place the new image on the next bg element
  next.css("background-image", "url(" + imageData + ")");

  // Fade from one bg to the other
  current.animate({
    "opacity": 0
  }, FADE_DURATION, swapAgain );

  next.animate({
    "opacity": 1
  }, FADE_DURATION, swapAgain );
};

return function() {
  var w = window.innerWidth * 2,
      h = window.innerHeight * 2,
      hc = new HexagonCanvas( w, h ),
      bg1 = $("<div />").addClass("bg"),
      bg2 = $("<div />").addClass("bg"),
      imageData;
  
  // Make the canvas invisible to the user
  $( hc.canvas )
    .css("opacity", 0 )
    .addClass("canvas");

  // Append the canvas to the document
  $( document.body ).append( hc.canvas );

  // Have bg divs refer to one another
  bg1.data("next", bg2 );
  bg2.data("next", bg1 );
  
  // Set the drawing properties
  hc.spacing     = HEX_SPACING;
  hc.borderWidth = HEX_BORDER_WIDTH;
  hc.fillStyle   = HEX_FILL_STYLE;
  
  // Draw the canvas once, and set that as the background of the first bg div
  hc.draw();
  imageData = hc.toDataURL();
  bg1.css("background-image", "url(" + imageData + ")");

  // Make the second background div transparent
  bg2.css("opacity", 0 );

  // Append the two background divs
  $( document.body ).append([ bg1, bg2 ]);

  // Begin swapping backgrounds
  setTimeout(function() {
    swapBGs( bg1, hc );
  }, 1 );
};

});