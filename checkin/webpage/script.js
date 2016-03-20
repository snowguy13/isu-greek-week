$(function() {

// Private jQuery reference
var $ = jQuery.noConflict();

// References to important elements
var body = $( document.body );
var elem = {
  login: {
    username: $( document.forms.item("login-form").username ),
    password: $( document.forms.item("login-form").password ),
    submit:   $( document.forms.item("login-form").submit ),
    error:    $("#login-error")
  },
  checkin: {
    container: $("#check-in-container"),
    events:    $("#event"),
    search:    $("#search"),
    result:    $("#result-container")
  }
};

// State stuff
var searching = false;

// Auth stuff
var auth;

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
  elem.checkin.events.append("<option value='" + index + "'>" + result[1] + "</option>");

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
  var u = elem.login.username.val(),
      p = elem.login.password.val()
      t = $(this).attr("disabled", true);

  // Hide the error text
  elem.login.error.removeClass("shown");

  // Empty the password field
  elem.login.password.val("");

  // Attempt to login
  $.ajax({
    method:      "POST",
    url:         "/api/checkin/login",
    contentType: "application/json",
    data: JSON.stringify({
      username: u,
      password: p
    }),

    success: function( res ) {
      if( !res.success ) {
        // Login failed -- shown the given message
        elem.login.error.addClass("shown").text( res.reason );
      } else {
        // Login succeeded -- update the page, and save the auth info!
        body.addClass("logged-in");
        auth = {
          username: u,
          identity: res.identity,
          token: res.token
        };
      }

      // Finally, re-enable the button
      t.attr("disabled", false);
    },

    error: function( xhr, text, error ) {
      // An error occurred, so update the error text and re-enable the button
      elem.login.error.addClass("shown").text( error );
      t.attr("disabled", false);
    }
  });
});

// Add search functionality
elem.checkin.search.keypress(function( ev ) {
  var t = $(this),
      text = t.val();

  // If already searching, the key is not [Enter], or there is no text, quit
  if( searching || (ev.keyCode || ev.which) !== 13 || !text ) return;

  // Otherwise, perform a search request
  searching = true;
  elem.checkin.container.addClass("searching");
  t.blur();
  $.ajax({
    method:      "GET",
    url:         "/api/checkin/search",
    contentType: "application/json",
    data: {
      identity: auth.identity,
      token:    auth.token,
      query:    text
    },

    success: function( data ) {
      // Done searching, note that now
      searching = false;
      elem.checkin.container.removeClass("searching");

      // Log the data
      console.log( data );
    },

    error: function( xhr, text, error ) {
      // Done searching, note that now
      searching = false;
      elem.checkin.container.removeClass("searching");

      // If it was a 'not authorized' issue, handle specially
      if( xhr.status === 401 ) {
        // Must have gotten logged out somehow
        body.removeClass("logged-in");
        auth = undefined;
        elem.login.error.text("Your login is no longer valid. Please log in again.").addClass("shown");
      }
    }
  });
});

});