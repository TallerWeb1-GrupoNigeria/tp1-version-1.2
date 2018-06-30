package ar.edu.unlam.tallerweb1.modelo;

public class Persona {
	private String  nom;
	private String  ape;
	private int edad;
	
	
	// contructores
	
	public Persona() {
		super();
	}
	

	public Persona(String nom, String ape, int edad) {
		super();
		this.nom = nom;
		this.ape = ape;
		this.edad = edad;
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
	
	public int sumaEdad() {
		int resultado  = this.edad+1;
		return resultado;
	}
	
	public static void testPersona() {
		Persona p1= new Persona("Rober", "ape", 21);
		System.out.println(p1.getApe() +", "+ p1.getNom());
		
	}
}
