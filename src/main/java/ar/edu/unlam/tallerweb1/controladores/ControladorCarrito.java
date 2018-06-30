package ar.edu.unlam.tallerweb1.controladores;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Carrito;
import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.servicios.ServicioCarrito;
import ar.edu.unlam.tallerweb1.servicios.ServicioEvento;



@Controller
public class ControladorCarrito {

	@Inject
	private ServicioCarrito servicioCarrito;
	
	@Inject
	private ServicioEvento servicioEvento;
	
	Carrito carrito = new Carrito();
	
	
	// LISTADO carrito
	@RequestMapping(path="/misEventos")
	public ModelAndView misEventos(){ 
		
		ModelMap model = new ModelMap();
		model.put("keyCarrito", servicioCarrito.listarEventosDelCarritoService());
		
		return new ModelAndView("misEventos",model);
	 }
	
	
	
	// Agregar carrito
	@RequestMapping(path = "/agregarEventoAlCarrito")
	public ModelAndView agregarEventoAlCarrito(@RequestParam("id") Long id) {
		
		Evento evento = servicioEvento.buscarEventoPorIdService(id);
		servicioCarrito.crearCarritoService(carrito);
		ModelMap model = new ModelMap();
		
		servicioCarrito.agregarEventoAlCarritoService(carrito, evento);
		model.put("keyListadoEventos", servicioCarrito.listarEventosDelCarritoService());
		
		return new ModelAndView ("misEventos",model);
	}
	
	
}
