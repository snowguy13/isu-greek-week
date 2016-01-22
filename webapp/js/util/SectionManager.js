define(["jquery"], function( $ ) {

// No-op used for simplifying conditional calls
var NOOP = function() {};

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
 * Initially, no section is active unless "showFirst" is given. 
 *
 * Parameters:
 *
 * sections  Object<Object>
 *   A map of the sections this manager should oversee. The name of the
 *   section is mapped to an object describing that section. Each object
 *   should have the following properties:
 *   
 *   element  jQuery
 *     A reference to the root element of this section
 *
 *   prepare  function( done )  (optional)
 *     A function that performs necessary set-up work for this
 *     section and calls done() when it is ready. If omitted,
 *     the section is assumed to be prepared immediately.
 *     
 *     This function is only ever called once. Once a section is
 *     prepared, it is assumed to remain so until the webpage is left.
 *
 *   onShow   function()  (optional)
 *     An action to perform when this section is shown.
 *
 *   onHide   function()  (optional)
 *     An action to perform when this section is hidden
 * 
 * show  function( el, done )  (optional)
 *   A function that shows the section whose root element is "el"
 *   and calls done() once the section has been shown.
 *
 * onShow  function( name, el )  (optional)
 *   A function that is called whenever any section is shown
 * 
 * showFirst  string  (optional)
 *   The name of the section to show first. If omitted, no section
 *   is shown first.
 * 
 * hide  function( el, done )  (optional)
 *   A function that hides the section whose root element is "el"
 *   and calls done() once the section has been hidden.
 *
 * onHide  function( name, el )  (optional)
 *   A function that is called whenever any section is hidden
 */
var SectionManager = function( opts ) {
  // Save the properties on the object
  this._sections = opts.sections;
  this._show     = opts.show   || SHOW;
  this._onShow   = opts.onShow || NOOP;
  this._hide     = opts.hide   || HIDE;
  this._onHide   = opts.onHide || NOOP

  // The currently active section
  this._current   = undefined;

  // Maps section names to booleans -- true if the section is prepared
  this._prepared  = {};

  // If there is a showFirst option, do that now
  if( "showFirst" in opts ) {
    this.show( opts.showFirst );
  }
};

SectionManager.prototype = {
  // Returns true if there is an active section, false if not
  hasActiveSection: function() {
    return !!this._current;
  },

  // Returns the root element of the currently shown section,
  // or null if there is no section shown at the moment
  getCurrentSectionElement: function() {
    return this._sections[ this._current ].element || null;
  },

  // Shows the indicated section, hiding the currently shown 
  // section if there is one
  show: function( which, done ) {
    var self = this,
        sections = this._sections,
        prepared = this._prepared,
        show = this._show,

        curr = this._current, 
        next,
        showNext;
    
    // If no such section exists, return
    if( !( which in sections ) ) {
      return;
    }
    
    // Otherwise, grab a reference to the section
    next = sections[ which ];

    // Function to show the next section
    showNext = function() {
      if( !prepared[ which ] ) {
        // Section needs to be prepared
        next.onShow = next.onShow || NOOP;
        next.onHide = next.onHide || NOOP;

        // Call the preparation function if it is given
        if( next.prepare ) {
          // Invoke the preparation function, then show the section
          next.prepare(function() {
            prepared[ which ] = true;
            showNext();
          });
        } else {
          // No preparation necessary, show the section
          prepared[ which ] = true;
          showNext();
        }
      } else {
        // Section is already prepared, mark it as the current section
        self._current = which;

        // Then show the section
        show( next.element, function() {
          // Call the given callback
          ( done || NOOP )();

          // Call this section's onHide callback
          currObj.onShow();

          // Call the global onHide
          self.onShow( which, next.element );
        });
      }
    };

    // If there is a current section, hide it
    curr ? this.hide( showNext ) : showNext();
  },
  
  // Hides the currently shown section (if there is one)
  hide: function( done ) {
    var self     = this,
        sections = this._sections,
        curr     = this._current
        currObj;
    
    // If nothing is currently shown, quit
    if( !curr ) {
      return;
    }

    // Get a reference to the current section
    currObj = sections[ curr ];

    // Otherwise, hide that section
    this._hide( currObj.element, function() {
      // Remove the current element marker
      self._current = undefined;

      // Call the given callback
      ( done || NOOP )();

      // Call this section's onHide callback
      currObj.onHide();

      // Call the global onHide
      self.onHide( curr, currObj.element );
    });
  }
};

return SectionManager;

});