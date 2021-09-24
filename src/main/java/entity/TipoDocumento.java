package entity;

public class TipoDocumento {
	private String idTipoDocumento;
	private String denominacion;
	
	public TipoDocumento(String idTipoDocumento, String denominacion) {
		super();
		this.idTipoDocumento = idTipoDocumento;
		this.denominacion = denominacion;
	}

	@Override
	public String toString() {
		return "TipoDocumento [idTipoDocumento=" + idTipoDocumento + ", denominacion=" + denominacion + "]";
	}

	public String getIdTipoDocumento() {
		return idTipoDocumento;
	}

	public void setIdTipoDocumento(String idTipoDocumento) {
		this.idTipoDocumento = idTipoDocumento;
	}

	public String getDenominacion() {
		return denominacion;
	}

	public void setDenominacion(String denominacion) {
		this.denominacion = denominacion;
	}
	
	
	
}
