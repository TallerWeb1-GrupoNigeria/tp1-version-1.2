
<%@ include file="_header.jsp" %>
<%-- <%@ include file="_menuAdmin.jsp" %> --%>

  
  <div class="py-2">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <table class="table">
           
            <thead>
              <tr>
              	<th>Id Carrito</th>
                <th>Usuario</th>
                <th>Acciones</th>
                

              </tr>
            </thead>
            
            <tbody>
            	<c:forEach items="${ keyListadoEventos }" var="carrito">
            		<tr>
  
		            	<td class="align-middle">${ carrito.getId() }</td>
		                <td class="align-middle">${ carrito.usuario.getId() }</td>
		                <td class="align-middle">
		                	<a href="detalleEvento?id=${ carrito.getId() }">Detalle</a>
		                	<a href="quitarEvento?id=${ carrito.getId() }">Quitar </a>|
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
 
 
 