
<%@ include file="_header.jsp" %>
<%-- <%@ include file="_menuAdmin.jsp" %> --%>

  
  <div class="py-2">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <table class="table">
           
            <thead>
              <tr>
              	<th>ID</th>
                <th>EVENTO</th>
                <th>ACCIONES</th>
                

              </tr>
            </thead>
            
            <tbody>
            	<c:forEach items="${ keyListadoEventos }" var="evento">
            		<tr>
  
		            	<td class="align-middle">${ evento.getId() }</td>
		                <td class="align-middle">${ evento.getNombre() }</td>
		                <td class="align-middle">
		                	<a href="detalleEvento?id=${ evento.getId() }">Detalle</a>
		                	<a href="quitarEvento?id=${ evento.getId() }">Quitar </a>|
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
 
 
 