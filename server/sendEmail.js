var SendGrid = require("sendgrid")( process.env.SENDGRID_USERNAME, process.env.SENDGRID_PASSWORD )
    render   = require("./templates/render");

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
module.exports = function send( opts, cb ) {
  console.log( render( opts.template, opts.context ) );
  SendGrid.send({
    from:     "Nik Suvorov & Tom Scallon <isugwtechnology@gmail.com>",
    to:       opts.to || [],
    cc:       opts.cc || [],
    bcc:      opts.bcc || [],
    subject:  opts.subject,
    html:     render( opts.template, opts.context )
  }, cb );
};