package entity;

public class CuentaContable {
/*los datos del id seran unicos y NO SERAN AUTOMATICOS*/
	private Integer idCuentaContable;
	private String denominacion;
	private String estructura;
	
	@Override
	public String toString() {
		return "CuentaContable [idCuentaContable=" + idCuentaContable + ", denominacion=" + denominacion
				+ ", estructura=" + estructura + "]";
	}

	public CuentaContable(Integer idCuentaContable, String denominacion, String estructura) {
		super();
		this.idCuentaContable = idCuentaContable;
		this.denominacion = denominacion;
		this.estructura = estructura;
	}

	public Integer getIdCuentaContable() {
		return idCuentaContable;
	}

	public void setIdCuentaContable(Integer idCuentaContable) {
		this.idCuentaContable = idCuentaContable;
	}

	public String getDenominacion() {
		return denominacion;
	}

	public void setDenominacion(String denominacion) {
		this.denominacion = denominacion;
	}

	public String getEstructura() {
		return estructura;
	}

	public void setEstructura(String estructura) {
		this.estructura = estructura;
	}
	
	////
	
}
