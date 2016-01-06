/**
 * An aesthetic utility used to draw a grid of regular hexagons on an
 * arbitrarily sized canvas.
 */
define(["util/Color"], function( Color ) {

var SQRT3   = Math.sqrt( 3 ),
    SQRT3_2 = SQRT3 / 2,
    HALF    = 0.5,
    ceil    = Math.ceil,
    floor   = Math.floor;

var wrapSimple = function( thing ) {
  return typeof thing === "function" ?
    thing : function() { return thing; };
}

var makeHexagonPath = function( ctx, center, radius ) {
  var rad_2      = radius / 2,
      sqrt3rad_2 = SQRT3_2 * radius,
      lineToRelative = function( dx, dy, move ) {
        ctx[ move ? "moveTo" : "lineTo" ]( center.x + dx, center.y + dy );
      };

  // Begin the canvas path
  ctx.beginPath();

  // Include the six points in order
  lineToRelative(  radius,  0, true );
  lineToRelative(  rad_2,   sqrt3rad_2 );
  lineToRelative( -rad_2,   sqrt3rad_2 );
  lineToRelative( -radius,  0 );
  lineToRelative( -rad_2,  -sqrt3rad_2 );
  lineToRelative(  rad_2,   sqrt3rad_2 );

  // Close the path
  ctx.closePath();
};

var HexagonCanvas = function( width, height ) {
  // Save the canvas as a property
  this.canvas = document.createElement("canvas");

  // Save the width and height as properties
  this.setSize( width, height );
}

/**
 * The prototype below offers default values for the control properties of a
 * HexagonCanvas: radius, spacing, borderWidth, borderStyle, and fillStyle.
 *
 * Note for borderWidth, borderStyle, and fillStyle
 * ------------------------------------------------
 * Below, these properties are specified as certain types (ie, borderWidth
 * is specified as being a nonnegative Number); however, each of these
 * properties has an alternate possible value. Instead of being a literal
 * value of the indicated type, these properties also accept functions
 * that return values of the indicated type (borderWidth could be a function
 * returning a nonnegative Number). This function will be called exactly once
 * before drawing each hexagon; this allows the user to specify programmatically
 * different colors, shading, and borders for each hexagon.
 *
 * Any such function will be passed a single argument containing information
 * about the current hexagon being drawn. This arugment has the following
 * properties:
 *   
 *   row  {Number}  The integer index of the current hexagon's row
 *   col  {Number}  The integer index of the current hexagon's column
 *   x    {Number}  The x-coordinate of the current hexagon's center
 *   y    {Number}  The y-coordinate of the current hexagon's center
 */
HexagonCanvas.prototype = {
  /**
   * A positive Number.
   *
   * The radius of the circle in which a single hexagon will be
   * inscribed. This will be the distance from the center of the
   * hexagon to any of its six vertices.
   */
  radius: 10,

  /**
   * A nonnegative Number.
   * 
   * The amount of empty space between drawn hexagons. Specifically,
   * this value controls the distance between adjacent sides of 
   * neighboring hexagons in a grid.
   */
  spacing: 0,

  /**
   * A nonnegative Number.
   *
   * The width of the border drawn around each hexagon.
   * <CanvasRenderingContext2D>.strokeWidth is set directly to this
   * value before invoking .stroke()
   */
  borderWidth: 1,


  /**
   * A value settable to <CanvasRenderingContext2D>.strokeStyle.
   *
   * <CanvasRenderingContext2D>.strokeStyle is set directly to this
   * value before invoking .stroke()
   */
  borderStyle: "black",

  /**
   * A value settable to <CanvasRenderingContext2D>.fillStyle.
   *
   * <CanvasRenderingContext2D>.fillStyle is set directly to this
   * value before invoking .fill()
   */
  fillStyle: "white",
  
  /**
   * Updates the dimensions of the underlying canvas.
   * 
   * Parameters:
   *   width   {Number}  The canvas's new width
   *   height  {Number}  The canvas's new height
   * 
   * Returns:
   *   {HexagonCanvas}  This HexagonCanvas
   */
  setSize: function( width, height ) {
    var canvas = this.canvas;

    // Save the width and height as properties, and update the canvas
    this._width  = canvas.width  = width;
    this._height = canvas.height = height;

    return this;
  },

  draw: function() {
    var // Get a rendering context
        ctx = this.canvas.getContext("2d"),

        // Save the dimensions
        width  = this.width,
        height = this.height,

        // Save control properties
        radius = wrapSimple( this.radius ),
        space  = wrapSimple( this.spacing ),
        bWidth = wrapSimple( this.borderWidth ),
        bStyle = wrapSimple( this.borderStyle ),
        fStyle = wrapSimple( this.fillStyle ),

        // Used to track the center of a hexagon and the v-unit offset
        pos, vOff,

        // Calculate the "unit" vectors for hexagon centers
        U = {
          x: 3 * radius / 2 + SQRT3 * space,
          y: SQRT3_2 * radius + space / 2
        },

        V = {
          x: 0,
          y: SQRT3 * radius + space
        },

        // Calculate the index bounds for hexagons to be drawn
        uMax = ceil( width / U.x ) + 1,
        vMax = ceil( height / V.y ) + 1;

    // First, clear the canvas
    ctx.fillStyle = "transparent";
    ctx.fillRect( 0, 0, width, height );

    // Then, iterate over the necessary hexagons
    for( int u = 0; u < uMax; u++ ) {
      // Determine the v-offset and the position
      vOff = -floor( u / 2 );
      pos  = {
        x: u * U.x + vOff * V.x,
        y: u * U.y + vOff * V.y
      };
      
      // Draw hexagons down the column
      for( int v = 0; v < vMax; v++, pos.x += V.x, pos.y += V.y ) {
        data = {
          row: u,
          col: v,
          x: pos.x,
          y: pos.y
        };
      }
    }
  }
};

});