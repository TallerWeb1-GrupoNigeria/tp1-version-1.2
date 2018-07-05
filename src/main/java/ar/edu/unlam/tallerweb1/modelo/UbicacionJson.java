package ar.edu.unlam.tallerweb1.modelo;

public class UbicacionJson {
	private String formatted_address;
	private long latitud;
	private long longitud;
	
	

	public UbicacionJson() {
		super();
	}
	public String getFormatted_address() {
		return formatted_address;
	}
	public void setFormatted_address(String formatted_address) {
		this.formatted_address = formatted_address;
	}
	public long getLatitud() {
		return latitud;
	}
	public void setLatitud(long latitud) {
		this.latitud = latitud;
	}
	public long getLongitud() {
		return longitud;
	}
	public void setLongitud(long longitud) {
		this.longitud = longitud;
	}
	
	
}
