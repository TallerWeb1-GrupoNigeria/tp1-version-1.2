
<%@ include file="_header.jsp" %>
<%@ include file="_menuAdmin.jsp" %>

  
  <div class="py-2">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <table class="table">
           
            <thead>
              <tr>
              	<th>ID</th>
                <th>Nombre</th>
                <th>Descripcion</th>
                <th>Fecha</th>
                <th>Hora</th>
                <th>Direccion</th>
                <th>Imagen</th>
                <th>Mostrar</th>
                <th>Acciones</th>
              </tr>
            </thead>
            
            <tbody>
            	<c:forEach items="${ keyListarEventos }" var="evento">
            		<tr>
            			<td>${ evento.getId() }</td>
		            	<td>${ evento.getNombre() }</td>
		                <td>${ evento.getDescripcion() }</td>
		                <td>${ evento.getFecha() }</td>
		                <td>${ evento.getHora() }</td>
		                <td>${ evento.getDireccion() }</td>
		                <td>${ evento.getImagen() }</td>
		                <td>${ evento.getMostrar() }</td>
		                <td>
		                	<a href="actualizarEvento/${ evento.getId() }">Modificar </a>|
		                	<a href="#">Detalle</a>
		                </td>
	                </tr>
            	</c:forEach>
            </tbody>
            
          </table>
        </div>
      </div>
    </div>
  </div>

  
 <%@ include file="_footer.jsp" %>