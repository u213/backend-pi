package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.TipoDocumento;

import repository.TipoDocumentoRepository;
@Service
public class TipoDocumentoService {

	@Autowired
	
	private TipoDocumentoRepository TDRepository;
	
	public List<TipoDocumento> listarTipoDoc(){
		return TDRepository.listarTipoDocumento();
	}
}
