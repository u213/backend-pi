package repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import entity.TipoDocumento;

@Repository
public interface TipoDocumentoRepository extends JpaRepository<TipoDocumento, Integer>{
	

	@Query(value = "{call sp_TipoDocumento_listar()}", nativeQuery = true)
	List<TipoDocumento> listarTipoDocumento();
	
	
	@Query(value = "{call sp_TipoDocumento_buscar_x_id(:_id)}", nativeQuery = true)
	Optional<TipoDocumento> BuscarPorId(@Param("_id") int id);
	
	
	@Query(value = "{call sp_TipoDocumento_buscar_x_nombre(:_TipoDocumento)}", nativeQuery = true)
	Optional<TipoDocumento> BuscarPorTipoDocumento(@Param("_TipoDocumento") String TipoDocumento);
	
	
	@Transactional
	@Modifying
	@Query(value = "{call sp_TipoDocumento_registrar(:_TipoDocumento)}", nativeQuery = true)
	void saveTipoDocumento(@Param("_TipoDocumento") String TipoDocumento);
 
	
	@Transactional
	@Modifying
	@Query(value = "{call sp_TipoDocumento_eliminar(:_id)}", nativeQuery = true)
	void eliminarTipoDocumento(@Param("_id") int id);
	
	
	@Transactional
	@Modifying
	@Query(value = "{call sp_TipoDocumento_editar(:_id, :_TipoDocumento)}", nativeQuery = true)
	void actualizarTipoDocumento(@Param("_id") int id,
			             @Param("_TipoDocumento") String TipoDocumento);
}
