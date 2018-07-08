package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import ar.edu.unlam.tallerweb1.dao.EventoDao;
import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.modelo.Usuario;

@Service
public class ServicioEventoImpl implements ServicioEvento {

	@Inject
	private EventoDao eventoDao;
	
	@Override
	public void crearEventoService(Evento evento) {
		eventoDao.crearEvento(evento);
	}
	
	@Override
	public List<Evento> listarEventosService() {
		return eventoDao.listaEventos();
	}
	
	@Override
	public void actualizarEventoService(Evento evento){
		eventoDao.actualizarEvento(evento);
	}
	
	@Override
	public List<Evento> buscarEventosService(String dato) {
		return eventoDao.buscarEvento(dato);
	}
	
	@Override
	public Evento buscarEventoPorIdService(Long id) {
		return eventoDao.buscarEventoPorId(id);
	}

	
	public void agregarUsuarioAEventoService(Evento evento, Usuario usuario) {
		eventoDao.agregarUsuarioAEvento(evento, usuario);
	}
	
	
	
	
}
