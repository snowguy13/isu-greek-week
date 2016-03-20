var apparel = require("./apparel.json"),
    twitter = require("./twitter"),

    db      = require("./database"),

    Router  = require("express").Router,

    checkin = Router(),
    auth    = require("./checkin-auth"),

    router  = Router();

var checkAuth = function( req, res, next ) {
  var result,
      identity = req.query.identity || req.body.identity,
      token    = req.query.token || req.body.token;

  // If there is no identity or token, fail now
  if( !identity || !token ) {
    res.status(401).send("Missing identity or token");
    return false;
  }

  // If the token doesn't match the identity or the action isn't allowed, fail now
  if( !(result = auth.isAuthorized( identity, token, req.url )).authorized ) {
    res.status(401).send( result.reason );
    return false;
  }

  // Otherwise, we're good; invoke the next callback
  next();
  return true;
};

// Return Tweets when they are requested
router.get("/tweets", function( req, res ) {
  res.json( twitter.getTweets() );
});

// Return apparel info when it is requested
router.get(/\/apparel(\.js(on)?)?/, function( req, res ) {
  res.json( apparel );
});

// Auth middleware
checkin.use(function( req, res, next ) {
  (req.url === "/login") ? next() : checkAuth( req, res, next );
});

// Login for checkin stuff
checkin.post("/login", function( req, res ) {
  var u = req.body.username,
      p = req.body.password;
  
  // Attempt the login, and send the result
  res.send( auth.logIn( u, p ) );
});

// Search for members
checkin.get("/search", function( req, res ) {
  db.searchForMember( req.query.query, function( err, result ) {
    if( err ) {
      res.status(500).send( err );
    } else {
      res.send( result );
    }
  });
});

// Mount the router
router.use("/checkin", checkin );

// Export the router
module.exports = router;