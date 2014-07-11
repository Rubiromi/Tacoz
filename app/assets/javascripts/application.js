//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require gmaps
//= require_tree .

$(function() {
  loadMap();
});

// var loadMap = function() {
//   $map = $('#map');
//   if($map.length) {
//     var gmap = new GMaps({
//       div: '#map',
//       lat: $map.data('lat'),
//       lng: $map.data('lon')
//     });
//   }
// };

var loadMap = function() {
  $map = $('#map');
  if($map.length) {
    var gmap = new GMaps({
      div: '#map',
      lat: $map.data('lat'),
      lng: $map.data('lon')
    });
    var gmap = map.addMarker({
      lat: $map.data('lat'),
      lng: $map.data('lon'),
      title: 'Taste of Thai',
      click: function(e) {
        alert('You clicked in this marker');
      }
    });
  }
};
