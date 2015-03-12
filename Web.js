var express = require('express'),
    bParser = require('body-parser'),
    fs      = require('fs'),
    app     = express(),
    pg      = require('pg'),
    CONNECT = process.env.DATABASE_URL || "postgres://tomscallon:FireAnd1ce@localhost/testisugreekweek",
    runQuery;

// Determine port and set up static file serving
app.set('port', ( process.env.PORT || 5000 ));
app.use( express.static( __dirname + '/public' ) );

// Allow JSON parsing
app.use( bParser.json() );

// Api stuff
runQuery = function( query, callback ) {
  pg.connect( CONNECT, function( err, client, done ) {
    var errStr;

    if( err ) { 
      console.error( errStr = "Failed to connect to database: " + err );
      return callback( undefined, errStr );
    }

    client.query( query, function( err, res ) {
      // done using the client
      done();

      if( err ) { 
        console.error( errStr = "Failed to execute query: " + err );
        return callback( undefined, errStr );
      }
      
      // if successful, run the callback with the results
      callback( res );
      client.end();
    });
  });
};

app.get('/api/locations', function( req, res ) {
  runQuery("SELECT * FROM Location", function( result, error ) {
    if( error ) {
      res.status(500).send( error ).end();
    } else {
      res.status(200).json( result.rows );
    }
  });
});

app.get('/api/events', function( req, res ) {
  runQuery("SELECT * FROM Event", function( result, error ) {
    if( error ) {
      res.status(500).send( error ).end();
    } else {
      res.status(200).json( result.rows );
    }
  });
});

// Temporary: to add events
app.post('/api/events', function( req, res ) {
  var body = req.body,
      locStr = body.location === null ? "null" : "'" + body.location + "'";
  runQuery("INSERT INTO Event VALUES ('" + body.name + "', " + locStr + ", '" + body.locInfo + "', " + body.startdaytime + ", " + body.enddaytime + ")", function( result, error ) {
    if( error ) {
      res.status(500).send( error ).end();
    } else {
      res.status(200).end();
    }
  });
});

// Map the empty URL to index.htm
app.get('/', function( req, res ) {
  res.sendFile( __dirname + '/public/index.htm');
});

app.listen(app.get('port'), function() {
  console.log("Node app is running at localhost:" + app.get('port'));
});