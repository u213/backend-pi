package counts.entity;

public class LibroRegistro {
	private Integer idLibroTitulo;
	private String idLibroRegistro;
	private String denominacion;
	private String codigoSunat;
	

	
	
	public LibroRegistro(Integer idLibroTitulo, String idLibroRegistro, String denominacion, String codigoSunat) {
		super();
		this.idLibroTitulo = idLibroTitulo;
		this.idLibroRegistro = idLibroRegistro;
		this.denominacion = denominacion;
		this.codigoSunat = codigoSunat;
	}

			
	@Override
	public String toString() {
		return "LibroRegistro [idLibroTitulo=" + idLibroTitulo + ", idLibroRegistro=" + idLibroRegistro
				+ ", denominacion=" + denominacion + ", codigoSunat=" + codigoSunat + "]";
	}





	public Integer getIdLibroTitulo() {
		return idLibroTitulo;
	}

	public void setIdLibroTitulo(Integer idLibroTitulo) {
		this.idLibroTitulo = idLibroTitulo;
	}

	public String getIdLibroRegistro() {
		return idLibroRegistro;
	}

	public void setIdLibroRegistro(String idLibroRegistro) {
		this.idLibroRegistro = idLibroRegistro;
	}

	public String getDenominacion() {
		return denominacion;
	}

	public void setDenominacion(String denominacion) {
		this.denominacion = denominacion;
	}

	public String getCodigoSunat() {
		return codigoSunat;
	}

	public void setCodigoSunat(String codigoSunat) {
		this.codigoSunat = codigoSunat;
	}
	
}
