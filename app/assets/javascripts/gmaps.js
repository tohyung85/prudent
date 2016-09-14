$(function(){  

  function initMap() {
    var myLatLng = {lat: 1.295379, lng: 103.810556};

    var map = new google.maps.Map(document.getElementById('map-canvas'), {
      zoom: 12,
      center: myLatLng
    });

    var marker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      title: 'Hello World!'
    });
  }
});

