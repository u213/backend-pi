package entity;

public class LibroRegistroTitulo {
private Integer idLibroTitulo;
	private String nombre;
	
	
	public LibroRegistroTitulo(Integer idLibroTitulo, String nombre) {
		super();
		this.idLibroTitulo = idLibroTitulo;
		this.nombre = nombre;
	}


	@Override
	public String toString() {
		return "LibroRegistroTitulo [idLibroTitulo=" + idLibroTitulo + ", nombre=" + nombre + "]";
	}


	public Integer getIdLibroTitulo() {
		return idLibroTitulo;
	}


	public void setIdLibroTitulo(Integer idLibroTitulo) {
		this.idLibroTitulo = idLibroTitulo;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
	
	
}
