define(["jquery"], function( $ ) {

var tweetWrapper = $("#tweet-wrapper");

var prepare = function( el, done ) {
  done();
};

var onShow = function() {
  tweetWrapper.addClass("dark");
};

var onHide = function() {
  tweetWrapper.removeClass("dark");
};

return {
  prepare: prepare,
  onShow: onShow,
  onHide: onHide
};

});