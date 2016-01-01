define(function() {

var Color;

/**
 * Creates a new Color with the given red, green, blue, and alpha values. If not given, an alpha value of
 * 1 is used instead.
 * 
 * @param {Number|Color} r  The red component, between 0 and 255 (if a Color, a copy is made)
 * @param {Number} g        The blue component, between 0 and 255
 * @param {Number} b        The green component, between 0 and 255
 * @param {Number} [a=1]    The alpha component, between 0 and 1
 * 
 * @constructor
 */
Color = function Color( r, g, b, a ) {
  if( r instanceof Color ) {
    g = r.green;
    b = r.blue;
    a = r.alpha;
    r = r.red;
  }
  
  this.red = +r;
  this.green = +g;
  this.blue = +b;
  this.alpha = arguments.length > 3 ? +a : 1;
};

Color.prototype = {
  /**
   * Creates a new Color based on this Color and the given one. Fraction indicates how close the new Color
   * should be to the given one (1 indicates the given Color, 0 indicates this Color). If not given, fraction
   * defaults to 0.5 (essentially an average of the two Colors).
   * 
   * @param {Color}  color           The Color to blend with
   * @param {Number} [fraction=0.5]  A fraction from 0 to 1 indicating how much of the given Color should be blended
   * @param {Boolean|Number} [alpha=false]
   *   If a Boolean: false indicates this Color's alpha value should be used, while true indicates the alpha
   *   values should be blended like the rgb values.
   *   If a Number: indicates the alpha value of the newly created Color.
   * 
   * @returns {Color}  A new Color blended from this Color and the given one
   */
  blend: function Color_blend( color, fraction, alpha ) {
    var r, g, b, a;
    
    // if not given, fraction = 0.5
    if( arguments.length < 2 ) {
      fraction = 0.5;
    }
    
    // compute rgb
    r = this.red + (color.red - this.red) * fraction;
    g = this.green + (color.green - this.green) * fraction;
    b = this.blue + (color.blue - this.blue) * fraction;
    
    // computer alpha
    if( typeof alpha === "number" ) {
      a = alpha;
    } else if( alpha === true ) {
      a = this.a + (color.a - this.a) * fraction;
    } else {
      a = this.alpha;
    }
    
    // create new color
    return new Color(r, g, b, a);
  },
  
  /**
   * Equivalent to calling &lt;Color&gt;.blend( Color.BLACK, [fraction], false ).
   * 
   * @param {Number} [fraction=0.1]  The fraction of black to blend in
   * 
   * @returns {Color}  This Color, blended with black
   */
  shade: function Color_shade( fraction ) {
    arguments.length > 0 || (fraction = 0.1);
    return this.blend( Color.BLACK, fraction, false );
  },
  
  /**
   * Equivalent to calling &lt;Color&gt;.blend( Color.WHITE, [fraction], false ).
   * 
   * @param {Number} [fraction=0.1]  The fraction of white to blend in
   * 
   * @returns {Color}  This Color, blended with white
   */
  tint: function Color_tint( fraction ) {
    arguments.length > 0 || (fraction = 0.1);
    return this.blend( Color.WHITE, fraction, false );
  },
  
  /**
   * @returns {String}  A string of the form "rgb([red], [green], [blue])"
   */
  toRGBString: function Color_toRGBString() {
    return "rgb("
      + Math.round(this.red) + ", "
      + Math.round(this.green) + ", "
      + Math.round(this.blue)
    + ")";
  },
  
  /**
   * @returns {String}  A string of the form "rgba([red], [green], [blue], [alpha])"
   */
  toRGBAString: function Color_toRGBAString() {
    return "rgba("
      + Math.round(this.red) + ", "
      + Math.round(this.green) + ", "
      + Math.round(this.blue) + ", "
      + this.alpha
    + ")";
  }
};

/**
 * Derives a red-green-blue-alpha style color from a given CSS color string. In order to resolve the
 * color, this function creates a new element via document.createElement, sets the element's color
 * to the given string, and appends the element to the DOM. The, the resulting color is retrieved using
 * window.getComputedStyle and parsed for the relevant values.
 * 
 * @param {String} str  The string to convert to an rgba color
 * 
 * @returns {Color}     The computed color of an element whose color was assigned the given string
 */
Color.fromCSSString = function Color_fromCSSString( str ) {
  var RGB_STRING = /rgb\((\d{1,3}),\s*(\d{1,3}),\s*(\d{1,3})\)/,
      RGBA_STRING = /rgba\((\d{1,3}),\s*(\d{1,3}),\s*(\d{1,3}),\s*(\d?\.?\d*)\)/,
      el = document.createElement("div"),
      style = el.style,
      computed;
  
  // style the element
  style.visibility = "hidden";
  style.position = "absolute";
  style.color = str;
  
  // append to DOM, get the computed color, remove from DOM
  document.body.appendChild( el );
  computed = window.getComputedStyle( el ).color;
  el.remove();
  
  // parse the computed string
  if( RGB_STRING.test(computed) ) {
    computed = RGB_STRING.exec(computed);
    computed[4] = 1; // assumed alpha
  } else if( RGBA_STRING.test(computed) ) {
    computed = RGBA_STRING.exec(computed);
  } else {
    computed = [0, 0, 0, 0, 1];
  }
  
  // return the color!
  return new Color(
    computed[1],
    computed[2],
    computed[3],
    computed[4]
  );
};

// on load, retrieve common colors as constants
window.addEventListener("load", function _Color_getNamedColors() {
  "White Silver Gray Black Red Maroon Yellow Olive Lime Green Aqua Teal Blue Navy Fuchsia Purple Transparent".split(" ").forEach(function( colorName ) {
    Color[ colorName.toUpperCase() ] = Color.fromCSSString( colorName );
  });
});

return Color;

});