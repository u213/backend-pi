package counts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import counts.entity.LibroDiario;
import counts.repository.LibroDiarioRepository;



@Service
public class LibroDiarioService {

	@Autowired
	private LibroDiarioRepository repoL;
	
	public List<LibroDiario> listaLibroUpdate() {
		return repoL.listaUpdate();
	}
	
}
