// Configure RequireJS
require.config({
  baseUrl: "js/",
  paths: {
    "jquery":           "lib/jquery/dist/jquery",
    "jquery.countdown": "lib/jquery.countdown/dist/jquery.countdown"
  }
});

// Start the app
requirejs(["js/gw2016.js"]);