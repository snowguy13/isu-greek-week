(function() {

  var Constraints = (function( CONSTS ) {
    var FUNCS = {
      "<" : function( a, b ) { return a < b },
      "<=": function( a, b ) { return a <= b },
      ">" : function( a, b ) { return a > b },
      ">=": function( a, b ) { return a >= b }
    }, current = {};  
    
    for( var name in CONSTS ) {
      var val = CONSTS[ name ].split(" ");
      
      CONSTS[ name ] = {
        "func": FUNCS[ val[0] ],
        "val": +val[1]
      };
    }

    return {
      update: function( width ) {
        for( var name in CONSTS ) {
          var data = CONSTS[ name ];

          current[ name ] = data.func( width, data.val );
        }
      },

      get: function( name ) {
        return current[ name ];
      }
    };
  }({
    "Nav in footer": "<= 630"
  }));

  var nav, 
      header,
      currentSection = 0,
      links,
      sections,
      footer;

  var select = function( index ) {
    var link;

    // deselect the previous section
    (link = links[ currentSection ]).classList.remove("active");
    sections[ currentSection ].classList.remove("active");
    document.body.classList.remove( link.innerHTML.toLowerCase() );
    
    // now select the next one
    currentSection = index;
    (link = links[ currentSection ]).classList.add("active");
    sections[ currentSection ].classList.add("active");
    document.body.classList.add( link.innerHTML.toLowerCase() );
  };

  var resize = function() {
    // update width-related constraints
    Constraints.update( window.innerWidth );
    
    // remove body classes, detach <nav> (in preparation for size-based stuff)
    document.body.classList.remove("nav-in-footer");
    document.body.style.height = window.innerHeight + "px";
    nav.remove();
    
    // update stuff related to constraints
    if( Constraints.get("Nav in footer") ) {
      document.body.classList.add("nav-in-footer");
      footer.appendChild( nav );
    } else {
      header.appendChild( nav );
    }
  }

  window.onload = function() {
    var forEach = Array.prototype.forEach,
        filter  = Array.prototype.filter,
        indexOf = Array.prototype.indexOf,
        isElement = function( node ) { return "tagName" in node; };
    
    // get references to common elements
    nav = document.getElementById("nav");
    header = document.getElementById("header");
    footer = document.getElementById("footer");

    // get the links and sections, then select the first of each
    links = filter.call( nav.childNodes, isElement );
    sections = filter.call( document.getElementById("main").childNodes, isElement );

    // when nav is clicked, update selection if necessary
    nav.onclick = function( ev ) {
      var index = indexOf.call( links, ev.target );
      
      // only select the index if it's not -1
      index === -1 || select( index );
    };

    // make the first section active
    select( 0 );
    
    // initialize size-based necessities
    resize();
  }

  window.onresize = resize;

}());