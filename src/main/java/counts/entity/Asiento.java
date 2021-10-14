package counts.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;



@Entity
@Table(name="asiento")
public class Asiento {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="idasiento")
	private Integer idAsiento;
	
    @Column(name="numeroasiento")
	private String numeroAsiento;
    
    @Column    
	private String fecha;
    @Column
	private String glosa;
    
    @Column(name="libroregistro")
	private String libroRegistro;
    
    @Column(name="documentocomprobante")
	private String documentoComprobante;   //en el web habra una lista para escoger
    
    @ManyToOne
    @JoinColumn(name = "librodiarioid")
	private LibroDiario  libroDiarioId;

	public Asiento() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Asiento(Integer idAsiento, /*String numeroAsiento,*/ String fecha, String glosa, String libroRegistro,
			String documentoComprobante, LibroDiario libroDiarioId) {
		super();
		this.idAsiento = idAsiento;
		//this.numeroAsiento = numeroAsiento;
		this.fecha = fecha;
		this.glosa = glosa;
		this.libroRegistro = libroRegistro;
		this.documentoComprobante = documentoComprobante;
		this.libroDiarioId = libroDiarioId;
	}

	public Integer getIdAsiento() {
		return idAsiento;
	}

	public void setIdAsiento(Integer idAsiento) {
		this.idAsiento = idAsiento;
	}

	public String getNumeroAsiento() {
		return numeroAsiento;
	}

	public void setNumeroAsiento(String numeroAsiento) {
		this.numeroAsiento = numeroAsiento;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getGlosa() {
		return glosa;
	}

	public void setGlosa(String glosa) {
		this.glosa = glosa;
	}

	public String getLibroRegistro() {
		return libroRegistro;
	}

	public void setLibroRegistro(String libroRegistro) {
		this.libroRegistro = libroRegistro;
	}

	public String getDocumentoComprobante() {
		return documentoComprobante;
	}

	public void setDocumentoComprobante(String documentoComprobante) {
		this.documentoComprobante = documentoComprobante;
	}

	public LibroDiario getLibroDiarioId() {
		return libroDiarioId;
	}

	public void setLibroDiarioId(LibroDiario libroDiarioId) {
		this.libroDiarioId = libroDiarioId;
	}

	@Override
	public String toString() {
		return "Asiento [idAsiento=" + idAsiento + ", numeroAsiento=" + numeroAsiento + ", fecha=" + fecha + ", glosa="
				+ glosa + ", libroRegistro=" + libroRegistro + ", documentoComprobante=" + documentoComprobante
				+ ", libroDiarioId=" + libroDiarioId + "]";
	}

    
    
}
