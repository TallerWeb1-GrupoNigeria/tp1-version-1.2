package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.modelo.Evento;

@Service
public class EventoDaoImpl implements EventoDao{

	@Inject
	private SessionFactory sessionFactory;
	
	
	@Transactional
	@Override
	public void crearEventoDAO(Evento evento) {
		Session session = sessionFactory.getCurrentSession();
		session.save(evento);
	}
	
	@Transactional
	@Override
	public List<Evento> listaEventosDAO(){
		Session session = sessionFactory.getCurrentSession();
		List<Evento> resultado = session.createCriteria(Evento.class).list();
		return resultado;
	}

	@Transactional
	@Override
	public void actualizarEventoDAO(Evento evento) {
		Session session = sessionFactory.getCurrentSession();
		evento.setMostrarEvento(mostrar);
	}
	
	
}
