package counts.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import counts.dto.Mensaje;
import counts.entity.Operacion;

import counts.service.OperacionService;

@RestController
@RequestMapping("/operacion")
	@CrossOrigin("*")
	public class OperacionController {

	@Autowired 
	private OperacionService ooss;
	
	@GetMapping("/lista")
	public ResponseEntity< List<Operacion>> lista(){
		List<Operacion> lista = ooss.listaOperacion();
		return new ResponseEntity<List<Operacion>>(lista,HttpStatus.OK);
	}
	
	
	
	@GetMapping("/list")
	public ResponseEntity< List<Operacion>> list(){
		List<Operacion> lista = ooss.listOper();
		return new ResponseEntity<List<Operacion>>(lista,HttpStatus.OK);
	}
	

	@PostMapping("/guardar")
	public ResponseEntity<?> saveOperation(@RequestBody Operacion oper){
		ooss.saveOperation(oper);
		return new ResponseEntity<Object>(new Mensaje("Operation saved"), HttpStatus.CREATED);
	}
	
	

	
//	@PostMapping("/saveguardarO")
//	public ResponseEntity<?> saveOperation(@RequestBody Operacion operacion){
//		ooss.guardarOperacioness(operacion);
//		return new ResponseEntity<Object>(new Mensaje("Operacion guardada"), HttpStatus.OK);
//	}
}
