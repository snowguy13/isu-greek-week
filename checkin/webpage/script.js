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
    innerContainer: $("#inner-check-in-container"),
    events:    $("#event"),
    search:    $("#search"),
    result:    $("#result")
  },
  totals: {
    openLinkContainer: $("#totals-link-container"),
    openLink: $("#totals-link"),
    closeLink: $("#checkin-link"),
    container: $("#totals-container"),
    table: $("#totals-table")
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
    } else if( person.events.indexOf( event.name ) > -1 ) {
      // Otherwise, if the member is already checked in, say so!
      message.html( person.first + " is <strong>already checked in</strong> to " + event.name + "!");
      person.valid = true;
      //person.canForce doesn't matter here
    } else if( person.gw_role ) {
      // Otherwise, if the member is on Crew or Central, they can't be checked in!
      message.html("Isn't " + person.first + " supposed to be <strong>disaffiliated</strong>...?");
      person.valid = false;
      person.canForce = false;
    } else if( event.waiver && (!person["w_" + event.waiver]/* && !person.w_general*/) ) {
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
      message.html("<strong>Hit [Enter]</strong> to check " + person.first + " in!");
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

var round = function( val, places ) {
  return Math.round( Math.pow( 10, places ) * val ) / Math.pow( 10, places );
};

var makeTotalsRow = function( events, name, totals, percentages, header ) {
  return events.reduce(function( row, event ) {
    // Create a cell for the event
    var type = header ? "<th />" : "<td />";

    // Append a span with totals and with percentages
    row.append( $( type ).addClass("total").text( totals[ event ] || 0 ) );
    row.append( $( type ).addClass("percent").text( round( percentages[ event ] || 0, 2 )  + "%" ) );

    return row;
  }, $("<tr />").append( $("<th />").text( name ) ) );
};

var makeTotalsBody = function( events, teamName, teamData ) {
  var b = $("<tbody />"), c;

  // Add a totals row for the team
  b.append( makeTotalsRow( events, teamName, teamData.totals, teamData.percentages, true ) );

  // Add a totals row for each of the team's chapters
  for( var chapter in teamData.chapters ) {
    c = teamData.chapters[ chapter ];
    b.append( makeTotalsRow( events, chapter, c.totals, c.percentages ) );
  }

  return b;
};

var makeTotalsTable = function( data ) {
  var t = elem.totals.table,
      e = data.events,
      h = $("<thead />");

  // First, empty the table
  t.empty();

  // Begin by creating the table header
  e.reduce(function( h, e ) {
    return h.append($("<th />").text( e ).attr("colspan", 2));
  }, h.append("<th />"));

  // Now append it to the table
  t.append( h );

  // For each team, append a body
  for( var team in data.teams ) {
    t.append( makeTotalsBody( e, team, data.teams[ team ] ) );
  }

  // Add padding to the table
  t.css("padding-top", h.outerHeight() + "px" );
};

// Constants

/* Event options: array of string with special format
 *   "<EventName>:[g|n][t]"
 *     g|n -- indicates waiver requirement
 *       g -- general waiver (default if omitted)
 *       n -- no waiver
 *     t -- indicates the event is a tournament event
 */
var eventOptions = [
  'Blood Drive:n',
  'LSI 4k',
  'Up \'til Dawn Event:n',
  'Tournaments',
];

// Convert eventOptions into JSON
eventOptions = eventOptions.map(function( event, index ) {
  var result = /([A-Za-z0-9 ']+)(:(g|n)?(t)?)?/.exec( event ),
      w = result[3];

  console.log(event, result);
  var waivers = {
    g: 'general',
    n: false,
  };

  // Add the event to the events dropdown
  elem.checkin.events.append("<option value='" + index + "'>" + result[1] + "</option>");

  return {
    name:       result[1],
    waiver:     ( w ? waivers[w] : 'general' ),
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

        // If the user was "gwgencos", show the totals link
        elem.totals.openLink.detach();

        if( u === "gwgencos" ) {
          elem.totals.openLinkContainer.append( elem.totals.openLink );
        }

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
      e = event,
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
          force: p.valid ? false : e.waiver /*"general"*/
        }),

        success: function( data ) {
          // The update was successful -- select the input
          elem.checkin.search.val("").focus();

          // Remove any results
          results = [];
          elem.checkin.result.empty()
            .parent().removeClass("results some");

          // Remove classes from the body
          body.removeClass("invalid valid")

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

// Initially, detach the totals container
elem.totals.container.detach();

elem.totals.openLink.click(function() {
  // Hide the inner check in container
  elem.checkin.innerContainer.css("display", "none");
  elem.totals.openLinkContainer.hide();

  // Make the main container wide
  $("main").addClass("wide");

  // Append the totals container
  elem.checkin.innerContainer.before( elem.totals.container );

  // Hide the results table until the request has finished
  elem.totals.table.hide();

  // Make the request to get stuff
  $.ajax({
    method: "GET",
    url:    "/api/checkin/totals",
    contentType: "application/json",
    headers: {
      Authorization: auth.identity + auth.token
    },
    data: {
      events: eventOptions.map( opt => opt.name )
    },

    success: function( data ) {
      // Import the data into the table
      makeTotalsTable( data );

      // Finally, show the table!
      elem.totals.table.show();
    },

    error: function() {
      // Just close everything -- rage quit
      elem.totals.closeLink.click();
    }
  });
});

elem.totals.closeLink.click(function() {
  // Detach the totals container
  elem.totals.container.detach();

  // Make the main container normal
  $("main").removeClass("wide");

  // And show the inner container
  elem.checkin.innerContainer.css("display", "");
  elem.totals.openLinkContainer.show()
});

});
