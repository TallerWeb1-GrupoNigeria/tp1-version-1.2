package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.modelo.Usuario;

public interface EventoDao {

	public void crearEvento(Evento evento);
	public List<Evento> listaEventos();
	public void actualizarEvento(Evento evento);
	public List<Evento> buscarEvento(String ParametroNombre);
	public Evento buscarEventoPorId(Long id);
	public void agregarUsuarioAEvento(Evento evento, Usuario usuario);
	
}
