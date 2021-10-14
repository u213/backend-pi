package counts.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="cuentacontable")	
public class CuentaContable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idcuentacontable")
	private Integer idCuentaContable;
    
    @Column(unique = true, length = 10)
	private String cuenta;
    @Column(length = 200)
	private String denominacion;
    @Column
	private Integer digitos;
    @Column(length = 1, name="nivelcuenta")
	private String nivelCuenta;
    @Column(length = 20, name="tipocuenta")
	private String tipoCuenta;
    @Column(length = 20)	
	private String estructura;
    
    
	public CuentaContable() {
		super();
		// TODO Auto-generated constructor stub
	}


	public CuentaContable(int idCuentaContable, String cuenta, String denominacion, Integer digitos, String nivelCuenta,
			String tipoCuenta, String estructura) {
		super();
		this.idCuentaContable = idCuentaContable;
		this.cuenta = cuenta;
		this.denominacion = denominacion;
		this.digitos = digitos;
		this.nivelCuenta = nivelCuenta;
		this.tipoCuenta = tipoCuenta;
		this.estructura = estructura;
	}


	public int getIdCuentaContable() {
		return idCuentaContable;
	}


	public void setIdCuentaContable(Integer idCuentaContable) {
		this.idCuentaContable = idCuentaContable;
	}


	public String getCuenta() {
		return cuenta;
	}


	public void setCuenta(String cuenta) {
		this.cuenta = cuenta;
	}


	public String getDenominacion() {
		return denominacion;
	}


	public void setDenominacion(String denominacion) {
		this.denominacion = denominacion;
	}


	public Integer getDigitos() {
		return digitos;
	}


	public void setDigitos(Integer digitos) {
		this.digitos = digitos;
	}


	public String getNivelCuenta() {
		return nivelCuenta;
	}


	public void setNivelCuenta(String nivelCuenta) {
		this.nivelCuenta = nivelCuenta;
	}


	public String getTipoCuenta() {
		return tipoCuenta;
	}


	public void setTipoCuenta(String tipoCuenta) {
		this.tipoCuenta = tipoCuenta;
	}


	public String getEstructura() {
		return estructura;
	}


	public void setEstructura(String estructura) {
		this.estructura = estructura;
	}


	@Override
	public String toString() {
		return "CuentaContable [idCuentaContable=" + idCuentaContable + ", cuenta=" + cuenta + ", denominacion="
				+ denominacion + ", digitos=" + digitos + ", nivelCuenta=" + nivelCuenta + ", tipoCuenta=" + tipoCuenta
				+ ", estructura=" + estructura + "]";
	}


	
}
