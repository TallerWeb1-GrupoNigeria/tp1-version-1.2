
<%@ include file="_header.jsp" %>
<%@ include file="_menuAdmin.jsp" %>


 <div class="container" id="contenedor_form">    
	 
	  <br />
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

<br />
 
<%@ include file="_footer.jsp" %>
 
 
 
 
 
 
 
 