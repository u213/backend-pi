package counts.entity;
import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;




@Entity
@Table(name= "entidadP")
public class EntidadP {
	@Id
	private String idEntidadP; 
	@OneToOne
	@JoinColumn(name="tipoDocumentoId")
	private TipoDocumento tipoDocumento;
	@Column
	private String denominacion;
	@Column
	private String direccion;
	@Column
	private String email ;
	@Column
	private String afiliado;
	@Column
	private String detraccion;
	@Column
	private String nota ;
	
	public EntidadP() {
		super();
		// TODO Auto-generated constructor stub
	}

	public EntidadP(String idEntidadP, TipoDocumento tipoDocumento, String denominacion, String direccion, String email,
			String afiliado, String detraccion, String nota) {
		super();
		this.idEntidadP = idEntidadP;
		this.tipoDocumento = tipoDocumento;
		this.denominacion = denominacion;
		this.direccion = direccion;
		this.email = email;
		this.afiliado = afiliado;
		this.detraccion = detraccion;
		this.nota = nota;
	}

	public String getIdEntidadP() {
		return idEntidadP;
	}

	public void setIdEntidadP(String idEntidadP) {
		this.idEntidadP = idEntidadP;
	}

	public TipoDocumento getTipoDocumento() {
		return tipoDocumento;
	}

	public void setTipoDocumento(TipoDocumento tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}

	public String getDenominacion() {
		return denominacion;
	}

	public void setDenominacion(String denominacion) {
		this.denominacion = denominacion;
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

	public String getAfiliado() {
		return afiliado;
	}

	public void setAfiliado(String afiliado) {
		this.afiliado = afiliado;
	}

	public String getDetraccion() {
		return detraccion;
	}

	public void setDetraccion(String detraccion) {
		this.detraccion = detraccion;
	}

	public String getNota() {
		return nota;
	}

	public void setNota(String nota) {
		this.nota = nota;
	}

	@Override
	public String toString() {
		return "EntidadP [idEntidadP=" + idEntidadP + ", tipoDocumento=" + tipoDocumento + ", denominacion="
				+ denominacion + ", direccion=" + direccion + ", email=" + email + ", afiliado=" + afiliado
				+ ", detraccion=" + detraccion + ", nota=" + nota + "]";
	}


	
	
}
