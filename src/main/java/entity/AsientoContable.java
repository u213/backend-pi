package entity;

public class AsientoContable {

	private String idAsientoContable;
	private Double debe;
private String glosa; 
private Double haber;

private CuentaContable idCuentaContable;
private LibroRegistro idLibroRegistro;
private EntidadP idPersona;

private String moneda;
private String numero;
private String serie;


public AsientoContable(String idAsientoContable, Double debe, String glosa, Double haber,
		CuentaContable idCuentaContable, LibroRegistro idLibroRegistro, EntidadP idPersona, String moneda, String numero,
		String serie) {
	super();
	this.idAsientoContable = idAsientoContable;
	this.debe = debe;
	this.glosa = glosa;
	this.haber = haber;
	this.idCuentaContable = idCuentaContable;
	this.idLibroRegistro = idLibroRegistro;
	this.idPersona = idPersona;
	this.moneda = moneda;
	this.numero = numero;
	this.serie = serie;
}


@Override
public String toString() {
	return "AsientoContable [idAsientoContable=" + idAsientoContable + ", debe=" + debe + ", glosa=" + glosa
			+ ", haber=" + haber + ", idCuentaContable=" + idCuentaContable + ", idLibroRegistro=" + idLibroRegistro
			+ ", idPersona=" + idPersona + ", moneda=" + moneda + ", numero=" + numero + ", serie=" + serie + "]";
}


public String getIdAsientoContable() {
	return idAsientoContable;
}


public void setIdAsientoContable(String idAsientoContable) {
	this.idAsientoContable = idAsientoContable;
}


public Double getDebe() {
	return debe;
}


public void setDebe(Double debe) {
	this.debe = debe;
}


public String getGlosa() {
	return glosa;
}


public void setGlosa(String glosa) {
	this.glosa = glosa;
}


public Double getHaber() {
	return haber;
}


public void setHaber(Double haber) {
	this.haber = haber;
}


public CuentaContable getIdCuentaContable() {
	return idCuentaContable;
}


public void setIdCuentaContable(CuentaContable idCuentaContable) {
	this.idCuentaContable = idCuentaContable;
}


public LibroRegistro getIdLibroRegistro() {
	return idLibroRegistro;
}


public void setIdLibroRegistro(LibroRegistro idLibroRegistro) {
	this.idLibroRegistro = idLibroRegistro;
}


public EntidadP getIdPersona() {
	return idPersona;
}


public void setIdPersona(EntidadP idPersona) {
	this.idPersona = idPersona;
}


public String getMoneda() {
	return moneda;
}


public void setMoneda(String moneda) {
	this.moneda = moneda;
}


public String getNumero() {
	return numero;
}


public void setNumero(String numero) {
	this.numero = numero;
}


public String getSerie() {
	return serie;
}


public void setSerie(String serie) {
	this.serie = serie;
}



///
}
