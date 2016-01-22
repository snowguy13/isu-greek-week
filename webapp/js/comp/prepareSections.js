define(["jquery", "util/SectionManager", "comp/sections/apparel"], 
function( $,       SectionManager,        apparel ) {

var opts = {
  sections: {
    apparel: apparel
  }
};

// Document will be ready by the time this is invoked
return function() {
  var manager,
      sections = opts.sections;
  
  // Get the root element
  opts.element = $(".section-container");

  // Get the section elements
  for( var sName in sections ) {
    sections[ sName ].element = $(".section[name='" + sName + "']");
  }

  // Create the SectionManager
  manager = new SectionManager( opts );
};

});