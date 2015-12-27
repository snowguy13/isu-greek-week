// Configure RequireJS
require.config({
  baseUrl: "js/",
  paths: {
    "jquery":           "bower_components/jquery/dist/jquery.js",
    "jquery.countdown": "bower_components/jquery.countdown/dist/jquery.countdown.js"
  }
});

// Start the app
requirejs(["gw2016.js"]);