package entity;

public class Persona {

	private String afiliado;
	private String denominacion;
	private String detraccion;
	private String direccion;
	private String email;
	private Persona idPersona;
	private TipoDocumento idTipoDocumento;
	private String nota;
	
	public Persona(String afiliado, String denominacion, String detraccion, String direccion, String email,
			Persona idPersona, TipoDocumento idTipoDocumento, String nota) {
		super();
		this.afiliado = afiliado;
		this.denominacion = denominacion;
		this.detraccion = detraccion;
		this.direccion = direccion;
		this.email = email;
		this.idPersona = idPersona;
		this.idTipoDocumento = idTipoDocumento;
		this.nota = nota;
	}

	@Override
	public String toString() {
		return "Persona [afiliado=" + afiliado + ", denominacion=" + denominacion + ", detraccion=" + detraccion
				+ ", direccion=" + direccion + ", email=" + email + ", idPersona=" + idPersona + ", idTipoDocumento="
				+ idTipoDocumento + ", nota=" + nota + "]";
	}

	public String getAfiliado() {
		return afiliado;
	}

	public void setAfiliado(String afiliado) {
		this.afiliado = afiliado;
	}

	public String getDenominacion() {
		return denominacion;
	}

	public void setDenominacion(String denominacion) {
		this.denominacion = denominacion;
	}

	public String getDetraccion() {
		return detraccion;
	}

	public void setDetraccion(String detraccion) {
		this.detraccion = detraccion;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Persona getIdPersona() {
		return idPersona;
	}

	public void setIdPersona(Persona idPersona) {
		this.idPersona = idPersona;
	}

	public TipoDocumento getIdTipoDocumento() {
		return idTipoDocumento;
	}

	public void setIdTipoDocumento(TipoDocumento idTipoDocumento) {
		this.idTipoDocumento = idTipoDocumento;
	}

	public String getNota() {
		return nota;
	}

	public void setNota(String nota) {
		this.nota = nota;
	}
	
	
	
	
}
