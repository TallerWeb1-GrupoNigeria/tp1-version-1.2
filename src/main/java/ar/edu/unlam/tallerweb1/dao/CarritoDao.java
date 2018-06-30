package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Carrito;
import ar.edu.unlam.tallerweb1.modelo.Evento;

public interface CarritoDao {

	public void crearCarrito(Carrito carrito);
	public void agregarEventoAlCarrito(Carrito carrito, Evento evento);
	public List<Evento> listarEventosDelCarrito();
	public void quitarEventoDelCarrito(Carrito carrito, Evento evento);
	
}
