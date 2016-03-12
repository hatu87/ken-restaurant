// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// 
(function() {
  var map;

  function initMap() {
    var mapOptions = {
      zoom: 15,
      center: new google.maps.LatLng(10.729239, 106.694734)
    };
    var map = new google.maps.Map(document.getElementById('map'), mapOptions);
    var marker = new google.maps.Marker({
      map: map,
      draggable: false,
      position: new google.maps.LatLng(10.729239, 106.694734)
    });
  }
  initMap();
  google.maps.event.addDomListener(window, 'resize', initMap);
  google.maps.event.addDomListener(window, 'load', initMap);
}());