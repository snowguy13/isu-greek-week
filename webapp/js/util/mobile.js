define(["mobile-detect"], function( MobileDetect ) {
  return new MobileDetect( window.navigator.userAgent );
});