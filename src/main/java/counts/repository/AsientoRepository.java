package counts.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import counts.entity.Asiento;

@Repository
public interface AsientoRepository extends JpaRepository<Asiento, Integer> {
	
	@Query(value = "{call sp_asiento_listar()}", nativeQuery = true)
	List<Asiento> listaAsiento();
	
	
	
	@Transactional
	@Modifying
	@Query(value = "{call sp_asiento_registrar(:_documento,:_fecha, :_glosa, :_libroregistro,:_librodiario_id )}", nativeQuery = true)
	void guardarAsiento(@Param("_documento") String _documento,
			         @Param("_fecha") String _fecha,
			         @Param("_glosa") String _glosa,
			         @Param("_libroregistro")String _libroregistro,
			         @Param("_librodiario_id")Integer _librodiario_id);
	
	
	
		
	
//	
//	@Query(value = "{call sp_producto_combo_ordenado()}", nativeQuery = true)
//	List<Producto> listaProductoOrdenado();

	@Query(value = "{call sp_asiento_buscar_x_id(:_id)}", nativeQuery = true)
	Optional<Asiento> BuscarPorId(@Param("_id") int _id);
	
	
//	@Query(value = "{call sp_producto_buscar_por_nombre(:producto)}", nativeQuery = true)
//	Optional<Producto> BuscarPorProducto(@Param("producto") String producto);
	
	
				
				
//	@Transactional
//	@Modifying
//	@Query(value = "{call sp_producto_eliminar(:_id)}", nativeQuery = true)
//	void eliminarProducto(@Param("_id") int id);
//	
//
//	
//	@Query(value = "{call sp_producto_buscarX(:busca)}",nativeQuery = true)
//	List<Producto> buscarPorX(@Param("busca")String busca);
//	
//	@Query(value = "{call sp_producto_buscar_proveedor(:_proveedor_id)}",nativeQuery = true)
//	List<Producto> buscarPorProv(@Param("_proveedor_id")int proveedor_id);
//	
//	@Query(value = "{call sp_producto_listar_por_subcategoria_id(:_subcategoria_id)}",nativeQuery = true)
//	List<Producto> listarPorIdDeSubCategoria(@Param("_subcategoria_id")int _categoria_id);
//	
//

}
