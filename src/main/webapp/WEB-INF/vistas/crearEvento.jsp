
<%@ include file="_header.jsp" %>
<%@ include file="_menuAdmin.jsp" %>
<script src="js/mapas2.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKsOyLppGoYEHhTvwny8xDgKj96ZzSIFU&libraries=places&callback=initAutocomplete" async defer></script>
    
    <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500">

 <div class="container" id="contenedor_form">    
	 
	  <br />
	<div class="row">
	 <div class="col-md-8">
	  <form:form action="crearEvento" method="POST" modelAttribute="keyEvento">
	
	   <div class="form-group">
	    <label>Nombre:</label>
	       <form:input path="nombre" type="text" id="nombre" class="input form-control" />
	       <small class="form-text text-muted">Nombre que tendra el evento</small>
	   </div>
	   
	   <div class="form-group">
	    <label>Descripcion:</label>
	       <form:input path="descripcion" type="text" id="descripcion" class="input form-control"/>
	   </div>
	
	   <div class="form-group">
	    <label>Fecha:</label>
	    <form:input path="fecha" type="date" id="fecha" class="input form-control" />
	   </div>
	
	   <div class="form-group">
	    <label>Hora de Inicio:</label>
	       <form:input path="horaInicio" type="text" id="horaInicio" class="input form-control"/>
	   </div>
	   
	   <div class="form-group">
	    <label>Hora de Fin:</label>
	       <form:input path="horaFin" type="text" id="horaFin" class="input form-control"/>
	   </div>
	   
	   <div class="form-group">
	    <label>Direccion:</label>
	       <form:input path="direccion" type="text" id="direccion" class="input form-control"/>
	   </div>
	   
	   <div class="form-group">
	    <label>Telefono:</label>
	       <form:input path="telefono" type="text" id="telefono" class="input form-control"/>
	   </div>

	   <div class="form-group">
	    <label>Latitud:</label>
	       <form:input path="Localizacion.latitud" type="text" id="latitud" class="input form-control"/>
	   </div>
	   
	   <div class="form-group">
	    <label>Longitud:</label>
	       <form:input path="Localizacion.longitud" type="text" id="longitud" class="input form-control"/>
	   </div>
	   
	    <div class="form-group">
		    <label>Imagen 1:
		    	<small class="form-text text-muted">(Importante!) Seleccione imagenes que esten dentro de la carpeta img/</small>
		    </label><br/>
	        <form:input path="imagen1" type="file" accept=".jpg,.jpeg,.png" id="imagen1" name="imagen1" class=""/>
	    </div>
	    
	    <div class="form-group">
		    <label>Imagen 2:</label><br/>
	        <form:input path="imagen2" type="file" accept=".jpg,.jpeg,.png" id="imagen2" name="imagen2" class=""/>
	    </div>
	    
	    <div class="form-group">
		    <label>Imagen 3:</label><br/>
	        <form:input path="imagen3" type="file" accept=".jpg,.jpeg,.png" id="imagen3" name="imagen3" class=""/>
	    </div>
	    
	    <div class="form-group">
	    <label>Correo:</label>
	       <form:input path="correo" type="text" id="correo" class="input form-control"/>
	   </div>
	   
	   <div class="form-group">
	    <label>Facebook:</label>
	       <form:input path="facebook" type="text" id="facebook" class="input form-control"/>
	   </div>
	   
	   <div class="form-group">
	    <label>Twitter:</label>
	       <form:input path="twitter" type="text" id="twitter" class="input form-control"/>
	   </div>
	   
	   <div class="form-group">
	    <label>Instagram:</label>
	       <form:input path="instagram" type="text" id="instagram" class="input form-control"/>
	   </div>

	   <div class="form-group">
	    <label>Mostrar:</label>
	       <form:select path="mostrar" id="mostrar" class="input form-control">
	      <form:option value="si">Si</form:option>
	      <form:option value="no">No</form:option>
	    </form:select>
	   </div>
		
		<br />
	   <div class="form-group botones">
	    <button class="btn btn-primary boton" type="submit">Crear Evento</button>&nbsp;&nbsp;
	    <button class="btn btn-danger boton" type="reset">Reset</button>
	   </div>
	
	  </form:form>
    </div>
    <div class="col-md-4">
    <!-- input id="pac-input" class="controls" type="text" placeholder="Bucar..."-->
	<div id="locationField">
      <input id="autocomplete" placeholder="Enter your address"
             onFocus="geolocate()" type="text"></input>
    </div>
	<div id="map"></div>
	<table id="address">
      <tr>
        <td class="label">Street address</td>
        <td class="slimField"><input class="field" id="street_number"
              disabled="true"></input></td>
        <td class="wideField" colspan="2"><input class="field" id="route"
              disabled="true"></input></td>
      </tr>
      <tr>
        <td class="label">City</td>
        <!-- Note: Selection of address components in this example is typical.
             You may need to adjust it for the locations relevant to your app. See
             https://developers.google.com/maps/documentation/javascript/examples/places-autocomplete-addressform
        -->
        <td class="wideField" colspan="3"><input class="field" id="locality"
              disabled="true"></input></td>
      </tr>
      <tr>
        <td class="label">State</td>
        <td class="slimField"><input class="field"
              id="administrative_area_level_1" disabled="true"></input></td>
        <td class="label">Zip code</td>
        <td class="wideField"><input class="field" id="postal_code"
              disabled="true"></input></td>
      </tr>
      <tr>
        <td class="label">Country</td>
        <td class="wideField" colspan="3"><input class="field"
              id="country" disabled="true"></input></td>
      </tr>
    </table>
    </div>
    
   </div>
 </div>

<br />
 
<%@ include file="_footer.jsp" %>
 
 
 
 
 
 
 
 