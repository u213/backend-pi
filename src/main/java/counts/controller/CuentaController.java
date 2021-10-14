package counts.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import counts.entity.CuentaContable;
import counts.service.CuentaService;

@RestController
@RequestMapping("/cuenta")
@CrossOrigin("*")
public class CuentaController {
	@Autowired 
	private CuentaService ccss;
	
// 	@PreAuthorize("hasRole('ADMIN') or hasRole('ALMACEN')")
//	@GetMapping("/lista")
//	public ResponseEntity< List<Cuenta>> lista(){
//		List<Cuenta> lista = aass.listaCuenta();
//		return new ResponseEntity<List<Cuenta>>(lista,HttpStatus.OK);
//	}
//	
	@PutMapping("/editar")
	public ResponseEntity<?> editarCuentaContable(@RequestBody CuentaContable cu){
		ccss.editarNivelCuenta(cu);
		return new ResponseEntity("CuentaContable Editado",HttpStatus.OK);
	}
	
	
	@GetMapping("/list")
	public ResponseEntity< List<CuentaContable>> list(){
		List<CuentaContable> lista = ccss.listCuenta();
		return new ResponseEntity<List<CuentaContable>>(lista,HttpStatus.OK);
	}
	
	@GetMapping("/buscar_c/{cod}")
	public ResponseEntity<List<CuentaContable>> buscarPorX(@PathVariable("cod")String cod){
		List<CuentaContable> cList= ccss.buscarCuenta(cod);
		return new ResponseEntity<List<CuentaContable>>(cList,HttpStatus.OK);
		} 
	
	@GetMapping("/buscar_cx/{busca}")
	public ResponseEntity<List<CuentaContable>> buscarX(@PathVariable("busca")String b){
		List<CuentaContable> ccList= ccss.buscarXcuenta(b);
		return new ResponseEntity<List<CuentaContable>>(ccList,HttpStatus.OK);
		} 
	
		
	
//	
//	@PostMapping("/guardar")
//	public ResponseEntity<?> save(@RequestBody Cuenta Cuenta){
//		aass.guardarCuenta(Cuenta);
//		return new ResponseEntity<Object>(new Mensaje("Cuenta guardado"), HttpStatus.CREATED);
//	}
	
	
}
