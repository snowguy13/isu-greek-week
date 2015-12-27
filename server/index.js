var express = require('express'),
    app     = express(),

    bodyParser = require('body-parser');

// Determine the port to bind to (process.env.PORT is for Heroku)
app.set('port', ( process.env.PORT || 5000 ));

// Allow JSON parsing
app.use( bodyParser.json() );

// Placeholder response -- just echo the path for now
app.use(function( req, res ) {
  res.send("You requested the path \"<strong>" + req.url + "\"</strong>");
});

// On empty url, return the main file
app.get("/", function( req, res ) {
  res.sendFile("webapp/index.htm");
});

// Listen on the designated port
app.listen(app.get('port'), function() {
  console.log("Node app is running at localhost:" + app.get('port'));
});