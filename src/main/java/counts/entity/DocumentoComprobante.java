package counts.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="documentocomprobante")
public class DocumentoComprobante {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY )
	@Column(name ="iddocumentocomprobante")
	private Integer id;
	@Column
	private String codigo;
	@Column
	private String denominacion;
	public DocumentoComprobante() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DocumentoComprobante(Integer id, String codigo, String denominacion) {
		super();
		this.id = id;
		this.codigo = codigo;
		this.denominacion = denominacion;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	
	
	
}
