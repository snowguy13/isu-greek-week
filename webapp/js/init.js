// Configure RequireJS
require.config({
  baseUrl: "js/",
  paths: {
    "jquery":           "lib/jquery/dist/jquery.js",
    "jquery.countdown": "lib/jquery.countdown/dist/jquery.countdown.js"
  }
});

// Start the app
requirejs(["gw2016.js"]);