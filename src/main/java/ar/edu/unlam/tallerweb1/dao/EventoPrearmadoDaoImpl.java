package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import ar.edu.unlam.tallerweb1.modelo.Evento;

public class EventoPrearmadoDaoImpl implements EventoPrearmadoDao {

@Inject
	private SessionFactory sessionFactory;



	@Override
	public List<Evento> listaEventosIncluidos() {
		
		Session session = sessionFactory.getCurrentSession();
		List<Evento> eventosList = session.createCriteria(Evento.class).list();
		return eventosList;
		
	}

	@Override
	public void agregarEvento(Evento evento) {
		Session session = sessionFactory.getCurrentSession();		
		
		session.update(evento);
		
	}

	@Override
	public List<Evento> buscarEvento(String dato) {
		// TODO Auto-generated method stub
		return null;
	}

}
