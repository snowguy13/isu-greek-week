(function() {
  
  var MOVE_NAV_TO_FOOTER = 630;

  var nav, header, footer;

  var resize = function() {
    var ww = window.innerWidth;
    
    document.body.className = "";
    nav.remove();
    
    if( ww <= MOVE_NAV_TO_FOOTER ) {
      document.body.classList.add("nav-in-footer");
      footer.appendChild( nav );
    } else {
      header.appendChild( nav );
    }
    
    //( ww <= MOVE_NAV_TO_FOOTER ? footer : header ).appendChild( nav );
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