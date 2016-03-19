$(function() {

// Private jQuery reference
var $ = jQuery.noConflict();

// References to important elements
var elem = {
  login: {
    username: $( document.forms.item("login-form").username ),
    password: $( document.forms.item("login-form").password ),
    submit:   $( document.forms.item("login-form").submit )
  },
  eventDropdown: $("#event")
};

// Constants

/* Event options: array of string with special format
 *   "<EventName>:[g|l|n][c][t]"
 *     g|l|n -- indicates waiver requirement
 *       g -- general waiver (default if omitted)
 *       l -- lipsync waiver
 *       n -- no waiver
 *     c -- indicates a check-in tally should be kept
 *     t -- indicates the event is a tournament event
 */
var eventOptions = [
  "Dodgeball:ct",
  "Volleyball:ct",
  "Show Me The Greeks:c",
  "Karaoke 1st Cuts:c",
  "Lip Sync:l",
  "Educational Speaker:nc",
  "Polar Bear Plunge:c",
  "Treds:ct",
  "Karaoke 2nd Cuts:c",
  "Trivia Blast:ct",
  "Basketball:ct",
  "Broomball:ct"
];

// Convert eventOptions into JSON
eventOptions = eventOptions.map(function( event, index ) {
  var result = /([A-Za-z0-9 ]+):(g|l|n)?(c?)(t?)/.exec( event ),
      w = result[2];
  var waivers = {
    "g": "general",
    "l": "lipsync",
    "n": false
  };

  // Add the event to the events dropdown
  elem.eventDropdown.append("<option value='" + index + "'>" + result[1] + "</option>");

  return {
    name:       result[1],
    waiver:     ( w ? waivers[w] : "general" ),
    tally:      !!result[3],
    tournament: !!result[4]
  };
});

// Add interactivity to log in form
elem.login.username.add( elem.login.password )
  .on("input", function() {
    var u = elem.login.username.val(),
        p = elem.login.password.val();

    elem.login.submit.attr("disabled", !(u && p) );
  })
  .on("keypress", function( ev ) {
    if( (ev.keyCode || ev.which) === 13 && !elem.login.submit.attr("disabled") ) {
      elem.login.submit.click();
    }
  });

elem.login.submit.click(function() {
  
});

console.log( eventOptions );

});