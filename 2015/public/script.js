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
      currentLink = 0,
      currentSection = 0,
      links,
      sections,
      map;

      // header 52
      // footer 48
  
  /** APPLIES TO ALL **/

  var select = function( index ) {
    var link;

    // deselect the previous section
    (link = links[ currentLink ]).classList.remove("active");
    sections[ currentSection ].classList.remove("active");
    document.body.classList.remove( link.innerHTML.toLowerCase() );
    
    // now select the next one
    currentLink = index;
    (link = links[ currentLink ]).classList.add("active");
    currentSection = link.dataset.select !== undefined ? link.dataset.select : index;
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
  
  /** TWITTER **/

  var lookForTwitter = function() {
    var t = document.getElementById("twitter-widget-0");
      console.log("Looking for Twitter...");

    if( !t ) {
      setTimeout( lookForTwitter, 100 );
    } else {
      setTimeout(function() {
        t.style.width = "";
        t.style.height = "";
        t.style.padding = "";
        document.getElementById("twitter-outer").style.visibility = "";
      }, 1000);
    }
  };

  /** SCHEDULE **/
  var sortEvents = function( evA, evB ) {
    if( evA.startdaytime < evB.startdaytime ) {
      return -1;
    } else if( evA.startdaytime > evB.startdaytime ) {
      return 1;
    } else {
      // startdaytimes are the same
      if( evA.enddaytime < evB.enddaytime ) {
        return -1;
      } else if( evA.enddaytime > evB.enddaytime ) {
        return 1;
      } else {
        return 0;
      }
    }
  };

  var DAYS = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
  var DATE = 22;
  
  // NOTE: *daytime properties are integer counting # of 15-min chunks after midnight Sunday the 22nd
  // this function separates a *daytime value into hours since day (0 = Sunday 22nd) and time (# 15 increments since midnight)
  var separateDaytime = function( daytime ) {
    var time = daytime % 96,
        day  = ( daytime - time ) / 96;

    return {
      time: time,
      day: day
    };
  };

  var timeNumToStr = function( timeNum ) {
    var min = timeNum % 4,
        hr  = ( timeNum - min ) / 4,
        pm  = hr >= 12;

    return "<span class='hour'>" + (( pm ? hr - 12 : hr ) || 12) + "</span>:"
         + "<span class='min'>"  + ( min === 0 ? "00" : min * 15 ) + "</span>"
         + "<span class='ampm'>" + ( pm ? "PM" : "AM" ) + "</span>";
  };

  var daytimeToTimeStr = function( daytime ) {
    return timeNumToStr( separateDaytime( daytime ).time );
  };

  var createElement = function( type, classes, innerHTML ) {
    var el = document.createElement( type );

    el.className = classes;
    el.innerHTML = innerHTML || "";

    return el;
  };
  
  var CLASSES = {
    event:     "event",
    list:      "event-list",
    title:     "event-title",
    name:      "event-name",
    timeBox:   "event-time-box",
    time:      "event-time",
    body:      "event-body",
    location:  "event-location",
    locInfo:   "event-loc-info",
    dayHeader: "day-header"
  };

  var makeDayHeader = function( day ) {
    return createElement("li", CLASSES.dayHeader, DAYS[ day % 7 ] + ", March " + (DATE + day));
  };

  var makeEventElement = function( ev ) {
    var li      = createElement("li",   CLASSES.event ),
        head    = createElement("h4",   CLASSES.title ),
        timeBox = createElement("span", CLASSES.timeBox ),
        body    = createElement("div",  CLASSES.body);
    
    timeBox.appendChild( createElement("time", CLASSES.time, daytimeToTimeStr( ev.startdaytime ) ) );
    if( ev.startdaytime !== ev.enddaytime ) {
      timeBox.appendChild( createElement("span", "", " - ") );
      timeBox.appendChild( createElement("time", CLASSES.time, daytimeToTimeStr( ev.enddaytime ) ) );
    }
    
    head.appendChild( createElement("span", CLASSES.name, ev.name) );
    head.appendChild( document.createTextNode(" ") );
    head.appendChild( timeBox );
    li.appendChild( head );

    body.appendChild( createElement("span", CLASSES.location, ev.location ) );
    ev.locinfo && body.appendChild( createElement("span", CLASSES.locInfo, ev.locinfo) );
    li.appendChild( body );

    return li;
  };

  var prepareSchedule = function( events ) {
    var events     = events.sort( sortEvents ),
        elements   = events.map( makeEventElement ),
        dayHeaders = [ 0, 1, 2, 3, 4, 5, 6, 7 ].map( makeDayHeader ),
        container  = document.getElementById("schedule"),
        lastDay    = -1,
        sublist    = createElement( "ul", CLASSES.list );
    
    // iterate through the event elements, adding day headers as normal
    elements.forEach(function( li, index ) {
      var day = separateDaytime( events[ index ].startdaytime ).day;

      // remember, events are already sorted by time and day, so this will work
      if( lastDay < day ) {
        // Append the previous sublist (if it has children), and create a new list
        if( sublist.childNodes.length ) { 
          container.appendChild( sublist );
          sublist = createElement( "ul", CLASSES.list );
        }

        // Move to the relevant day, append the header
        lastDay = day;
        container.appendChild( dayHeaders[ lastDay ] );
      }
      
      // Add this element to the relevent sublist
      sublist.appendChild( li );
    });

    // Append the last sublist
    sublist.childNodes.length && container.appendChild( sublist );

    // Add a scroll listener to move the headers as need be
    sections[ 1 ].addEventListener("scroll", function() {
      console.log("Scroll:");
      var scrollY = sections[ 1 ].scrollTop;

      dayHeaders.forEach(function( header ) {
        var eventList = header.nextSibling;
        //console.log({ max: topMax, goal: topGoal });
        
        // Reset 'top' to ensure proper calculations
        header.style.top = "0px";

        // Get the bounds
        topMax  = (eventList.offsetHeight || ( eventList.clientHeight + 20 )); // the height of the following list of elements
        topGoal = scrollY - header.offsetTop;                                  // the scrolled height, less the position of the header

        header.style.top = Math.max( 0, Math.min( topMax, topGoal )) + "px";
      });
    }, false);
  };

  var requestSchedule = function() {
    var xhr = new XMLHttpRequest();

    xhr.open("GET", "/api/events");
    xhr.onreadystatechange = function() {
      if( xhr.readyState !== 4 ) return; // quit if not DONE
      console.log("XHR done");
      prepareSchedule( JSON.parse( xhr.response ) );
    };
    xhr.send();
  };
  
  /** MAP **/

  var initializeGoogleMap = function() {
    var settings = {
          zoom: 15,
          center: new google.maps.LatLng(42.022892, -93.646869)
        },
        container = document.getElementById("google-map-container");
        
    map = new google.maps.Map( container, settings );
    kmlLayer = new google.maps.KmlLayer({
      url: "https://github.com/snowguy13/isu-greek-week/raw/master/data/GW15.kmz",
      map: map
    });

    window.map = map;
  };

  /** APPLIES TO ALL **/

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

    // make sure the helpful links open in a new tab
    Array.prototype.forEach.call( document.querySelectorAll(".helpful-links"), function( list ) {
      list.addEventListener('click', function( event ) {
        var src = event.target;

        if( src.tagName.toLowerCase() === "a" ) {
          // don't navigate to the page
          event.preventDefault();
          
          // instead, open in a new tab
          window.open( src.href );
        }
      }, false);
    });

    // do scheduley things
    requestSchedule();

    // initialize the Google Map
    initializeGoogleMap();

    // make the first section active
    select( 0 );
    
    // initialize size-based necessities
    resize();
  }

  window.onresize = resize;

}());