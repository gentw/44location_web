function initMap() {
    // The location of Uluru
    var uluru = {lat: 46.5197, lng: 6.6323};
    // The map, centered at Uluru
    var map = new google.maps.Map(
        document.getElementById('map'), {zoom: 8, center: uluru});
    // The marker, positioned at Uluru
    var marker = new google.maps.Marker({position: uluru, map: map});
  }