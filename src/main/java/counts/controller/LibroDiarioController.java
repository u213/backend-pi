package counts.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import counts.entity.LibroDiario;
import counts.service.LibroDiarioService;



@RestController
@RequestMapping("/diario")
@CrossOrigin("*")
public class LibroDiarioController {


	@Autowired 
	private LibroDiarioService llss;
	

	@GetMapping("/autosum")
	public ResponseEntity< List<LibroDiario>> totaldebehaber(){
		List<LibroDiario> lista = llss.listaLibroUpdate();
		return new ResponseEntity<List<LibroDiario>>(lista,HttpStatus.OK);
	}
	
	
}
