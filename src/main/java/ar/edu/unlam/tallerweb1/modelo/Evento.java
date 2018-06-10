package ar.edu.unlam.tallerweb1.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Evento {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	
	private String nombre;
	private String descripcion;
	private String fecha;
	private String hora;
	private String direccion;
	private String imagen;
	private String mostrar;
	
	

	
	public Evento() {
	}

	public Evento(String nombre, String descripcion, String fecha, String hora, String direccion, String imagen,
			String mostrar) {

		this.nombre = nombre;
		this.descripcion = descripcion;
		this.fecha = fecha;
		this.hora = hora;
		this.direccion = direccion;
		this.imagen = imagen;
		this.mostrar = mostrar;
	}

	
	
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public String getMostrar() {
		return mostrar;
	}

	public void setMostrar(String mostrar) {
		this.mostrar = mostrar;
	}
	
	
	
	
	
	
	
}
