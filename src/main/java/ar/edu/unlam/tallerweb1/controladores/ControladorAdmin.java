package ar.edu.unlam.tallerweb1.controladores;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.servicios.ServicioEvento;

@Controller
public class ControladorAdmin {
	
	@Inject
	private ServicioEvento servicioEvento;

	
	// LISTADO DE TODOS LOS EVENTOS EN EL HOMEADMIN
	@RequestMapping(path="/homeAdmin")
	public ModelAndView homeAdmin(){ 
		
		ModelMap model = new ModelMap();
		model.put("keyListarEventos", servicioEvento.listarEventosService());
		
		return new ModelAndView("homeAdmin",model);
	 }
	
	// FORMULARIO PARA LA CREACION DEL EVENTO
	@RequestMapping(path = "/crearEvento")
	public ModelAndView crearEvento() {
		
		Evento evento = new Evento();
		ModelMap model = new ModelMap();
		model.put("keyEvento", evento);
		
		return new ModelAndView ("crearEvento",model);
	}
	
	// DATOS CARGADOS DEL EVENTO VAN A LA BASE DE DATOS
	@RequestMapping(path="/crearEvento", method= RequestMethod.POST)
	public ModelAndView CargarEventoABD(@ModelAttribute("keyEvento") Evento evento){
		
			servicioEvento.crearEventoService(evento);
			
			return new ModelAndView("redirect:/homeAdmin");
	}
	
	
	
	
	
}
