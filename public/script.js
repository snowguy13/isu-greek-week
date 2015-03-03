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

  var nav, header, footer;

  var resize = function() {
    var ww = window.innerWidth;
    
    // update width-related constraints
    Constraints.update( ww );
    
    // remove body classes, detach <nav>
    document.body.className = "";
    nav.remove();
    
    if( Constraints.get("Nav in footer") ) {
      document.body.classList.add("nav-in-footer");
      footer.appendChild( nav );
    } else {
      header.appendChild( nav );
    }
  }

  window.onload = function() {
    var forEach = Array.prototype.forEach;

    nav = document.getElementById("nav");
    header = document.getElementById("header");
    footer = document.getElementById("footer");

    /*forEach.call( nav.childNodes, function( node ) {
      node.id = "nav-" + node.innerHTML;
    });*/
    
    resize();
  }

  window.onresize = resize;

}());