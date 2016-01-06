requirejs(["jquery", "comp/countdown", "comp/coolBackground"], function( $, countdown, background ) {

// Remove jQuery from the global namespace
$.noConflict();

$(function() {
  // Activate components on the page
  countdown();

  // Draw the background
  background();
});

});