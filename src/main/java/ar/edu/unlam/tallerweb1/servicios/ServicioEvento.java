package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.modelo.Usuario;

public interface ServicioEvento {

	public void crearEventoService(Evento evento);
	public List<Evento> listarEventosService();
	public void actualizarEventoService(Evento evento);
	public List<Evento> buscarEventosService(String dato);
	public Evento buscarEventoPorIdService(Long id);
	public void agregarUsuarioAEventoService(Evento evento, Usuario usuario);
	
}
