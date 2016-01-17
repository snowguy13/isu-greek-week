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

    // The duration between the time Tweet is first shown and begins scrolling
    TWEET_START_SCROLL = 2000,

    // The duration between the time a Tweet stops scrolling and is hidden 
    TWEET_HIDE = 1000,

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
  return $("<div class='tweet'></div>").text( tweetData.text );
};

// Assumes Tweets have been loaded and DOM is ready
activateTweetBar = function( bar ) {
  var index   = -1,
      tweetEl = null,

      // Where Tweets are held
      container = bar.find(".tweet-container"),
      
      // Ushers in the next Tweet
      nextTweet;

  nextTweet = function() {
    // Determine the next index, create the element
    index   = ( index + 1 ) % tweets.length;
    tweetEl = tweetToHTML( tweets[ index ] );

    // Add the Tweet to the container
    container
      .empty()
      .append( tweetEl );
  };

  // Switch Tweets according to the time properties
  setInterval( nextTweet, 3000 );
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