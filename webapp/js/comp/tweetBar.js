define(["jquery"], function( $ ) {

var getTweetBar,

    tweetsLoaded = false,
    tweets,

    TWEET_REQUEST = {
      method: "GET",
      url:    "/api/tweets",
      success: function( data ) {
        // Save the new Tweets!
        tweets = data;
        console.log("...Tweets have been updated.");
      }
    },
    requestTweets,

    // The interval to space Tweet update requests
    REFRESH_RATE = 60000,
    
    // The animation duration for sliding Tweets in and out
    SLIDE_DURATION = 500,

    // The duration between the time Tweet is first shown and begins scrolling
    BEFORE_SCROLL = 2000,

    // The rate at which extra Tweet width is scrolled through (in px/s)
    SCROLL_RATE = 100,

    // The duration between the time a Tweet stops scrolling and is hidden 
    BEFORE_SWAP = 1000,

    activateTweetBarOnTweetsLoaded = false,

    tweetToHTML,
    activateTweetBar;

// Returns a jQuery reference to the Tweet bar elements
getTweetBar = function() {
  return $("#tweet-wrapper");
};

// Updates the list of Tweets
requestTweets = function() {
  console.log("Requesting Tweets...")
  $.ajax( TWEET_REQUEST );
};

// Request the tweets -- this initial request is different
// since it must interact with the activation of the bar
$.ajax({
  method: "GET",
  url:    "/api/tweets",
  success: function( data ) {
    // Indicate the Tweets have been loaded and save them
    tweetsLoaded = true;
    tweets = data;
    
    // If the Tweet bar should be activated now, do so
    if( activateTweetBarOnTweetsLoaded ) {
      activateTweetBar( getTweetBar() );
    }
  }
});

// Begin requesting Tweets every minute
setInterval( requestTweets, REFRESH_RATE );

// Turns Tweet JSON into HTML element
tweetToHTML = function( tweetData ) {
  return $("<span class='tweet'></span>").html( tweetData.text );
};

// Assumes Tweets have been loaded and DOM is ready
activateTweetBar = function( bar ) {
  var index   = -1,
      tweetEl = null,

      // Where Tweets are held
      container = bar.find(".tweet-container"),
      
      scrollTweet,
      nextTweet;

  scrollTweet = function() {
    // Determine if scrolling is necessary
    var tw = tweetEl.outerWidth(),
        cw = container.outerWidth(),
        diff;
    
    if( tw > cw ) {
      // Scrolling is necessary
      diff = tw - cw;

      // Animate to show the whole Tweet
      tweetEl.animate({
        left: -diff + "px"
      }, 1000 * diff / SCROLL_RATE, function() {
        // Once finished, wait until a swap should occur
        setTimeout( nextTweet, BEFORE_SWAP );
      });
    } else {
      // No scrolling needed
      setTimeout( nextTweet, BEFORE_SWAP );
    }
  };
  
  // Ushers in the next Tweet
  nextTweet = function() {
    console.log("Showing next Tweet");
    var oldTweetEl = tweetEl;

    // Determine the next index, create the element
    index   = ( index + 1 ) % tweets.length;
    tweetEl = tweetToHTML( tweets[ index ] );

    // Start the new Tweet off the bottom of the container
    tweetEl.css({
      top:     "100%",
      opacity: 0
    });

    container.append( tweetEl );

    // Animate the old Tweet out (if there was an old one)
    if( oldTweetEl != null ) {
      oldTweetEl.animate({
        bottom:  "100%",
        opacity: 0
      }, SLIDE_DURATION, function() {
        // Once the animation is done, remove the Tweet
        oldTweetEl.remove();
      });
    }

    // Animate the new Tweet in
    tweetEl.animate({
      top:     "0px",
      opacity: 1
    }, SLIDE_DURATION, function() {
      // Remove any styling of the 'top' property
      tweetEl.css("top", "");

      // Wait the necessary time to begin scrolling
      setTimeout( scrollTweet, BEFORE_SCROLL );
    });
  };

  // Switch Tweets according to the time properties
  //setInterval( nextTweet, 3000 );
  nextTweet();
};

return function() {
  if( !tweetsLoaded ) {
    // If Tweets aren't loaded, activate the Tweet bar once they are
    activateTweetBarOnTweetsLoaded = true;
  } else {
    // Otherwise, activate it now
    activateTweetBar( getTweetBar() );
  }
};

});