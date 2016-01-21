define(["jquery"], function( $ ) {

// Default show function
var SHOW = function( el, done ) {
  el.css("display", "block");
  done();
};

// Default hide function
var HIDE = function( el, done ) {
  el.css("display", "none");
  done();
}

/**
 * Parameters:
 *
 * sections  Array<Object>
 *   A list of the sections this manager should oversee. Each object
 *   should have the following properties:
 *   
 *   element  jQuery
 *     A reference to the root element of this section
 *   prepare  function( done )
 *     A function that performs necessary set-up work for this
 *     section and calls done() when it is ready
 * 
 * show  function( el, done )
 *   A function that shows the section whose root element is "el"
 *   and calls done() once the section has been shown.
 * 
 * hide  function( el, done )
 *   A function that hides the section whose root element is "el"
 *   and calls done() once the section has been hidden.
 */
var SectionManager = function( opts ) {
  // Save the properties on the object
  this._sections = opts.sections;
  this._show     = opts.show || SHOW;
  this._hide     = opts.hide || HIDE;
};

SectionManager.prototype = {
  
};

return SectionManager;

});