var key = require("./gmail-key.json"),
    
    Google = require("googleapis"),
    Gmail  = Google.gmail('v1');

// create the jwtClient
var jwtClient = new Google.auth.JWT( 
  key.client_email, 
  null, 
  key.private_key, 
  ["https://www.googleapis.com/auth/gmail.send"], 
  null // should be isugwtechnology@gmail.com
);

jwtClient.authorize(function( err, tokens ) {
  console.log( err, tokens );

  var test = Gmail.users.messages.send({
    auth: jwtClient,
    userId: "me",
    media: {
      body: "Just a test!"
    }
  });

  console.log( test );
});