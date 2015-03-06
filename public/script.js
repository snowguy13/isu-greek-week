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
    "thin": "<= 630"
  }));

  var nav, 
      header,
      main,
      footer,
      currentSection = 0,
      links,
      sections,
      lookForTwitter;

      // header 52
      // footer 48

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
    link.focus();
  };

  select.prev = function() {
    select( (currentSection - 1 + sections.length) % sections.length )
  };

  select.next = function() {
    select( (currentSection + 1) % sections.length );
  };

  var resize = function() {
    var wh = window.innerHeight;

    // update width-related constraints
    Constraints.update( window.innerWidth );
    
    // remove body classes, detach <nav> (in preparation for size-based stuff)
    document.body.classList.remove("thin");
    //document.body.style.height = wh + "px";
    nav.remove();
    
    // update stuff related to constraints
    if( Constraints.get("thin") ) {
      document.body.classList.add("thin");
      footer.appendChild( nav );
      main.style.height = (wh - 58 - 42) + "px";
    } else {
      header.appendChild( nav );
      main.style.height = (wh - 58) + "px";
    }

    // update the height of the Twitter widget
    //twitterWidget.style.height = main.clientHeight - ( Constraints.get("Nav in footer") ? 58 + 42 + 10 : 58 + 10 );
  };

  lookForTwitter = function() {
    var t = document.getElementById("twitter-widget-0");
      console.log("Looking for Twitter...");

    if( !t ) {
      setTimeout( lookForTwitter, 100 );
    } else {
      setTimeout(function() {
        
      t.style.width = "";
      t.style.height = "";
      t.style.padding = "";
      }, 500);
    }
  };

  window.onload = function() {
    var forEach = Array.prototype.forEach,
        filter  = Array.prototype.filter,
        indexOf = Array.prototype.indexOf,
        isElement = function( node ) { return "tagName" in node; };
    
    // get references to common elements
    nav = document.getElementById("nav");
    header = document.getElementById("header");
    main = document.getElementById("main");
    footer = document.getElementById("footer");

    // get the links and sections, then select the first of each
    links = filter.call( nav.childNodes, isElement );
    sections = filter.call( document.getElementById("main").childNodes, isElement );

    // get the twitter widget
    lookForTwitter();

    // when nav is clicked, update selection if necessary
    nav.onclick = function( ev ) {
      var index = indexOf.call( links, ev.target );
      
      // only select the index if it's not -1
      index === -1 || select( index );
    };

    header.onkeydown = function( ev ) {
      var key = ev.keyCode || ev.which,
          prevent = false,
          index;

      if( key === 9 ) {
        // key is a TAB, either move forward or backward
        ev.shiftKey ? select.prev() : select.next();
        prevent = true;
      } else if( key === 13 ) {
        // key is an ENTER, select the currently focused tab header, if any
        index = indexOf.call( links, ev.target );
      
        // only select the index if it's not -1
        index === -1 || select( index );

        prevent = true;
      }

      prevent && ev.preventDefault();
    };

    // make the first section active
    select( 0 );
    
    // initialize size-based necessities
    resize();
  }

  window.onresize = resize;

}());