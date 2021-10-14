package counts.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import counts.entity.CuentaContable;
import counts.entity.LibroDiario;
import counts.entity.Operacion;

@Repository
public interface OperacionRepository  extends JpaRepository<Operacion, Integer>{

	

	@Query(value = "{call sp_operacion_listar()}", nativeQuery = true)
	public List<Operacion> listOperacion();
	
	
	
	
	
	
	@Transactional
	@Modifying
	@Query(value = "{call sp_operation_save(:_correlacion,:_debe,:_haber,:_cuentacontableid )}", nativeQuery = true)
	void saveOperacion(@Param("_correlacion") Integer _correlacion,
			         @Param("_debe") Double _debe,
			         @Param("_haber") Double _haber,
			         @Param("_cuentacontableid") Integer _cuentacontableid
			         );
	
	
	
	
	
	
	@Transactional
	@Modifying
	@Query(value = "{call sp_operacion_asiento_registrar("
	+ ":_documento,"
	+ ":_fecha,"
	+ ":_glosa,"
	+ ":_libroregistro,"
	+ ":_librodiario_id"
	+ ":_correlacion,"
	+ ":_debe,"
	+ ":_haber,"
	+ ":_cuentacontableid"
	+ ":_eleccion)}", nativeQuery = true)
	void guardarAsientoOperacion(
			    @Param("_documento") String _documento, 
				@Param("_fecha") String _fecha,
				@Param("_glosa") String _glosa,
				@Param("_libroregistro") String _libroregistro, 
				@Param("_librodiario_id") Integer _libroDiario_id,
				@Param("_correlacion") Integer _correlacion,
				@Param("_debe")  Double _debe,
				@Param("_haber") Double  _haber,
				@Param("_cuentacontableid") Integer _cuentacontableid,
				@Param("_eleccion") Integer  _eleccion);
	
	@Transactional
	@Modifying
	@Query(value = "{call sp_operacion_asiento_registrar("
	+ ":_documento,"
	+ ":_fecha,"
	+ ":_glosa,"
	+ ":_libroregistro,"
	+ ":_librodiario_id"
	+ ":_correlacion,"
	+ ":_debe,"
	+ ":_haber,"
	+ ":_cuentacontableid"
	+ ":_eleccion)}", nativeQuery = true)
	void guardarOperaciones(
			    @Param("_documento") String _documento, 
				@Param("_fecha") String _fecha,
				@Param("_glosa") String _glosa,
				@Param("_libroregistro") String _libroregistro, 
				@Param("_librodiario_id") LibroDiario libroDiario,
				@Param("_correlacion") Integer _correlacion,
				@Param("_debe")  Double _debe,
				@Param("_haber") Double  _haber,
				@Param("_cuentacontableid") CuentaContable cuentaContable,
				@Param("_eleccion") Integer  _eleccion);
	
}
