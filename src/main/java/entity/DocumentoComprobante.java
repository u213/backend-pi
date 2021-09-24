package entity;

public class DocumentoComprobante {
	private String idCodigo;
	private String nombre;
	
	@Override
	public String toString() {
		return "DocumentoComprobante [idCodigo=" + idCodigo + ", nombre=" + nombre + "]";
	}

	public DocumentoComprobante(String idCodigo, String nombre) {
		super();
		this.idCodigo = idCodigo;
		this.nombre = nombre;
	}

	public String getIdCodigo() {
		return idCodigo;
	}

	public void setIdCodigo(String idCodigo) {
		this.idCodigo = idCodigo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
	
}
