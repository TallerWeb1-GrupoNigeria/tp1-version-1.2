package ar.edu.unlam.tallerweb1.dao;

import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.modelo.Carrito;
import ar.edu.unlam.tallerweb1.modelo.Evento;


@SuppressWarnings("unchecked")
@Service
public class CarritoDaoImpl implements CarritoDao {

	@Inject
	private SessionFactory sessionFactory;
	
	
	// CREAR CARRITO
	@Transactional
	@Override
	public void crearCarrito(Carrito carrito) {
		Session session = sessionFactory.getCurrentSession();
		session.save(carrito);
	}
	
	
	// AGREGAR EVENTO AL CARRITO
	@Transactional
	@Override
	public void agregarEventoAlCarrito(Carrito carrito, Evento evento) {
		Session session = sessionFactory.getCurrentSession();
		
		List<Evento> eventoAgregado = new ArrayList<Evento>();
		eventoAgregado.add(evento);
		carrito.setEvento(eventoAgregado);
		session.save(carrito);
	}

	
	// LISTAR CARRITO
	@Transactional
	@Override
	public List<Evento> listarEventosDelCarrito(){
		Session session = sessionFactory.getCurrentSession();
		List<Evento> resultado = session.createCriteria(Evento.class).list();
		return resultado;
	}
	
	
	// QUITAR EVENTO DEL CARRITO
	@Transactional
	@Override
	public void quitarEventoDelCarrito(Carrito carrito, Evento evento) {
		Session session = sessionFactory.getCurrentSession();
		
		List<Evento> eventoQuitado = new ArrayList<Evento>();
		eventoQuitado.remove(evento);
		carrito.setEvento(eventoQuitado);
		session.save(carrito);
	}

	
	
}
