var apparel  = require("./apparel.json"),
    //chapters = require("./chapters.json"),
    twitter  = require("./twitter"),

    router  = require("express").Router();

// Return Tweets when they are requested
router.get("/tweets", function( req, res ) {
  res.json( twitter.getTweets() );
});

// Return apparel info when it is requested
router.get(/\/apparel(\.js(on)?)?/, function( req, res ) {
  res.json( apparel );
});

// Return chapter list when it is requested
/*router.get("/chapters", function( req, res ) {
  res.json( chapters );
});*/

// Export the router
module.exports = router;