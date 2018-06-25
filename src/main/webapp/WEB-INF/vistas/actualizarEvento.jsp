
<%@ include file="_header.jsp" %>
<%@ include file="_menuAdmin.jsp" %>


 <div class="container" id="contenedor_form">    
	 
	  <br />
	  <form:form action="validarActualizarEvento" method="POST" modelAttribute="keyEvento">
	
	   <form:input path="id" type="hidden" id="id" class="input form-control" placeholder="${ evento.getId() }"/>
	
	   <div class="form-group">
	    <label>Nombre del Evento:</label>
	       <form:input path="nombre" type="text" id="nombre" class="input form-control" placeholder="${ evento.getNombre() }"/>
	   </div>

	   <div class="form-group">
	    <label>Descripcion:</label>
	       <form:input path="descripcion" type="text" id="descripcion" class="input form-control" placeholder="${ evento.getDescripcion() }"/>
	   </div>

	    <div class="form-group">
	    <label>Imagen Principal:</label> 
	        <form:input path="imagen" type="text" id="imagen" name="imagen" class="input form-control" placeholder="${ evento.getImagen() }"/>
	    </div> 
	
	   <div class="form-group">
	    <label>Fecha:</label>
	    <form:input path="fecha" type="date" id="fecha" class="input form-control" placeholder="${ evento.getFecha() }"/>
	   </div>
	
	   <div class="form-group">
	    <label>Hora de Inicio:</label>
	       <form:input path="hora" type="text" id="hora" class="input form-control" placeholder="${ evento.getHora() }"/>
	   </div>
	   
	   <div class="form-group">
	    <label>Direccion:</label>
	       <form:input path="direccion" type="text" id="direccion" class="input form-control" placeholder="${ evento.getDireccion() }"/>
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
	    <label>Mostrar:</label>
	       <form:select path="mostrar" id="mostrar" class="input form-control">
	      <form:option value="si">Si</form:option>
	      <form:option value="no">No</form:option>
	    </form:select>
	   </div>
		
		<br />
	   <div class="form-group botones">
	    <button class="btn btn-primary boton" type="submit">Modificar Evento</button>&nbsp;&nbsp;
	    <button class="btn btn-danger boton" type="reset">Resetear</button>
	   </div>
	
	  </form:form>
  
 </div>

<br />
 
<%@ include file="_footer.jsp" %>
 
 
 
 
 
 
 
 