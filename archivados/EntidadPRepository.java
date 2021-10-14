package counts.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import counts.entity.EntidadP;

@Repository
public interface EntidadPRepository extends JpaRepository<EntidadP, Integer>{


	@Query(value = "{call sp_entidadP_listar()}",nativeQuery = true)
	List<EntidadP> listarEntidadP();
	 
	@Transactional  
    @Modifying
	@Query(value ="{call sp_entidadP_registrar(:_idPersona,:_tipoDocumentoId, :_denominacion, :_direccion,:_email,:_afiliado, :_detraccion :_nota)}", nativeQuery = true)
	void  guardarEntidadP(@Param("_idPersona") String _idPersona,
			             @Param("_tipoDocumentoId") String _tipoDocumentoId,
			             @Param("_denominacion")String _denominacion,
			             @Param("_direccion")String _direccion,
			             @Param("_email")String _email,
			             @Param("_afiliado")String _afiliado,
			             @Param("_detraccion")String _detraccion,
			             @Param("_nota")String _nota);
		
    @Transactional   
    @Modifying 
	@Query(value = "{call sp_entidadP_editar(:_id,:_ruc,:_razon_social,:_telefono,:_correo)}",nativeQuery = true)
	void editarEntidadP(@Param("_idPersona") String _idPersona,
                        @Param("_tipoDocumentoId") String _tipoDocumentoId,
                        @Param("_denominacion")String _denominacion,
                        @Param("_direccion")String _direccion,
                        @Param("_email")String _email,
                        @Param("_afiliado")String _afiliado,
                        @Param("_detraccion")String _detraccion,
                        @Param("_nota")String _nota);
	
 
    @Transactional
    @Modifying
	@Query(value = "{call sp_entidadP_eliminar(:_idPersona)}",nativeQuery = true)
	void eliminarEntidadP(@Param("_idPersona") String _idPersona);
	
	
	@Query(value = "{call sp_entidadP_buscar_x_id(:_idPersona)}",nativeQuery = true)
	EntidadP buscarEntidadPPorId(@Param("_idPersona") String _idPersona);
	
	 
	@Query(value = "{call sp_entidadP_buscar_x_nombre(:_denominacion)}",nativeQuery = true)
	EntidadP buscarEntidadPPorN(@Param("_denominacion")String _denominacion);
	
	@Query(value = "{call sp_entidadP_buscar_x_id_nombre(:_cualquier)}",nativeQuery = true)
	EntidadP buscarEntidadPPorCualquier(@Param("_cualquier")String _cualquier);
	  
}
	  

