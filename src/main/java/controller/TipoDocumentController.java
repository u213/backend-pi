package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import entity.TipoDocumento;
import service.TipoDocumentoService;

@RestController
@RequestMapping("/tipoDocumento")
@CrossOrigin("*")
public class TipoDocumentController {


	@Autowired 
	private TipoDocumentoService tdService;
	
// 	@PreAuthorize("hasRole('ADMIN') or hasRole('ALMACEN')")
	@GetMapping("/listar")
	public ResponseEntity< List<TipoDocumento>> lista(){
		List<TipoDocumento> lista = tdService.listarTipoDoc();
		return new ResponseEntity<List<TipoDocumento>>(lista,HttpStatus.OK);
	}
}
