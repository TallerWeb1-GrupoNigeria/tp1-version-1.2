package ar.edu.unlam.tallerweb1.controladores;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.UbicacionJson;
import ar.edu.unlam.tallerweb1.servicios.ServicioEvento;

@Controller
public class ControladorMapa {

	@Inject
	private ServicioEvento servicioEvento;
	
	@RequestMapping(path = "/inicioHome2",method=RequestMethod.POST)
	public ModelAndView inicioPost(@RequestBody UbicacionJson ubicacion) {
		
//		ModelMap model = new ModelMap();
//		model.put("keyListarEventos", servicioEvento.listarEventosService());
//		
//		Evento e1 = new Evento("evento json", "", "20/12/2019", "12:00", "02:00", null,null , null, null, null, null, null, null, null, null , null, "si");
		
		System.out.println("dire:"+ubicacion.getFormatted_address());
		return new ModelAndView ("inicio",new ModelMap());
	}


}
