package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.EntidadP;
import repository.EntidadPRepository;

@Service
public class EntidadPService {
	


		@Autowired
		
		private EntidadPRepository proRepository;
		
		public List<EntidadP> listarEntidadP(){
			return proRepository.listarEntidadP();
		}
		
		 public void guardarEntidadP(EntidadP ent) {
			  proRepository.guardarEntidadP(
					ent.getIdPersona(),
					ent.getDenominacion(),
					ent.getTipoDocumento().getDenominacion(),
					ent.getDireccion(),
					ent.getEmail(),
					ent.getAfiliado(),
					ent.getDetraccion(),
					ent.getNota());
		}
		
		 
		
		 public void editarEntidadP(EntidadP ent) {
			  proRepository.editarEntidadP(
					  ent.getIdPersona(),
						ent.getDenominacion(),
						ent.getTipoDocumento().getDenominacion(),
						ent.getDireccion(),
						ent.getEmail(),
						ent.getAfiliado(),
						ent.getDetraccion(),
						ent.getNota());
		} 
		 
		public void eliminarPorveedor(String id) {
				  proRepository.eliminarEntidadP(id);
				  
		}
		
		public EntidadP buscarPorId(String id){
			return proRepository.buscarEntidadPPorId(id);
		}
		
		
		
		public EntidadP buscarPorX(String _denominacion){
			return proRepository.buscarEntidadPPorN(_denominacion);
		}
		
		public EntidadP buscarPorcualquier(String busca){
			return proRepository.buscarEntidadPPorCualquier(busca);
		} 
		


}
