package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Evento;

public interface ServicioEvento {

	public void crearEventoService(Evento evento);
	public List<Evento> listarEventosService();
	public void actualizarEventoService(Evento evento);
	public List<Evento> buscarEventosService(String ParametroNombre);
	public Evento buscarEventoPorIdService(Long id);
	
}
