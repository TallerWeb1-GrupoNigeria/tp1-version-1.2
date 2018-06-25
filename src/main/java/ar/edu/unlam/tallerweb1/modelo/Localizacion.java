package ar.edu.unlam.tallerweb1.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;


@Entity
public class Localizacion {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Long id;
	
	@Column(name="latitud")
	private String latitud;
	
	@Column(name="longitud")
	private String longitud;
	
	@OneToOne(mappedBy="localizacion")			// RELACION CON EVENTO
	private Evento evento;


	
	// CONSTRUCTORES
	
	public Localizacion() {

	}
	
	public Localizacion(String latitud, String longitud) {
		this.latitud = latitud;
		this.longitud = longitud;
	}

	public Localizacion(String latitud, String longitud, Evento evento) {
		this.latitud = latitud;
		this.longitud = longitud;
		this.evento = evento;
	}


	// GET SET
	
	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getLatitud() {
		return latitud;
	}


	public void setLatitud(String latitud) {
		this.latitud = latitud;
	}


	public String getLongitud() {
		return longitud;
	}


	public void setLongitud(String longitud) {
		this.longitud = longitud;
	}


	public Evento getEvento() {
		return evento;
	}


	public void setEvento(Evento evento) {
		this.evento = evento;
	}
	
	
	
	
}
