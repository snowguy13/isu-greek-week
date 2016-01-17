requirejs(["jquery", "comp/countdown", "comp/coolBackground", "comp/tweetBar"], 
  function( $,        countdown,        background,            tweetBar ) {

// Remove jQuery from the global namespace
$.noConflict();

$(function() {
  // Activate components on the page
  countdown();
  tweetBar();

  // Draw the background
  background();
});

});