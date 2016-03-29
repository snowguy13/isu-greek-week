define(["jquery", "util/mobile"],
function( $, Mobile ) {

var current = "Volleyball";
var URLS = {
  "Dodgeball": "3ab8lozd",
  "Volleyball": "dez7oldl"
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

  // If we're on a mobile device, redirect instead of loading in the iframe
  if( Mobile.mobile() ) {
    window.location.href = button.attr("data-ext-url");
    return;
  }

  // Deselect the current button
  if( selected ) {
    selected.removeClass("selected");
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
      "data-url":  makeChallongeURL( url ),
      "data-ext-url": "http://challonge.com/" + url
    });
};

var prepare = function( el, done ) {
  // Grab references to important elements
  var buttons = el.find("#bracket-button-container");
  frame = el.find("#bracket-view");

  // Add buttons for each tournament
  for( var tourney in URLS ) {
    buttons.append( makeBracketButton( tourney, URLS[ tourney ] ) );
  }

  // Grab a reference to the current tournament's button
  if( current ) {
    current = el.find("button[data-name='" + current + "']");
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
  prepare: prepare,
  onShow: function() {
    // Select the current if nothing is selected (and we're not mobile)
    if( !selected && current ) select( current );
  }
};

});