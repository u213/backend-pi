package counts.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import counts.dto.Mensaje;
import counts.entity.Asiento;
import counts.service.AsientoService;


@RestController
@RequestMapping("/asiento")
@CrossOrigin("*")
public class AsientoController {


	@Autowired 
	private AsientoService aass;
	
// 	@PreAuthorize("hasRole('ADMIN') or hasRole('ALMACEN')")
	@GetMapping("/lista")
	public ResponseEntity< List<Asiento>> lista(){
		List<Asiento> lista = aass.listaAsiento();
		return new ResponseEntity<List<Asiento>>(lista,HttpStatus.OK);
	}
	
	
	
	
	@GetMapping("/list")
	public ResponseEntity< List<Asiento>> list(){
		List<Asiento> lista = aass.listChair();
		return new ResponseEntity<List<Asiento>>(lista,HttpStatus.OK);
	}
	
	
	@PostMapping("/guardar")
	public ResponseEntity<?> save(@RequestBody Asiento asiento){
		aass.guardarAsiento(asiento);
		return new ResponseEntity<Object>(new Mensaje("Asiento guardado"), HttpStatus.CREATED);
	}
	
	
	
//	//@PreAuthorize("hasRole('ADMIN') or hasRole('ALMACEN')")
//	@PutMapping("/editar")
//	public ResponseEntity<?> editar(@RequestBody Asiento entidad){
//		aass.editarAsiento(entidad);
//		return new ResponseEntity<Object>(new Mensaje("Asiento editado"),HttpStatus.OK);
//	} 
//	
//	//@PreAuthorize("hasRole('ADMIN')")
//	@DeleteMapping("/eliminar/{id}")
//	public ResponseEntity<?> eliminar(@PathVariable("id") String id){
//		aass.eliminarPorveedor(id);
//		return new ResponseEntity<Object>(new Mensaje("Asiento eliminado"),HttpStatus.OK);
//	}
//	
//	//@PreAuthorize("hasRole('ADMIN') or hasRole('ALMACEN')")
	@GetMapping("/buscar/{id}")
	public ResponseEntity<Object> buscarPorId(@PathVariable("id")  int _id){
		Optional<Asiento> entidad=aass.buscarPorId(_id);
		return new ResponseEntity<Object>(entidad,HttpStatus.OK);
	}

	
	
	
	@GetMapping("/autoupdate")
	public ResponseEntity< List<Asiento>> debehaber(){
		List<Asiento> lista = aass.listaUpdate();
		return new ResponseEntity<List<Asiento>>(lista,HttpStatus.OK);
	}
	

}
