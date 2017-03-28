define(["jquery", "util/SectionManager", "comp/sections/apparel", "comp/sections/rulebook", "comp/sections/teams", "comp/sections/brackets", "comp/sections/live-stream" ], 
function( $,       SectionManager,        apparel,                 rulebook,                 teams,                 brackets,                 liveStream ) {

var manager;

var opts = {
  sections: {
    //Apparel: apparel
    Rulebook: rulebook,
    Teams:    teams,
    Brackets: brackets,
    LiveStream: liveStream
  },

  onShow: function() {
    $("main").addClass("section-active");
  },

  onHide: function() {
    $("main").removeClass("section-active");
  }
};

var makeSectionButton = function( sName, dispName ) {
  var button = $("<button class='button' />")
    .text( dispName || sName )
    .click(function() {
      manager.show( sName );
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
    var el   = $(".section[name='" + sName + "']"),
        name = el.attr("data-display-name") || sName;

    // Have the section refer to the element
    sections[ sName ].element = el
      // Create a header in the section
      .prepend("<h3>" + name + "</h3>");
    
    // Create a button for the element
    buttonContainer.append( makeSectionButton( sName, name ) );
  }

  // Create the SectionManager
  manager = new SectionManager( opts );
};

});