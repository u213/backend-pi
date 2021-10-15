package counts.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import counts.entity.Asiento;
import counts.repository.AsientoRepository;


@Service
public class AsientoService {

	
	@Autowired
	private AsientoRepository repoA;
	
	public List<Asiento> listaAsiento() {
		return repoA.listaAsiento();
	}
	
	
	
	public List<Asiento> listChair() {
		return  repoA.findAll();
	}
	
	
	
	public void guardarAsiento(Asiento aiento) {
		repoA.guardarAsiento(aiento.getDocumentoComprobante(),
				aiento.getFecha(),
				aiento.getGlosa(),
				aiento.getLibroRegistro(),/*aqui numeroasiento es automatico en SSPP*/
				aiento.getLibroDiarioId().getIdLibroDiario());
	}
	
	
	
	
//	public void eliminarAsiento(int id) {
//		  aarr.eliminarAsiento(id);
//	}
//
//	public void actualizarAsiento(Asiento Asiento) {
//		     aarr.actualizarAsiento(Asiento.getId(),Asiento.getBarra(), Asiento.getPeso(),
//				 Asiento.getAsiento(), Asiento.getMedida(), Asiento.getAsiento().getId(),
//				 Asiento.getStock().getMinimo(), Asiento.getStock().getReal(), Asiento.getStock().getMaximo(),
//				 Asiento.getPrecio().getCompra(), Asiento.getPrecio().getVenta(),
//				 Asiento.getEstado_Asiento(), Asiento.getSub_categoria().getId(), Asiento.getProveedor().getId());
//	}
//	
	public Optional<Asiento> buscarPorId(int _id){
		return repoA.BuscarPorId(_id);
	}
	
//	public List<Asiento> buscarPorProv(int proveedor_id){
//		return aarr.buscarPorProv(proveedor_id);
//	}
	public List<Asiento> listaUpdate() {
		return repoA.listaUpdate();
	}
	
}
