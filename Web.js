var express = require('express'),
    fs      = require('fs'),
    app     = express(),
    pg      = require('pg'),
    CONNECT = process.env.DATABASE_URL || "postgres://tomscallon:FireAnd1ce@localhost/testisugreekweek",
    runQuery;

// Determine port and set up static file serving
app.set('port', ( process.env.PORT || 5000 ));
app.use( express.static( __dirname + '/public' ) );

// Api stuff
runQuery = function( query, callback ) {
  pg.connect( CONNECT, function( err, client, done ) {
    if( err ) { console.error("Failed to connect to database: " + err ); }

    client.query( query, function( err, res ) {
      // done using the client
      done();

      if( err ) { console.error("Failed to execute query: " + err ); }
      
      // if successful, run the callback with the results
      callback( res );
      client.end();
    });
  });
};

app.get('/api/locations', function( req, res ) {
  runQuery("SELECT * FROM Locations", function( result ) {
    
  });
});

// Map the empty URL to index.htm
app.use('/', function( req, res ) {
  res.sendFile( __dirname + '/public/index.htm');
});

app.listen(app.get('port'), function() {
  console.log("Node app is running at localhost:" + app.get('port'));
});

pg.connect( CONNECT, function( err, client, done ) {
  if( err ) {
    return console.error("Failed to connect to database " + CONNECT );
  }

  client.query("SELECT * FROM Location", function( err, res ) {
    // done with client
    done();

    if( err ) {
      return console.err("Error running query");
    }

    console.log( res.rows );
    client.end();
  });
});