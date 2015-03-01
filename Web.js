var express = require('express'),
    fs      = require('fs'),
    app     = express();

// Determine port and set up static file serving
app.set('port', ( process.env.PORT || 5000 ));
app.use( express.static( __dirname + '/public' ) );

// Map the empty URL to index.htm
app.use('/', function( req, res ) {
  res.sendFile( __dirname + '/public/index.htm');
});

app.listen(app.get('port'), function() {
  console.log("Node app is running at localhost:" + app.get('port'));
});