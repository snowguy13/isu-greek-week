requirejs(["jquery", "comp/countdown", "comp/coolBackground", "comp/tweetBar", "comp/prepareSections"], 
  function( $,        countdown,        background,            tweetBar,        prepareSections ) {

// Remove jQuery from the global namespace
$.noConflict();

$(function() {
  // Activate components on the page
  countdown();
  tweetBar();

  // Ready sections
  

  // Draw the background
  background();
});

});