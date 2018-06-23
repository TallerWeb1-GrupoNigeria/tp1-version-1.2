<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<%@ include file="_header.jsp" %>
<%@ include file="_menuAdmin.jsp" %>



<div class="py-2">
    <div class="container">
      <div class="row">
        
        <div class="col-md-6">
          
			<form:form class="" modelAttribute="keyEvento">
				
				<fieldset disabled>
				<div class="form-group">
			    	<label>ID:</label>
	   				<form:input path="id" type="text" id="id" class="input form-control" placeholder="${ evento.getId() }"/>
				</div>
				
				<div class="form-group">
				 	<label>Nombre del Evento:</label>
				    <form:input path="nombre" type="text" id="nombre" class="input form-control" placeholder="${ evento.getNombre() }"/>
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
			    	<label>Descripcion:</label>
			       <form:input path="descripcion" type="text" id="descripcion" class="input form-control" placeholder="${ evento.getDescripcion() }"/>
			   </div>
			   
			    <div class="form-group">
			    	<label>Imagen:</label> 
			        <form:input path="imagen" type="text" id="imagen" name="imagen" class="input form-control" placeholder="${ evento.getImagen() }"/>
			    </div> 
	   			
	   			<div class="form-group">
			    	<label>Mostrar:</label>
			       <form:input path="mostrar" type="text" id="mostrar" class="input form-control" placeholder="${ evento.getMostrar() }"/>
			   </div>
			   
			   </fieldset>
	
	  		</form:form>
        
        </div>
        
        <div class="col-md-6">
          	<img class="img-fluid d-block my-2" src="img/${ keyEvento.getImagen() }" alt="imagen_evento">
          	<img class="d-block img-fluid" alt="mapa_del_evento" src="https://maps.googleapis.com/maps/api/staticmap?key=AIzaSyDW8nO9JhT_pEjebobq9pgUF2cEp0EUb1I&amp;markers=New+York+City&amp;center=New+York+City&amp;zoom=12&amp;size=640x480&amp;sensor=false">
        </div>
      </div>
      <div>
      		<h4><a href="./homeAdmin">Volver a la lista</a></h4>
      </div>
    </div>
  </div>
  
  
  
  <br/>
  


<%@ include file="_footer.jsp" %>