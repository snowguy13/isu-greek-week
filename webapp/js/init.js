// Configure RequireJS
require.config({
  baseUrl: "js/",
  paths: {
    "json":             "lib/requirejs-plugins/lib/text",

    "jquery":           "lib/jquery/dist/jquery.min",
    "jquery.countdown": "lib/jquery.countdown/dist/jquery.countdown.min",

    "data/apparel":     "json!/api/apparel.json"
  }
});

// Start the app
requirejs(["js/gw2016.js"]);