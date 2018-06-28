package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import ar.edu.unlam.tallerweb1.dao.CarritoDao;
import ar.edu.unlam.tallerweb1.modelo.Carrito;
import ar.edu.unlam.tallerweb1.modelo.Evento;

@Service
public class ServicioCarritoImpl implements ServicioCarrito {

	
	@Inject
	private CarritoDao carritoDao;
	
	
	@Override
	public void crearCarritoService(Carrito carrito) {
		carritoDao.crearCarrito(carrito);;
	}

	@Override
	public void agregarEventoAlCarritoService(Carrito carrito, Evento evento) {
		carritoDao.agregarEventoAlCarrito(carrito, evento);
	}
	
	
	@Override
	public List<Evento> listarEventosDelCarritoService() {
		return carritoDao.listarEventosDelCarrito();
	}
	
	@Override
	public void quitarEventoDelCarritoService(Carrito carrito, Evento evento) {
		carritoDao.quitarEventoDelCarrito(carrito, evento);
	}

	
	
}
