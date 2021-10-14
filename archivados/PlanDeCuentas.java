package counts.entity;

public class PlanDeCuentas {

	private int idCuentaContable;
	private String denominacion;
	private String estructura;
	
	public PlanDeCuentas(int idCuentaContable, String denominacion, String estructura) {
		super();
		this.idCuentaContable = idCuentaContable;
		this.denominacion = denominacion;
		this.estructura = estructura;
	}

	
	
	@Override
	public String toString() {
		return "PlanDeCuentas [idCuentaContable=" + idCuentaContable + ", denominacion=" + denominacion
				+ ", estructura=" + estructura + "]";
	}



	public int getIdCuentaContable() {
		return idCuentaContable;
	}

	public void setIdCuentaContable(int idCuentaContable) {
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
	
	
	
}

