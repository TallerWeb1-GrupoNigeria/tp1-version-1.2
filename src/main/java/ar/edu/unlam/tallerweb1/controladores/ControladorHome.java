package ar.edu.unlam.tallerweb1.controladores;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.modelo.Prestacion;
import ar.edu.unlam.tallerweb1.servicios.ServicioEvento;
import ar.edu.unlam.tallerweb1.servicios.ServicioPrestacion;

@Controller
public class ControladorHome {

	

	@Inject
	private ServicioPrestacion servicioPrestacion;
	@Inject
	private ServicioEvento servicioEvento;
	
	@RequestMapping(path = "/inicioHome")
	public ModelAndView inicio(@ModelAttribute("evento") Evento evento,
								@ModelAttribute("prestaciones") Prestacion prestaciones) {
		
		ModelMap model = new ModelMap();
		model.put("keyListarEventos", servicioEvento.listarEventosService());
		model.put("keySelectPrestaciones", servicioPrestacion.listarPrestacionService());
		return new ModelAndView ("inicio",model);
	}

	@RequestMapping(path = "/filtros-Busqueda", method = RequestMethod.POST)
	public ModelAndView validarLogin(@ModelAttribute("evento") Evento evento) {
		ModelMap model = new ModelMap();
		
		 List<Evento> ResultadoDeEventos = servicioEvento.buscarEventosService(evento.getNombre());
		 model.put("keyListarEventos", ResultadoDeEventos);
		return new ModelAndView("inicio", model);
	}

}
