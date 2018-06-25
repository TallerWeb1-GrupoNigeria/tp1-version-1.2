<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<%@ include file="_header.jsp" %>
<%@ include file="_menuAdmin.jsp" %>



<div class="py-2">
    <div class="container">
      <div class="row">
        
        <div class="col-md-6">
          
			<form:form class="" modelAttribute="keyEvento">
			
				<div class="form-group">
			    	<h3 class="font-weight-bold">${ keyEvento.getNombre() }</h3>
				</div>
				
				<table class="table table-striped">
					<tr>
						<td>ID:</td>
						<td class="font-weight-bold">${ keyEvento.getId() }</td>
					</tr>
					<tr>
						<td>Descripcion:</td>
						<td class="font-weight-bold">${ keyEvento.getDescripcion() }</td>
					</tr>
					<tr>
						<td>Nombre Img:</td>
						<td class="font-weight-bold">${ keyEvento.getImagen() }</td>
					</tr>
					<tr>
						<td>Fecha:</td>
						<td class="font-weight-bold">${ keyEvento.getFecha() }</td>
					</tr>
					<tr>
						<td>Hora:</td>
						<td class="font-weight-bold">${ keyEvento.getHora() }</td>
					</tr>
					<tr>
						<td>Direccion:</td>
						<td class="font-weight-bold">${ keyEvento.getDireccion() }</td>
					</tr>
					<tr>
						<td>Latitud:</td>
						<td class="font-weight-bold">${ keyEvento.localizacion.getLatitud() }</td>
					</tr>
					<tr>
						<td>Longitud:</td>
						<td class="font-weight-bold">${ keyEvento.localizacion.getLongitud() }</td>
					</tr>
					<tr>
						<td>Mostrar?</td>
						<td class="text-uppercase font-weight-bold">${ keyEvento.getMostrar() }</td>
					</tr>
				</table>
	  		</form:form>
        
        </div>
        
        <div class="col-md-6">
          	<img class="img-fluid d-block my-2" src="img/${ keyEvento.getImagen() }" alt="imagen_evento">
		    <!--The div element for the map -->
		    <div id="map"></div>
  		</div>
        
        
        
        
      </div>
      <div>
      		<h4><a href="./homeAdmin">Volver a la lista</a></h4>
      </div>
    </div>
  </div>

  <br/>
  
  

	<!-- SCRIPT GOOGLE MAPS API ***************************************************** -->
	<script>
		// Initialize and add the map
		function initMap() {
	  		// The location of Uluru
	  		var uluru = {lat: ${ keyEvento.localizacion.getLatitud() }, lng: ${ keyEvento.localizacion.getLongitud() }};
	  		// The map, centered at Uluru
	  		var map = new google.maps.Map( document.getElementById('map'), {zoom: 16, center: uluru} );
	  		// The marker, positioned at Uluru
	  		var marker = new google.maps.Marker({position: uluru, map: map});
		}
    </script>
    <!--Load the API from the specified URL
    * The async attribute allows the browser to render the page while the API loads
    * The key parameter will contain your own API key (which is not needed for this tutorial)
    * The callback parameter executes the initMap() function
    -->
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKsOyLppGoYEHhTvwny8xDgKj96ZzSIFU&callback=initMap"></script>
  	<!--  ***************************************************************************  -->
  

<%@ include file="_footer.jsp" %>