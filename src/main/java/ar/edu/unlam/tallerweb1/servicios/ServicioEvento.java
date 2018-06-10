package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Evento;

public interface ServicioEvento {

	public void crearEventoSERVICE(Evento evento);
	public List<Evento> listarEventosSERVICE();
	public void actualizarEventoSERVICE(Evento evento);
	public List<Evento> buscarEventosSERVICE(String dato);
	
}
