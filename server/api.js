var db        = require("./database"),
    twitter   = require("./twitter"),
    sendEmail = require("./sendEmail"),

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
router.post("/orders/:netid/create", function( req, res ) {
  var netid = req.params.netid;

  db.createOrder( netid, function( err, info ) {
    // If this is a new order, send an email now
    if( info.newOrderCreated ) {
      sendEmail({
        to:       netid + "@iastate.edu",
        subject:  "Greek Week Apparel Code",
        template: "send-code",
        context:  {
          code: info.orderCode
        },
      });
    }

    // Send the response
    res.json({
      newOrderCreated: info.newOrderCreated,
      orderHasInfo:    info.orderHasInfo
    });
  });
});

// Export the router
module.exports = router;