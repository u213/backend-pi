package counts.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import counts.entity.LibroDiario;



@Repository
public interface LibroDiarioRepository extends JpaRepository<LibroDiario, Integer> {

	@Query(value = "{call sp_update_librodiario_dh()}", nativeQuery = true)
	List<LibroDiario> listaUpdate();
	
}
