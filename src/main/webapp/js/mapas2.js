var placeSearch, autocomplete;
var componentForm = {
	street_number : 'short_name',
	route : 'long_name',
	locality : 'long_name',
	administrative_area_level_1 : 'short_name',
	country : 'long_name',
	postal_code : 'short_name'
};

function initAutocomplete() {
	var map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: -34.607034, lng: -58.375516},
        zoom: 14,
        mapTypeId: 'roadmap'
    });

	autocomplete = new google.maps.places.Autocomplete(
	/** @type {!HTMLInputElement} */
	(document.getElementById('autocomplete')), {
		types : [ 'geocode' ]
	});
	autocomplete.addListener('place_changed', fillInAddress);

}
function fillInAddress() {
	var map = new google.maps.Map(document.getElementById('map'), {
		center: {lat: -34.607034, lng: -58.375516},
		zoom: 14,
		mapTypeId: 'roadmap'
	});
    // Get the place details from the autocomplete object.
    var place = autocomplete.getPlace();
    if(place == null){
    	return;
    }
//    var marker;
//    marker.setMap(null);
    
    var marker = new google.maps.Marker({
        position: place.geometry.location,
        map: map,
        title:  place.name
      });
    
    marker.setMap(map);
   
    var bounds = new google.maps.LatLngBounds();
    if (place.geometry.viewport) {
        // Only geocodes have viewport.
        bounds.union(place.geometry.viewport);
      } else {
        bounds.extend(place.geometry.location);
      }
    
    map.fitBounds(bounds);
   
    var data ={
    		formatted_address : place.formatted_address,
    		lng : place.geometry.viewport.b.b,
    		lat : place.geometry.viewport.f.f
    	
    };
    for (var component in componentForm) {
      document.getElementById(component).value = '';
      document.getElementById(component).disabled = false;
    }
    ajaxPost(data);

    // Get each component of the address from the place details
    // and fill the corresponding field on the form.
    for (var i = 0; i < place.address_components.length; i++) {
      var addressType = place.address_components[i].types[0];
      if (componentForm[addressType]) {
        var val = place.address_components[i][componentForm[addressType]];
        document.getElementById(addressType).value = val;
      }
    }
}



  // Bias the autocomplete object to the user's geographical location,
  // as supplied by the browser's 'navigator.geolocation' object.
  function geolocate() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function(position) {
        var geolocation = {
          lat: position.coords.latitude,
          lng: position.coords.longitude
        };
        var circle = new google.maps.Circle({
          center: geolocation,
          radius: position.coords.accuracy
        });
        autocomplete.setBounds(circle.getBounds());
      });
    }
  }

function ajaxPost(data){
	$.ajax({
    	type : 'POST',
    	url : 'inicioHome2',
    	contentType: 'application/json',
    	data : JSON.stringify(data),
    	success : function(data, status, xhr){
    		console.info(data);
    		console.log(status);
    		console.log(xhr);
	
    	},
    	error: function(error){
    		console.log("ERROR: ", error);
    	
    	}
	   
	});
}

//function ajaxPost(data){
//	$( document ).ready(function() {
//		console.log(data);
//  	$.ajax({
//			type : "POST",
//			contentType : "application/json",
//			url : window.location + "api/customer/save",
//			data : JSON.stringify(formData),
//			dataType : 'json',
//			success : function(result) {
//				if(result.status == "Done"){
//					$("#postResultDiv").html("<p style='background-color:#7FA7B0; color:white; padding:20px 20px 20px 20px'>" + 
//												"Post Successfully! <br>" +
//												"---> Customer's Info: FirstName = " + 
//												result.data.firstname + " ,LastName = " + result.data.lastname + "</p>");
//				}else{
//					$("#postResultDiv").html("<strong>Error</strong>");
//				}
//				console.log(result);
//			},
//			error : function(e) {
//				alert("Error!")
//				console.log("ERROR: ", e);
//			}
//  	    	type : 'POST',
//  	    	url : 'inicioHome',
//  	    	contentType: 'application/json',
//  	    	data :data,
//  	    	success : function(data, status, xhr){
//  	    		$("#result").html(data);
//  	    	},
//  	    	error: function(xhr, status, error){
//  	    		alert(error);
//  	    	}
//  	   
//		});
//  	
//
//  })
//}

