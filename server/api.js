var db      = require("./database"),
    twitter = require("./twitter"),

    router  = require("express").Router();

// Return Tweets when they are requested
router.get("/tweets", function( req, res ) {
  res.json( twitter.getTweets() );
});

// Return apparel info when it is requested
router.get(/\/apparel(\.js(on)?)?/, function( req, res ) {
  db.getApparel(function( err, apparel ) {
    res.json( err ? {} : apparel );
  });
});

// Return true if an order exists
router.get("/orders/:netid/exists", function( req, res ) {
  db.checkOrderExists( req.params.netid, function( err, exists ) {
    res.json( exists );
  });
});

// Export the router
module.exports = router;