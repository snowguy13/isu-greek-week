define(["mobile-detect"], function( MobileDetect ) {
  console.log( MobileDetect );
  return new MobileDetect( window.navigator.userAgent );
});