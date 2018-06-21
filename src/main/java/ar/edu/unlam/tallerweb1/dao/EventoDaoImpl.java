package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.modelo.Evento;


@SuppressWarnings("unchecked")
@Service
public class EventoDaoImpl implements EventoDao{

	@Inject
	private SessionFactory sessionFactory;
	
	
	@Transactional
	@Override
	public void crearEvento(Evento evento) {
		Session session = sessionFactory.getCurrentSession();
		session.save(evento);
	}
	
	@Transactional
	@Override
	public List<Evento> listaEventos(){
		Session session = sessionFactory.getCurrentSession();
		List<Evento> resultado = session.createCriteria(Evento.class).list();
		return resultado;
	}

	@Transactional
	@Override
	public void actualizarEvento(Evento evento) {
		Session session = sessionFactory.getCurrentSession();
		//evento.setMostrarEvento(mostrar);
		session.update(evento);
	}
	
	@Transactional
	@Override
	public List<Evento> buscarEvento(String data) {
		Session session = sessionFactory.getCurrentSession();
		List<Evento> eventosList = session.createCriteria(Evento.class)
									.add(Restrictions.like("nombreEvento", "%"+data+"%")).list();
		return eventosList;
	}
	

	@Transactional
	@Override
	public Evento buscarEventoPorId(Long id){
		Session session = sessionFactory.getCurrentSession();
		
		return session.get(Evento.class,id); 
	}
	
	
}
