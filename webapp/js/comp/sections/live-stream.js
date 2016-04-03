define(["jquery"], function( $ ) {

var frame, parent;

return {
  prepare: function( el, done ) {
    // Grab references to important elements
    frame = el.find("iframe#live-stream-frame");
    parent = frame.parent();

    // Detach the frame so it doesn't load when not shown
    frame.detach();

    done();
  },

  onShow: function() {
    // Attach the frame to its parent
    parent.append( frame );
  },

  onHide: function() {
    // Detach the frame
    frame.detach();
  }
}

});