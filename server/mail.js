var SendGrid = require("sendgrid")( process.env.SENDGRID_USERNAME, process.env.SENDGRID_PASSWORD )
    render   = require("./templates/render");

/*SendGrid.send({
  to:       'tscallon@iastate.edu',
  from:     'isugwtechnology@gmail.com',
  subject:  "Let's see...",
  html:     "<strong>Please</strong> tell me this <em>worked</em>..."
}, function(err, json) {
  if (err) { return console.error(err); }
  console.log(json);
});*/