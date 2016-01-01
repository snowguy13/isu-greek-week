requirejs(["jquery", "comp/countdown"], function( $, countdown ) {

// Remove jQuery from the global namespace
$.noConflict();

// Activate components on the page
$(function() {
  countdown();
});

});