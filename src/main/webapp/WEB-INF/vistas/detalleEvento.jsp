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
				
				<table class="table">
					<tr>
						<td>ID:</td>
						<td class="font-weight-bold">${ keyEvento.getId() }</td>
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
						<td>Descripcion:</td>
						<td class="font-weight-bold">${ keyEvento.getDescripcion() }</td>
					</tr>
					<tr>
						<td>Nombre Img:</td>
						<td class="font-weight-bold">${ keyEvento.getImagen() }</td>
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