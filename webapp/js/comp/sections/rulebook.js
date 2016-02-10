define(["jquery"], function( $ ) {

var sectionElement;

var tweetWrapper = $("#tweet-wrapper");

var iframe = $("<iframe />")
  .addClass("full")
  .attr("src", "/doc/rulebook.pdf")
  .html("Whoops, looks like your browser doesn't support iframes. You can <a href='/doc/rulebook.pdf'>view the rulebook here</a>.");

var prepare = function( el, done ) {
  sectionElement = el;
  done();
};

var onShow = function() {
  sectionElement.append( iframe );
  tweetWrapper.addClass("dark");
};

var onHide = function() {
  iframe.detach();
  tweetWrapper.removeClass("dark");
};

return {
  prepare: prepare,
  onShow: onShow,
  onHide: onHide
};

});