package ar.edu.unlam.tallerweb1.modelo;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;


@Entity
public class EventoPrearmado {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@OneToMany
	private List<Evento> listaDeEventos;

	public List<Evento> getListaDeEventos() {
		return listaDeEventos;
	}

	public void setListaDeEventos(Evento listaDeEventos) {
		this.listaDeEventos.add(listaDeEventos);
	}

}
