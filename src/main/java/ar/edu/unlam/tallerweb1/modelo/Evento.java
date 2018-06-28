package ar.edu.unlam.tallerweb1.modelo;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Evento {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	
	private String nombre;
	private String descripcion;
	private String fecha;
	private String horaInicio; //
	private String horaFin; //
	private String direccion;
	private String telefono; //
	private String imagen1;
	private String imagen2;
	private String imagen3;
	private String correo;   //
	private String facebook;
	private String twitter;
	private String instagram;
	private String mostrar;
	
	@OneToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER)			// RELACION CON LOCALIZACION
	@JoinColumn(name="localizacion_id")
	private Localizacion localizacion;
	
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	@JoinColumn(name="evento_id")
	private Carrito carrito;
	
	
	
	// CONSTRUCTORES

	public Evento() {
	}
	
	public Evento(String nombre, String descripcion, String fecha, String horaInicio, String horaFin, String direccion,
			String telefono, String imagen1, String imagen2, String imagen3, String correo, String facebook,
			String twitter, String instagram, String mostrar) {
	
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.fecha = fecha;
		this.horaInicio = horaInicio;
		this.horaFin = horaFin;
		this.direccion = direccion;
		this.telefono = telefono;
		this.imagen1 = imagen1;
		this.imagen2 = imagen2;
		this.imagen3 = imagen3;
		this.correo = correo;
		this.facebook = facebook;
		this.twitter = twitter;
		this.instagram = instagram;
		this.mostrar = mostrar;
	}
	
	
	public Evento(String nombre, String descripcion, String fecha, String horaInicio, String horaFin, String direccion,
			String telefono, String imagen1, String imagen2, String imagen3, String correo, String facebook,
			String twitter, String instagram, String mostrar, Localizacion localizacion, Carrito carrito) {
	
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.fecha = fecha;
		this.horaInicio = horaInicio;
		this.horaFin = horaFin;
		this.direccion = direccion;
		this.telefono = telefono;
		this.imagen1 = imagen1;
		this.imagen2 = imagen2;
		this.imagen3 = imagen3;
		this.correo = correo;
		this.facebook = facebook;
		this.twitter = twitter;
		this.instagram = instagram;
		this.mostrar = mostrar;
		this.localizacion = localizacion;
		this.carrito = carrito;
	}

	
	
	// getters setters
	
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

	public String getHoraInicio() {
		return horaInicio;
	}

	public void setHoraInicio(String horaInicio) {
		this.horaInicio = horaInicio;
	}

	public String getHoraFin() {
		return horaFin;
	}

	public void setHoraFin(String horaFin) {
		this.horaFin = horaFin;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getImagen1() {
		return imagen1;
	}

	public void setImagen1(String imagen1) {
		this.imagen1 = imagen1;
	}

	public String getImagen2() {
		return imagen2;
	}

	public void setImagen2(String imagen2) {
		this.imagen2 = imagen2;
	}

	public String getImagen3() {
		return imagen3;
	}

	public void setImagen3(String imagen3) {
		this.imagen3 = imagen3;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getFacebook() {
		return facebook;
	}

	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}

	public String getTwitter() {
		return twitter;
	}

	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}

	public String getInstagram() {
		return instagram;
	}

	public void setInstagram(String instagram) {
		this.instagram = instagram;
	}

	public String getMostrar() {
		return mostrar;
	}

	public void setMostrar(String mostrar) {
		this.mostrar = mostrar;
	}

	public Localizacion getLocalizacion() {
		return localizacion;
	}

	public void setLocalizacion(Localizacion localizacion) {
		this.localizacion = localizacion;
	}

	public Carrito getCarrito() {
		return carrito;
	}

	public void setCarrito(Carrito carrito) {
		this.carrito = carrito;
	}

	
	
	
	
}
