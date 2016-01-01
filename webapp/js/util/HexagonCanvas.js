/**
 * An aesthetic utility used to draw a grid of regular hexagons on an
 * arbitrarily sized canvas.
 */
define(["util/Color"], function( Color ) {

var HexagonCanvas = function( width, height ) {
  var canvas = document.createElement("canvas");
  
  // Save the width and height as properties
  this._width  = canvas.width  = width;
  this._height = canvas.height = height;

  // Save the canvas as a property
  this._canvas = canvas;
}

HexagonCanvas.prototype = {
  /**
   * The radius of the circle in which a single hexagon will be
   * inscribed. This will be the distance from the center of the
   * hexagon to any of its six vertices. Can be overridden by an
   * instance to change the radius; the default value is 10.
   */
  radius: 10,

  
};

});