var apparel = require("./apparel.json"),
    twitter = require("./twitter"),

    Router  = require("express").Router,
    checkin = Router(),

    router  = Router();

// Return Tweets when they are requested
router.get("/tweets", function( req, res ) {
  res.json( twitter.getTweets() );
});

// Return apparel info when it is requested
router.get(/\/apparel(\.js(on)?)?/, function( req, res ) {
  res.json( apparel );
});

// Create the checkin router
checkin.post("/login", function( req, res ) {
  var u = req.body.username,
      p = req.body.password;

  
});

// Mount the router
router.use("/checkin", checkin );

// Export the router
module.exports = router;