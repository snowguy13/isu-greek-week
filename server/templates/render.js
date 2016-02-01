var Handlebars = require("handlebars"),
    fs   = require("fs"),
    templates = {},

    EXT = ".html";

// Read in all templates
fs.readdir( __dirname, function( err, files ) {
  // If the was an error, quit
  if( err ) {
    console.err("Failed to read templates");
    return;
  }

  // Otherwise, iterate over the files looking for .dust.html extensions
  files.forEach(function( file ) {
    var name;
    
    // Make sure the extension is .dust.html
    if( file.substring( file.length - EXT.length ) !== EXT ) {
      return;
    }

    // Save the file name
    name = file.substring( 0, file.length - EXT.length );

    // Otherwise, register the template
    templates[ name ] = Handlebars.compile( fs.readFileSync( __dirname + "/" + file ).toString() );
  });
});

module.exports = function render( name, context ) {
  if( !( name in templates ) ) {
    // Couldn't find the requested template, return an empty string
    console.log("Could not find a template called '%s'", name );
    return "";
  }

  // Otherwise, resolve the template with the cached callback
  return templates[ name ]( context );
};