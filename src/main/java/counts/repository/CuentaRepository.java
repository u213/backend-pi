package counts.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import counts.entity.CuentaContable;

public interface CuentaRepository extends JpaRepository<CuentaContable, Integer> {
	

	@Transactional
	@Modifying
	@Query(value = "{call sp_cuenta_editar(:_nivelcuenta,:_id)}", nativeQuery = true)
	void editarNivel(@Param("_nivelcuenta") String _nivelcuenta,
			         @Param("_id") Integer _id)
			           ;
	
	@Query(value = "{call sp_cuenta_listar_codigocuenta(:_cuenta)}",nativeQuery = true)
	List<CuentaContable> buscarPorCuenta(@Param("_cuenta")String _codigo);
	
	

	@Query(value = "{call sp_cuenta_lista_x(:_x)}",nativeQuery = true)
	List<CuentaContable> buscar_cod_deno(@Param("_x")String _codigo);

}

