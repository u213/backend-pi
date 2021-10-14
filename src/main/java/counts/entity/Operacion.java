package counts.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "operacion")
public class Operacion {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="idoperacion")
	private Integer idOperacion ;
		
	@Column
	private Integer correlacion;	
	@Column
	private Double debe;
	@Column
	private Double haber;
	
	@ManyToOne
	@JoinColumn(name="asientoid")
	private Asiento asientoId;
	
	@OneToOne
	@JoinColumn(name="cuentacontableid")
	private CuentaContable cuentaContable;
	
	public Operacion() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Operacion(Integer idOperacion, Integer correlacion, Double debe, Double haber, Asiento asientoId,
			CuentaContable cuentaContable) {
		super();
		this.idOperacion = idOperacion;
		this.correlacion = correlacion;
		this.debe = debe;
		this.haber = haber;
		this.asientoId = asientoId;
		this.cuentaContable = cuentaContable;
	}

	public Integer getIdOperacion() {
		return idOperacion;
	}

	public void setIdOperacion(Integer idOperacion) {
		this.idOperacion = idOperacion;
	}

	public Integer getCorrelacion() {
		return correlacion;
	}

	public void setCorrelacion(Integer correlacion) {
		this.correlacion = correlacion;
	}

	public Double getDebe() {
		return debe;
	}

	public void setDebe(Double debe) {
		this.debe = debe;
	}

	public Double getHaber() {
		return haber;
	}

	public void setHaber(Double haber) {
		this.haber = haber;
	}

	public Asiento getAsientoId() {
		return asientoId;
	}

	public void setAsientoId(Asiento asientoId) {
		this.asientoId = asientoId;
	}

	public CuentaContable getCuentaContable() {
		return cuentaContable;
	}

	public void setCuentaContable(CuentaContable cuentaContable) {
		this.cuentaContable = cuentaContable;
	}

	@Override
	public String toString() {
		return "Operacion [idOperacion=" + idOperacion + ", correlacion=" + correlacion + ", debe=" + debe + ", haber="
				+ haber + ", asientoId=" + asientoId + ", cuentaContable=" + cuentaContable + "]";
	}

	
	
	
	
	
}
