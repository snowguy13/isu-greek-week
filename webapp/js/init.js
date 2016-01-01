// Configure RequireJS
require.config({
  baseUrl: "js/",
  paths: {
    "jquery":           "lib/jquery/dist/jquery.min",
    "jquery.countdown": "lib/jquery.countdown/dist/jquery.countdown.min"
  }
});

// Start the app
requirejs(["js/gw2016.js"]);