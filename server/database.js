var pg = require("pg"),
    _  = require("underscore");

// Should work remotely or locally
var DB = process.env.DATABASE_URL || "tomscallon:tomscallon@localhost/isugreekweek";

// Create the client and connect to the database
var client = new pg.Client( DB );
client.connect();

// Generates random identifying strings
var DICT = "abcdefghijklmnopqrstuvwxyz0123456789";
var genId = function( len ) {
  var id = "";

  while( id.length < len ) {
    id += DICT[ Math.floor( Math.random() * DICT.length ) ];
  }

  return id;
};

// Characters used in people's names
var NAME_CHARS = 'rebcafnzosikygqutmdhwlxpvj -.\''; 

// Escapes single quotes in strings (to handle names like "O'Hora")
var escapeSingleQuote = function( str ) {
  return str.replace(/'/, "''");
};

// Adds a 'happenedWhile' field to an error, then invokes the callback (failing)
var markAndFail = function( err, cb, mark ) {
  err.happenedWhile = mark;
  cb( err );
};

var invokeAndCollect = function( cb, stmts ) {
  var result = [], error, count = stmts.length;
  
  stmts.forEach(function( stmt, index ) {
    client.query( stmt, function( err, res ) {
      // Increase the count
      count--;

      // An error has already occurred, just fail silently
      if( !error ) {
        // This is the first statement to fail -- note it and quit
        if( err ) {
          err.happenedWhile = `executing statement ${index + 1} of ${stmts.length}: '${stmt}'`;
          error = err;
        } else {
          // Otherwise, all is well! Add the result to the list
          result = result.concat( res.rows );
        }
      }

      // If this is the last statement to execute, run the callback
      if( !count ) {
        cb( error, error ? undefined : _.uniq( result, false, p => p.net_id ) );
      }
    });
  });
};

// Statements
var STMT = {
  CHECK_IF_MEMBER_EXISTS: function( id, uniqueId ) {
    return `SELECT EXISTS( SELECT true FROM event_roster WHERE ${uniqueId ? "id" : "isu_id"} = '${id}' )`;
  },

  ADD_MEMBER: function( info ) {
    return `INSERT INTO event_roster (id, isu_id, net_id, first_name, last_name, chapter${info.gw_role ? ', gw_role' : ''}) VALUES ('${genId(20)}', '${info.isu_id}', '${info.net_id}', '${escapeSingleQuote( info.first_name )}', '${escapeSingleQuote( info.last_name )}', '${info.chapter}'${info.gw_role ? `, '${info.gw_role}'` : ''});`;
  },

  SEARCH_MEMBER_BY_ISU_ID: function( id ) {
    return `SELECT id, net_id, first_name AS first, last_name AS last, chapter, gw_role, w_lipsync, w_general, technical FROM event_roster WHERE isu_id = '${id}';`;
  },

  SEARCH_MEMBERS_BY_NET_ID: function( text ) {
    return `SELECT id, net_id, first_name AS first, last_name AS last, chapter, gw_role, w_lipsync, w_general, technical FROM event_roster WHERE lower(net_id) LIKE '%${text}%';`;
  },

  SEARCH_MEMBERS_BY_NAME: function( firstText, lastText ) {
    return `SELECT id, net_id, first_name AS first, last_name AS last, chapter, gw_role, w_lipsync, w_general, technical FROM event_roster WHERE lower(first_name) LIKE '%${firstText}%' ${lastText ? 'AND' : 'OR'} lower(last_name) LIKE '%${lastText || firstText}%';`;
  },

  GET_MEMBER_BY_NET_ID: function( netId ) {
    return `SELECT id, first_name AS first, last_name AS last, chapter FROM event_roster WHERE net_id='${netId}';`;
  },

  GET_MEMBERS_BY_NAME: function( first, last ) {
    return `SELECT id, first_name AS first, last_name AS last, chapter FROM event_roster WHERE first_name = '${escapeSingleQuote( first )}'${ last ? `AND last_name = '${escapeSingleQuote( last )}'` : '' };`;
  },

  UPDATE_WAIVER_STATUS: function( id, waiverType, status ) {
    return `UPDATE event_roster SET w_${waiverType} = ${status} WHERE id = '${id}';`;
  },

  CHECK_IN_MEMBER: function( id, event ) {
    return `UPDATE event_roster SET events = events || '${event}'::Text WHERE id = '${id}' AND '${event}'::Text <> ALL(events);`;
  }
};

// Export useful functionality!
module.exports = {
  disconnect: function() {
    client.end();
  },

  addMemberToRoster: function( member, cb ) {
    // First, check if the member exists
    client.query( STMT.CHECK_IF_MEMBER_EXISTS( member.isu_id ), function( err, res ) {
      // If the was an error, fail now
      if( err ) {
        return markAndFail( err, cb, "checking member existence");
      }

      // Otherwise, if the member already exists, stop now
      if( res.rows[0].exists ) {
        cb( undefined, { created: false });
      } else {
        // Or if the row doesn't exist, create it now
        client.query( STMT.ADD_MEMBER( member ), function( err, res ) {
          // If there was an error, fail
          if( err ) {
            return markAndFail( err, cb, "adding new member");
          }

          // Otherwise, note the success!
          cb( undefined, { created: true });
        });
      }
    });
  },

  setWaiverStatusByNetID: function( netId, waiverType, status, cb ) {
    // Start by grabbing the member's id
    client.query( STMT.GET_MEMBER_BY_NET_ID( netId ), function( err, res ) {
      // If an error occurred, quit now
      if( err ) {
        return markAndFail( err, cb, "grabbing member id");
      }

      // Otherwise, update the waiver
      if( !res.rows.length ) {
        // No match found
        cb( undefined, { success: false });
      } else {
        // Otherwise, match found -- update the waiver!
        client.query( STMT.UPDATE_WAIVER_STATUS( res.rows[0].id, waiverType, status ), function( err, res ) {
          // If an error occurred, quit now
          if( err ) {
            return markAndFail( err, cb, "grabbing member id");
          }

          // Otherwise, it worked!
          cb( undefined, { success: true });
        });
      }
    });
  },
  
  // 'member' should be an object with AT LEAST the properties 'first' and 'last'
  // Additionally, 'chapter' is helpful to differentiate the (hopefully rare) duplicate name
  setWaiverStatus: function( member, waiverType, status, cb ) {
    if( typeof member === "string" ) {
      client.query( STMT.UPDATE_WAIVER_STATUS( member, waiverType, status ), function( err, res ) {
        // If an error occurred, quit now
        if( err ) {
          return markAndFail( err, cb, "updating waiver status");
        }

        var result = res.rows[0];

        // Otherwise, note the success
        cb( undefined, { updated: true });
      });
    } else {
      // Start by getting members with the given first and last name
      client.query( STMT.GET_MEMBERS_BY_NAME( member.first, member.last ), function( err, res ) {
        // If an error occurred, quit now
        if( err ) {
          return markAndFail( err, cb, "getting members");
        }

        var rows = res.rows, row, filtered;

        // If no matches were found or more than one was found...
        if( rows.length === 0 ) {
          cb( undefined, { updated: false, options: rows });
          return;
        }

        if( rows.length > 1 ) {
          // More than one entry was found, try to pick the one with the correct chapter
          // If no chapter is present, just fail now
          if( !member.chapter ) {
            cb( undefined, { updated: false, options: rows });
            return;
          }

          // Otherwise, attempt to find the entry with a matching chapter
          filtered = rows.filter( row => row.chapter === member.chapter );

          // If there isn't exactly one match, fail
          if( filtered.length !== 1 ) {
            cb( undefined, { updated: false, options: rows });
            return;
          }

          // Otherwise, use that member
          row = filtered[0];
        } else {
          // Otherwise... update that person's status!
          row = rows[0];
        }

        client.query( STMT.UPDATE_WAIVER_STATUS( row.id, waiverType, status ), function( err, res ) {
          // If an error occurred, quit now
          if( err ) {
            return markAndFail( err, cb, "updating waiver status");
          }

          var result = res.rows[0];

          // Otherwise, note the success
          cb( undefined, { updated: true });
        });
      });
    }
  },

  checkInMemberToEvent: function( memberId, eventName, cb ) {
    // Start by making sure the given member exists
    client.query( STMT.CHECK_IF_MEMBER_EXISTS( memberId, true ), function( err, res ) {
      // If an error occurred, quit now
      if( err ) {
        return markAndFail( err, cb, "checking member existence");
      }

      // Otherwise, if no such member exists, fail now
      if( !res.rows[0].exists ) {
        cb(new Error("No such member exists"));
        return;
      }

      // If we get here, add the event to the member's list
      client.query( STMT.CHECK_IN_MEMBER( memberId, eventName ), function( err, res ) {
        // If an error occurred, quit now
        if( err ) {
          return markAndFail( err, cb, "adding event to member's list of events");
        }

        // Otherwise, the event was added successfully!
        cb( undefined, {});
      });
    });
  },

  // Determines which columns need search, then returns first_name, last_name, 
  // chapter, net_id, w_lipsync, w_general, and technical
  // For now, matches must be exact
  searchForMember: function( string, cb ) {
    var stmts = [], parts;

    // Convert the input to lower case, ignoring leading and trailing spaces
    string = string.trim().toLowerCase();

    // If string contains only digits, search by isu_id
    if( /^\d+$/.test( string ) ) {
      stmts.push( STMT.SEARCH_MEMBER_BY_ISU_ID( string ) );
    } else if( string.indexOf(" ") > -1 ) {
      // If string contains a space, search by name
      // (Only first two space-separated values are used)
      parts = string.split(/\s+/g);
      stmts.push( STMT.SEARCH_MEMBERS_BY_NAME( parts[0], parts[1] ) );
    } else {
      // Otherwise, search by name and by net_id
      stmts.push( STMT.SEARCH_MEMBERS_BY_NET_ID( string ) );
      stmts.push( STMT.SEARCH_MEMBERS_BY_NAME( string ) );
    }

    // Execute the statements!
    invokeAndCollect( cb, stmts );
  }
};