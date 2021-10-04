package entity;
import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="tipoDocumento")
public class TipoDocumento {
	
	@Id
	private String idTipoDocumento;
	@Column
	private String denominacion;
	
	
	
	public TipoDocumento() {
		super();
		// TODO Auto-generated constructor stub
	}

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
