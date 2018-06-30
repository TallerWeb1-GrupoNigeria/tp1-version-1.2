package ar.edu.unlam.tallerweb1.modelo;

public class Persona {
	private String  nom;
	private String  ape;
	private int edad;
	private  String email;
	private Boolean esMasculino;
	
	// contructores

	public Persona() {
		super();
	}
	
	public Persona(String nom, String ape, int edad, String email, Boolean esMasculino) {
		super();
		this.nom = nom;
		this.ape = ape;
		this.edad = edad;
		this.email = email;
		this.esMasculino = esMasculino;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getApe() {
		return ape;
	}

	public void setApe(String ape) {
		this.ape = ape;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}

	public Boolean getEsMasculino() {
		return esMasculino;
	}

	public void setEsMasculino(Boolean esMasculino) {
		this.esMasculino = esMasculino;
	}

	public int sumaEdad() {
		return this.edad+1;
		
	}
	
	public static void testPersona() {
		Persona p1= new Persona("Rober", "ape", 21, "",true);
		System.out.println(p1.getApe() +", "+ p1.getNom());
		
	}
}
