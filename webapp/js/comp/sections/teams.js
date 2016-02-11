define(["jquery", "data/teams"],
function( $,       teams ) {

var createElementForTeam = function( team ) {
  var container = $("<div />").addClass("team"),
      name      = $("<div />").addClass("name"),
      chapters  = $("<ul />").addClass("chapter-list");

  // Add the name to its element
  name.html( team.name );

  // Add the chapters to their element
  team.chapters.forEach(function( chapter ) {
    var el = $("<li />")
      .addClass("chapter")
      .text( chapter );
    
    // Append the element
    chapters.append( el );
  });

  // Add the name and chapter to the container
  container.append([ name, chapters ]);
};

var prepare = function( el, done ) {
  // Add a container for each team
  teams.forEach(function( team ) {
    el.append( createElementForTeam( team ) );
  });

  // That's it!
  done();
};

return {
  prepare: prepare
}

});