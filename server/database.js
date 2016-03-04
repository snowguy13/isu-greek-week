var pg = require("pg");

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

// Statements
var STMT = {
  CHECK_IF_MEMBER_EXISTS: function( isu_id ) {
    return `SELECT EXISTS( SELECT true FROM event_roster WHERE isu_id='${isu_id}' )`;
  },

  ADD_MEMBER: function( info ) {
    return `INSERT INTO event_roster (id, isu_id, net_id, first_name, last_name, chapter) VALUES ('${genId(20)}', '${info.isu_id}', '${info.net_id}', '${info.first_name}', '${info.last_name}', '${info.chapter}');`;
  },

  GET_MEMBERS_BY_NAME: function( first, last ) {
    return `SELECT first_name AS first, last_name AS last, chapter FROM event_roster WHERE first_name='${first}' AND last_name='${last}'`;
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
        cb( err );
        return;
      }

      // Otherwise, if the member already exists, stop now
      if( res.rows[0].exists ) {
        cb( undefined, { created: false });
      } else {
        // Or if the row doesn't exist, create it now
        client.query( STMT.ADD_MEMBER( member ), function( err, res ) {
          // If there was an error, fail
          if( err ) {
            cb( err );
            return;
          }

          // Otherwise, note the success!
          cb( undefined, { created: true });
        });
      }
    });
  },
  
  // 'member' should be an object with AT LEAST the properties 'first' and 'last'
  // Additionally, 'chapter' is helpful to differentiate the (hopefully rare) duplicate name
  setWaiverStatus: function( member, waiverType, status, cb ) {
    // Start by getting members with the given first and last name
    client.query( STMT.GET_MEMBERS_BY_NAME( member.first, member.last ), function( err, res ) {
      // If an error occurred, quit now
      if( err ) {
        cb( err );
        return;
      }

      // Otherwise (temp) print the found names
      console.log( res );
      cb( undefined, true );
    })
  }
};