define(["jquery", "util/HexagonCanvas", "util/Color"], function( $, HexagonCanvas, Color ) {

return function() {
  var hc = new HexagonCanvas( window.innerWidth * 2, window.innerHeight * 2 );
  $( document.body ).append( hc.canvas );
  
  hc.spacing = 0;
  hc.borderWidth = 0;
  hc.fillStyle = Color.randomAlphaFunction( Color.BLACK, 0.05, 0.15 );
  
  hc.draw();

  var imageData = hc.toDataURL();
  document.body.style.backgroundImage = "url(" + imageData + ")";

  console.log( imageData );

  $( hc.canvas ).detach();
};

});