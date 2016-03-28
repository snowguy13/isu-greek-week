define(["jquery"],
function( $ ) {

var URLS = {
  "Dodgeball": "3ab8lozd"
};

var makeChallongeURL = function( url ) {
  return "http://challonge.com/" + url + "/module";
};

var frame;
var selected;
var select = function( button ) {
  // If the requested button is selected, quit
  if( button.is(".selected") ) {
    return;
  }

  // Deselect the current button
  if( selected ) {
    button.removeClass("selected");
  }

  // Update the URL
  frame.attr("src", button.attr("data-url") );

  // And change the selected object
  (selected = button).addClass("selected");
};

var makeBracketButton = function( name, url ) {
  console.log( name, url );
  return $("<button />")
    .text( name )
    .addClass("bracket-button")
    .attr({
      "data-name": name,
      "data-url":  url
    });
};

var prepare = function( el, done ) {
  // Grab references to important elements
  var buttons = el.find("#bracket-button-container");
  frame = el.find("#bracket-view");

  // Add buttons for each tournament
  for( var tourney in URLS ) {
    buttons.append( makeBracketButton( tourney, makeChallongeURL( URLS[ tourney ] ) ) );
  }

  // Attach a listener to the button container
  buttons.click(function( ev ) {
    var target = $( ev.target );

    // Quit if it wasn't a .bracket-button that was clicked
    if( !target.is(".bracket-button") ) return;

    // Otherwise, activate that button's tourney
    select( target );
  });

  done();
};

return {
  prepare: prepare
};

});