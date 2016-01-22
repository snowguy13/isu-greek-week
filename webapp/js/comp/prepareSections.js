define(["jquery", "util/SectionManager", "comp/sections/apparel"], 
function( $,       SectionManager,        apparel ) {

var manager;

var opts = {
  sections: {
    Apparel: apparel
  },

  onShow: function() {
    $("main").addClass("section-active");
  },

  onHide: function() {
    $("main").removeClass("section-active");
  }
};

var makeSectionButton = function( name ) {
  var button = $("<button class='button' />")
    .text( name )
    .click(function() {
      manager.show( name );
    });

  return button;
};

// Document will be ready by the time this is invoked
return function() {
  var buttonContainer,

      sections = opts.sections;
  
  // Get the root element
  opts.element = $(".section-container");
  buttonContainer = opts.element.find(".button-container");

  // When the section-back-button is clicked, hide the section
  $("#section-back-button").click(function() {
    manager.hide();
  })

  // Get the section elements, create a button for each one
  for( var sName in sections ) {
    // Have the section refer to the element
    sections[ sName ].element = $(".section[name='" + sName + "']")
      // Create a header in the section
      .prepend("<h3>" + sName + "</h3>");
    
    // Create a button for the element
    buttonContainer.append( makeSectionButton( sName, manager ) );
  }

  // Create the SectionManager
  manager = new SectionManager( opts );
};

});