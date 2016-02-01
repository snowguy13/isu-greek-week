var Dust = require("dust"),
    templates = {};

// Read in all templates
fs.readdir( __dirname, function( err, files ) {
  // If the was an error, quit
  if( err ) {
    console.err("Failed to read templates");
    return;
  }

  // Otherwise, iterate over the files looking for .dust.html extensions
  files.forEach(function( file ) {
    console.log( file );
  });
});

module.exports = function render( name, context, callback ) {
  if( !( name in templates ) ) {
    // Couldn't find the requested template, return an empty string
    callback("Could not find a template called '%s'", null );
  }

  // Otherwise, resolve the template with dust
  dust.render( name, context, callback );
};