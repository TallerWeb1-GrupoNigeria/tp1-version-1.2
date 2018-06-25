<%@ include file="_header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-select.min.css">

<script src="js/bootstrap-select.min.js" defer></script>

	<div class="py-2">
    	<div class="container">
			<div class="row">

				<!-- CARROUSEL -->

				<div class="col-md-8">
					<div id="carousel" class="carousel slide" data-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img class="d-block img-fluid w-100" src="img/carousel-img1.jpg">
								<div class="carousel-caption">
									<h3>First slide label</h3>
									<p>Duerme todo el día, ve de fiesta toda la noche, nunca envejezcas, nunca mueras.</p>
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid w-100" src="img/carousel-img2.jpg">
								<div class="carousel-caption">
									<h3>Second slide label</h3>
									<p>Las aventuras comienzan cuando estás dispuesto a celebrar.</p>
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid w-100" src="img/carousel-img3.jpg">
								<div class="carousel-caption">
									<h3>Second slide label</h3>
									<p>Las aventuras comienzan cuando estás dispuesto a celebrar.</p>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev"> 
							<span class="carousel-control-prev-icon"></span>
							<span class="sr-only">Anterior</span>
						</a> 
						<a class="carousel-control-next" href="#carousel" role="button" data-slide="next"> 
							<span class="carousel-control-next-icon"></span>
							<span class="sr-only">Siguente</span>
						</a>
					</div>
				</div>

				<!-- BANNER LADO DERECHO -->
				<div class="col-md-4">
					<h3>Dónde vas a salir hoy ?</h3>
					<input id="pac-input" class="controls" type="text" placeholder="Bucar...">
					<div id="map"></div>
					
					<!--div class="blockquote">
						<p class="mb-0">Blockquoute</p>
						<div class="blockquote-footer">Someone famous in My memories</div>
					</div>
					<div class="blockquote">
						<p class="mb-0">Blockquoute</p>
						<div class="blockquote-footer">Someone famous in My memories</div>
					</div>
					<div class="blockquote">
						<p class="mb-0">Blockquoute</p>
						<div class="blockquote-footer">Someone famous in My memories</div>
					</div-->
				</div>
				
			</div>
<!-- ESACIO DEL FILTRO  -->
<div class="row">
	<div class="col-md-4">
		<select class="selectpicker">
		  <option title="Combo 1">Hot Dog, Fries and a Soda</option>
		  <option title="Combo 2">Burger, Shake and a Smile</option>
		  <option title="Combo 3">Sugar, Spice and all things nice</option>
		</select>
	</div>
	<div class="col-md-4">
		<select class="selectpicker" multiple title="Choose one of the following...">
		  <option>Mustard</option>
		  <option>Ketchup</option>
		  <option>Relish</option>
		</select>
	</div>
	<div class="col-md-4">
		<select class="selectpicker" multiple data-selected-text-format="count">
		  <option>Mustard</option>
		  <option>Ketchup</option>
		  <option>Relish</option>
		</select>
	</div>
	
</div>
<div class="row">
	  <nav class="navbar navbar-default" role="navigation">
	    <div class="container-fluid">
	      <div class="navbar-header">
	        <a class="navbar-brand" href="#">Navbar</a>
	      </div>
	
	      <form class="navbar-form navbar-left" role="search">
	        <div class="form-group">
	          <select class="selectpicker" multiple data-live-search="true" data-live-search-placeholder="Search" data-actions-box="true">
	            <optgroup label="filter1">
	              <option>option1</option>
	              <option>option2</option>
	              <option>option3</option>
	              <option>option4</option>
	            </optgroup>
	            <optgroup label="filter2">
	              <option>option1</option>
	              <option>option2</option>
	              <option>option3</option>
	              <option>option4</option>
	            </optgroup>
	            <optgroup label="filter3">
	              <option>option1</option>
	              <option>option2</option>
	              <option>option3</option>
	              <option>option4</option>
	            </optgroup>
	          </select>
	        </div>
	
	        <div class="input-group">
	          <input type="text" class="form-control" placeholder="Search" name="q">
	
	          <div class="input-group-btn">
	            <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
	          </div>
	        </div>
	        <button type="submit" class="btn btn-default">Search</button>
	      </form>
	
	    </div>
	    <!-- .container-fluid -->
	  </nav>
 </div>

<!-- 2 CARDS -->
<!-- LISTA DE EVENTOS  -->
      <div class="row py-2">
      	<c:forEach items="${keyListarEventos}" var="evento">
			
			<!-- SE AGREGO LA FUNCION IF DE 'SI' PARA MOSTRAR Y 'NO' PARA NO MOSTRAR EL EVENTO -->
			<c:if test="${ evento.getMostrar() eq 'si' }">
			 <div class="col-md-4">
			 
			   <div class="card">
			     <img class="card-img-top" src="img/${evento.getImagen()}" alt="Card image cap">
			     <div class="card-body">
			       <h5 class="card-title">${ evento.getNombre() }</h5>
			       <p class="card-text">${ evento.getDescripcion() }</p>
			       <a href="#" class="btn btn-primary">Ir al Evento</a>
			     </div>
			   </div>
			 </div>
			</c:if>
			
		</c:forEach>
        
      </div>
      
      <div class="row">
        <div class="col-md-12">
          <ul class="pagination">
            <li class="page-item">
              <a class="page-link" href="#">
                <span>«</span>
                <span class="sr-only">Previous</span>
              </a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">2</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">3</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">4</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">
                <span>»</span>
                <span class="sr-only">Next</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
      
    </div>
  </div>
  <script>
  document.addEventListener('DOMContentLoaded', function () {
    var mySelect = $('#first-disabled2');

    $('#special').on('click', function () {
      mySelect.find('option:selected').prop('disabled', true);
      mySelect.selectpicker('refresh');
    });

    $('#special2').on('click', function () {
      mySelect.find('option:disabled').prop('disabled', false);
      mySelect.selectpicker('refresh');
    });

    $('#basic2').selectpicker({
      liveSearch: true,
      maxOptions: 1
    });
  });
</script>
  <script src="js/mapas.js"></script>
  <!-- script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKsOyLppGoYEHhTvwny8xDgKj96ZzSIFU&callback=initMap"> </script-->
  <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKsOyLppGoYEHhTvwny8xDgKj96ZzSIFU&libraries=places&callback=initAutocomplete"> </script>

  <%@ include file="_footer.jsp" %>