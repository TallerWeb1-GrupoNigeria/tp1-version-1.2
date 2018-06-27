package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Carrito;
import ar.edu.unlam.tallerweb1.modelo.Evento;

public interface ServicioCarrito {

	public void crearCarritoService(Carrito carrito);
	public void agregarEventoAlCarritoService(Carrito carrito, Evento evento);
	public List<Carrito> listarEventosDelCarritoService();
	public void quitarEventoDelCarritoService(Carrito carrito, Evento evento);
	
}
