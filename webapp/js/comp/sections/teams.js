define(["jquery", "data/teams"],
function( $,       teams ) {

var NUM_COLS = 4;

// Minimum width a column is allowed
var PREFFERED_COL_WIDTH = 260;

// Overall container for the team elements
var teamContainer = $("<div />").addClass("team-container")

// References to columns that store the team elements
var cols = [];

// List of elements, one for each team
var teamEls;

// Given a team JSON object, creates an element for display
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

  // Then return the container
  return container;
};

teamEls = teams.map( createElementForTeam )

var shortestColumn = function() {
  var shortest = cols[ 0 ],
      height = shortest.innerHeight();

  // Iterate over the columns
  cols.forEach(function( col ) {
    var colH = col.innerHeight();

    if( colH < height ) {
      shortest = col;
      height = colH;
    }
  });

  // Then the return the shortest
  return shortest;
};

var shown = false;

var determineColumnCount = function( width ) {
  var count = 1,
      used  = PREFFERED_COL_WIDTH;

  // Add the space (AND PADDING) needed for additional columns
  while( (used += ( PREFFERED_COL_WIDTH + 10 )) < width ) count++;

  return count;
};

// Determines the appropriate number of columns to use and 
// organizes the DOM in that way
var updateColumns = function() {
  // TODO Hacky -- fix this later
  shown = true;

  var numNewCols = determineColumnCount( teamContainer.innerWidth() ),//Math.max( 1, Math.floor( teamContainer.innerWidth() / PREFFERED_COL_WIDTH ) ),
      currentCols = cols.length;


  console.log("Updating columns: was %d, now %d", currentCols, numNewCols );

  // If the column counts are the same, quit now
  if( numNewCols === currentCols ) {
    return;
  }

  // Start by removing all team elements from the DOM
  teamEls.forEach(function( teamEl ) {
    teamEl.remove();
  });

  // Then, make sure the appropriate number of columns are present
  if( numNewCols < currentCols ) {
    // The new orientation requires fewer columns
    var removed = cols.splice( 0, currentCols - numNewCols );
    console.log("Removing %d column(s)", removed.length );

    // Remove each of the unnecessary columns from the DOM
    removed.forEach(function( col ) {
      console.log("  Removed!");
      col.remove();
    });
  } else {
    // Otherwise, the orientation requires more columns
    while( cols.length < numNewCols ) {
      var newCol = $("<div />").addClass("column");

      // Save a reference to the new column
      cols.push( newCol );

      // And add it to the container
      teamContainer.append( newCol );
    }
  }

  // Now we the appropriate number of columns will be present
  // So, add all the teams to the columns
  teamEls.forEach(function( teamEl ) {
    shortestColumn().append( teamEl );
  });
};

var prepare = function( el, done ) {
  // Add the overall container to the section
  el.append( teamContainer );

  // No need to call updateColumns() -- it will be handled by onShow
  // However, whenever the window resizes, update the columns if the section is shown
  window.addEventListener("resize", function() {
    shown && updateColumns();
  });

  // That's it!
  done();
};

return {
  prepare: prepare,
  onShow: updateColumns,
  onHide: function() {
    shown = false;
  }
};

});