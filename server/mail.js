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

/**
 * Sends an email message.
 *
 * Parameters:
 *   opts  {Object}  
 *     Email configuration options. Has the following properties:
 *     
 *     template  {String}  
 *       The name of the template to use when sending the email
 *     context  {Object}
 *       The context to pass to the template renderer
 *     to, cc, bcc  {String|Array}
 *       Address(es) to send the email to
 *
 */
module.exports = function send( opts ) {
  var html = render( opts.template, opts.context ),
      message = new SendGrid.email();
  
  SendGrid.send({
    from: "isugwtechnology@gmail.com",
    to:   opts.to || [],
    cc:   opts.cc || [],
    bcc:  opts.bcc || []
  });
};