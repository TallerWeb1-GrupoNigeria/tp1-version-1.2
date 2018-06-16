package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Evento;

public interface EventoDao {

	public void crearEvento(Evento evento);
	public List<Evento> listaEventos();
	public void actualizarEvento(Evento evento);
	public List<Evento> buscarEvento(String dato);
	
}
