package ar.edu.unlam.tallerweb1.controladores;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.servicios.ServicioEvento;



@Controller
public class ControladorCarrito {
	
	
	@Inject
	private ServicioEvento servicioEvento;
	
	
	// AGREGAR EVENTO CARRITO
	@RequestMapping(path = "/agregarEventoAlCarrito")
	public ModelAndView agregarEventoAlCarrito(@RequestParam("id") Long id) {
		
		Evento evento = servicioEvento.buscarEventoPorIdService(id);
		Usuario usuarioLogeado = new Usuario(1L,"admin","admin@admin.com","1234","1234","admin");   //TODO :  falta ver como obtener el usuario de sesion actual(logeado)
		
		servicioEvento.agregarUsuarioAEventoService(evento, usuarioLogeado);

		
		return new ModelAndView("redirect:/misEventos");
	}
	
	
	// LISTADO carrito
	@RequestMapping(path="/misEventos")
	public ModelAndView misEventos(){ 
		
		ModelMap model = new ModelMap();
		model.put("keyListadoEventos", servicioEvento.listarEventosService());
		
		return new ModelAndView("misEventos",model);
	 }
	
	
}
