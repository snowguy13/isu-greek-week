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
    result:    $("#result")
  }
};

// Auth stuff
var auth;

// State stuff
var searching = false;
var results;
var selected;
var event;

var select = function( index ) {
  // Update the index, and focus that element
  selected = index;
  setTimeout(function() {
    results[ index ].element.focus();
  }, 0);

  // Add a class to the body to change the background
  body
    .removeClass("valid invalid")
    .addClass( results[ index ].valid ? "valid" : "invalid" );
};

var personElement = function( person ) {
  var el = $("<div tabindex='-1' />").addClass("person");

  el.append($("<div />").addClass("message"));
  el.append($("<span />").addClass("name").text( person.first + " " + person.last ));
  el.append($("<span />").addClass("netid").text( person.net_id ));
  el.append($("<span />").addClass("icon general").attr("data-checked", person.w_general ));
  el.append($("<span />").addClass("icon lipsync").attr("data-checked", person.w_lipsync ));
  el.append($("<span />").addClass("icon technical").attr("data-checked", !person.technical ));

  return el;
};

var updateResultActions = function() {
  results.forEach(function( person ) {
    var message = person.element.find(".message");

    // If there is no event selected, message should be to select an event
    if( !event ) {
      message.html("You have to select an event before checking " + person.first + " in.");
      person.valid = false;
      person.canForce = false;
    } else if( event.waiver && !person["w_" + event.waiver] ) {
      // Otherwise, if there is an event and the member doesn't have the required waiver, note that
      message.html("In order to check in, " + person.first + " must fill out a <strong>" + event.waiver + "</strong> waiver.<br />Press [Control] + [Enter] to force a check-in (this will also mark " + person.first + " as having filled out a waiver).");
      person.valid = false;
      person.canForce = true;
    } else if( event.tournament && person.technical ) {
      // Otherwise, if the event is a tournament and the member has a technical, it's a no-go
      message.html("<strong>Hold up!</strong> " + person.first + " received a technical in a previous tournament, and thus cannot compete in any more tournaments.");
      person.valid = false;
      person.canForce = false;
    } else {
      // Otherwise, either there's no waiver requirement or the requirement is met
      message.html("Hit [Enter] to check " + person.first + " in!");
      person.valid = true;
      //person.canForce doesn't matter here
    }
  });
};

var updateResult = function( data ) {
  // Save the new results
  results = data;

  // Empty the result container
  elem.checkin.result.empty();

  // For each entry, add a new result object
  results.forEach(function( person ) {
    elem.checkin.result.append( person.element = personElement( person ) );
  });

  // Update the result container
  elem.checkin.result.parent()
    .removeClass("some none")
    .addClass("results")
    .addClass( data.length ? "some" : "none" );
  
  // Update result actions
  updateResultActions();

  // Select the first thing
  results.length && select(0);
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
  elem.checkin.events.append("<option value='" + index + "'>" + result[1] + "</option>");

  return {
    name:       result[1],
    waiver:     ( w ? waivers[w] : "general" ),
    tally:      !!result[3],
    tournament: !!result[4]
  };
});

// Anytime ajax finishes successfully, check for a 'Next-Authorization' header
$( document ).ajaxSuccess(function( ev, xhr ) {
  var nextToken = xhr.getResponseHeader("Next-Authorization");

  // If there was another token, use it as auth
  nextToken && (auth.token = nextToken);
});

// If the body is clicked and #result isn't in the heirarchy, remove "valid" and "invalid"
body.click(function( ev ) {
  // Check if #result is in the heirarchy
  var target = $(ev.target).parents("#result");

  // If target is empty, remove the classes
  if( !target.length ) {
    body.removeClass("valid invalid");
  }
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

        // Focus the search input box
        elem.checkin.search.focus();
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

// React to event changes
elem.checkin.events.change(function( ev ) {
  event = eventOptions[ $(this).val() ];
  updateResultActions();
  console.log( event );
});

// Add search functionality
elem.checkin.search.keypress(function( ev ) {
  var t = $(this),
      text = t.val(),
      key = ev.keyCode || ev.which;

  if( key === 40 && results.length ) {
    // Down key, so if there are results, select the first one
    select(0);
  } else if( key === 13 && !searching ) {
    // If not searching and [Enter] was pressed, search now
    // Disable the input
    t.attr("disabled", true );
    
    // Check if the input is card-swiped (naively, first char is ';')
    if( text[0] === ';' ) {
      // Since an ID would otherwise be shown in the text box, empty it now
      t.val("");

      // format is ;xxxxxxXXXXXXXXX..., where X is id
      // also, remove leading zeroes
      text = text.substring(7, 16).replace(/^0+/, "");
    }

    // Otherwise, perform a search request
    searching = true;
    elem.checkin.container.addClass("searching");
    t.blur();
    $.ajax({
      method:      "GET",
      url:         "/api/checkin/search",
      contentType: "application/json",
      headers: {
        Authorization: auth.identity + auth.token
      },
      data: {
        query:    text
      },

      success: function( data ) {
        // Re-enable the input
        t.attr("disabled", false );

        // Done searching, note that now
        searching = false;
        elem.checkin.container.removeClass("searching");

        // Populate the result div
        updateResult( data );
      },

      error: function( xhr, text, error ) {
        // Re-enable the input
        t.attr("disabled", false );

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
  }
});

// Add navigability to the results div
elem.checkin.result.mousedown(function( ev ) {
  // When the element is clicked, update the selection
  var target = $(ev.target);
  target = target.is(".person") ? target : target.parents(".person");

  // Make sure it's a .person
  if( !target.length ) return;

  // Update the selection to the index
  select( target.index() );
}).keydown(function( ev ) {
  var key = ev.keyCode || ev.which;

  // Ignore key events if currently checking in a member
  if( $(this).hasClass("checking-in") ) return;

  if( key === 38 ) {
    // Up key pressed -- move selection up, or select input if at top
    if( selected === 0 ) {
      elem.checkin.search.focus();
      body.removeClass("valid invalid");
    } else {
      select( selected - 1 );
    }

  } else if( key === 40 ) {
    // Down key pressed -- move selection down if not at the last element
    if( selected < results.length - 1 ) {
      select( selected + 1 );
    }
  }
}).keypress(function( ev ) {
  var key = ev.keyCode || ev.which,
      p = results[ selected ],
      e = event
      t = $(this);

  // Ignore key events if currently checking in a member
  if( t.hasClass("checking-in") ) return;

  // [Enter] pressed, attempt a check-in
  if( key === 13 ) {
    //console.log( ev );
    // If the check-in is valid or (can be forced and a force was requested)
    if( p.valid || (p.canForce && ev.ctrlKey) ) {
      // Disable the results container...
      t.addClass("checking-in");

      // ...then run the check in...
      $.ajax({
        method: "POST",
        url:    "/api/checkin",
        contentType: "application/json",
        headers: {
          Authorization: auth.identity + auth.token
        },
        data: JSON.stringify({
          id:    p.id,
          event: e.name,
          force: p.valid ? false : e.waiver
        }),

        success: function( data ) {
          // The update was successful -- select the input
          elem.checkin.search.val("").focus();

          // Remove any results
          results = [];
          elem.checkin.result.empty()
            .parent().removeClass("results some");

          // Re-enable the result container
          t.removeClass("checking-in");
        },

        error: function( xhr, text, error ) {
          // Re-enable the result container
          t.removeClass("checking-in");

          // If it was a 'not authorized' issue, handle specially
          if( xhr.status === 401 ) {
            // Must have gotten logged out somehow
            body.removeClass("logged-in");
            auth = undefined;
            elem.login.error.text("Your login is no longer valid. Please log in again.").addClass("shown");
          } else {
            // Update was not successful -- show an alert
            alert("Something went wrong during the check-in: " + text );
          }
        }
      });
    }
  }
});

});