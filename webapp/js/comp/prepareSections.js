define(["jquery", "util/SectionManager", "comp/sections/apparel", "comp/sections/rulebook", "comp/sections/teams"], 
function( $,       SectionManager,        apparel,                 rulebook,                 teams ) {

var manager;

var opts = {
  sections: {
    //Apparel: apparel
    Rulebook: rulebook,
    Teams:    teams
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

  // Listen for clicks on elements with [data-href]
  opts.element.click(function( ev ) {
    var href = $( ev.target ).attr("data-href");

    // If the element has [data-href], go to that link
    if( href ) {
      window.open( href );
    }
  });

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