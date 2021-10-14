package counts.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="librodiario")
public class LibroDiario {

	@Id
	@Column(name="idlibrodiario")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idLibroDiario;
	
	@Column(length = 9)
    private String codigo;
	
	@Column(length = 150)
    private String denominacion;
	
	@Column(name="totalhaber")
	private Double totalHaber;
	
	@Column(name="totaldebe")
	private Double totalDebe;
	
	
	
	public LibroDiario() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public LibroDiario(Integer idLibroDiario, String codigo, String denominacion, Double totalHaber, Double totalDebe) {
		super();
		this.idLibroDiario = idLibroDiario;
		this.codigo = codigo;
		this.denominacion = denominacion;
		this.totalHaber = totalHaber;
		this.totalDebe = totalDebe;
	}
	
	
	public Integer getIdLibroDiario() {
		return idLibroDiario;
	}
	public void setIdLibroDiario(Integer idLibroDiario) {
		this.idLibroDiario = idLibroDiario;
	}
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public String getDenominacion() {
		return denominacion;
	}
	public void setDenominacion(String denominacion) {
		this.denominacion = denominacion;
	}
	public Double getTotalHaber() {
		return totalHaber;
	}
	public void setTotalHaber(Double totalHaber) {
		this.totalHaber = totalHaber;
	}
	public Double getTotalDebe() {
		return totalDebe;
	}
	public void setTotalDebe(Double totalDebe) {
		this.totalDebe = totalDebe;
	}
	
	
	@Override
	public String toString() {
		return "LibroDiario [idLibroDiario=" + idLibroDiario + ", codigo=" + codigo + ", denominacion=" + denominacion
				+ ", totalHaber=" + totalHaber + ", totalDebe=" + totalDebe + "]";
	}
	
	
	
}
