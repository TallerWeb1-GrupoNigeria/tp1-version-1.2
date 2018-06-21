package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Evento;

public interface EventoPrearmadoDao {
	
	public List<Evento> listaEventosIncluidos();
	public void agregarEvento(Evento evento);
	public List<Evento> buscarEvento(String dato);

}
