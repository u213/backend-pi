package counts.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
//import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import counts.dto.Mensaje;
import counts.entity.EntidadP;
import counts.service.EntidadPService;

//import java.util.Optional;


@RestController
@RequestMapping("/entidad")
@CrossOrigin("*")
public class EntidadPController {
	



	@Autowired 
	private EntidadPService entService;
	
// 	@PreAuthorize("hasRole('ADMIN') or hasRole('ALMACEN')")
	@GetMapping("/listar")
	public ResponseEntity< List<EntidadP>> lista(){
		List<EntidadP> lista = entService.listarEntidadP();
		return new ResponseEntity<List<EntidadP>>(lista,HttpStatus.OK);
	}
	
	//@PreAuthorize("hasRole('ADMIN') or hasRole('ALMACEN')")
	@PostMapping("/guardar")
	public ResponseEntity<?> guardar(@RequestBody EntidadP entidad){
		entService.guardarEntidadP(entidad);
		return new ResponseEntity<Object>(new Mensaje("EntidadP registrado"),HttpStatus.CREATED);
	}
	
	//@PreAuthorize("hasRole('ADMIN') or hasRole('ALMACEN')")
	@PutMapping("/editar")
	public ResponseEntity<?> editar(@RequestBody EntidadP entidad){
		entService.editarEntidadP(entidad);
		return new ResponseEntity<Object>(new Mensaje("EntidadP editado"),HttpStatus.OK);
	} 
	
	//@PreAuthorize("hasRole('ADMIN')")
	@DeleteMapping("/eliminar/{id}")
	public ResponseEntity<?> eliminar(@PathVariable("id") String id){
		entService.eliminarPorveedor(id);
		return new ResponseEntity<Object>(new Mensaje("EntidadP eliminado"),HttpStatus.OK);
	}
	
	//@PreAuthorize("hasRole('ADMIN') or hasRole('ALMACEN')")
	@GetMapping("/buscar-x-id/{id}")
	public ResponseEntity<EntidadP> buscarPorId(@PathVariable("id")String id){
		EntidadP entidad=entService.buscarPorId(id);
		return new ResponseEntity<EntidadP>(entidad,HttpStatus.OK);
	}
	
	
	//@PreAuthorize("hasRole('ADMIN') or hasRole('ALMACEN')")
	@GetMapping("buscar-x-nombre/{nombre}")
	public ResponseEntity<EntidadP> buscarPorNombre(@PathVariable("nombre")String _denominacion){
		EntidadP entidad=entService.buscarPorX(_denominacion);
		return new ResponseEntity<EntidadP>(entidad,HttpStatus.OK);
	}
	
	//@PreAuthorize("hasRole('ADMIN') or hasRole('ALMACEN')")
		@GetMapping("buscar-x-id-nombre/{busca}")
		public ResponseEntity<EntidadP> buscarPorIdNomb(@PathVariable("busca")String busca){
			EntidadP lista=entService.buscarPorcualquier(busca);
			return new ResponseEntity<EntidadP>(lista,HttpStatus.OK);
		}
		

}
