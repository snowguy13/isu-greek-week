// Configure RequireJS
require.config({
  baseUrl: "js/",
  paths: {
    "json":             "lib/requirejs-plugins/lib/text",
    
    // Libraries
    "jquery":           "lib/jquery/dist/jquery.min",
    "jquery.countdown": "lib/jquery.countdown/dist/jquery.countdown.min",
    "mobile-detect":    "lib/mobile-detect/mobile-detect.min",

    "data/apparel":     "json!/api/apparel.json"
  }
});

// Start the app
requirejs(["js/gw2016.js"]);