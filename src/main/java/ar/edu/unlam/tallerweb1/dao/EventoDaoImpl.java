package ar.edu.unlam.tallerweb1.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.modelo.Usuario;


@SuppressWarnings("unchecked")
@Repository("EventoDao")
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
	public List<Evento> buscarEvento(String ParametroNombre) {
		Session session = sessionFactory.getCurrentSession();
		List<Evento> eventosList = session.createCriteria(Evento.class)
									.add(Restrictions.like("nombre", "%"+ParametroNombre+"%")).list();
		return eventosList;
	}
	

	@Transactional
	@Override
	public Evento buscarEventoPorId(Long id){
		Session session = sessionFactory.getCurrentSession();
		
		return session.get(Evento.class,id); 
	}

	@Override
	public void agregarUsuarioAEvento(Evento evento, Usuario usuario) {
		Session session = sessionFactory.getCurrentSession();

		Set<Usuario> usuarioAgregado = new HashSet<Usuario>();
		usuarioAgregado.add(usuario);
		evento.setUsuarios(usuarioAgregado);
		session.save(evento);
		
	}
	
	
}
