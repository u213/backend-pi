package counts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;


import counts.entity.Operacion;
import counts.repository.OperacionRepository;

@Service
public class OperacionService {
	Integer _eleccion=0;
	@Autowired
	private OperacionRepository oorr;
	
	

	
	
	public List<Operacion> listaOperacion() {
		return oorr.listOperacion();
	}
	
	

	public List<Operacion> listOper() {
		return  oorr.findAll();
	}
	
	

	
	public void saveOperation(Operacion oper) {
		oorr.saveOperacion(oper.getCorrelacion(),
	              oper.getDebe(),
	              oper.getHaber(),
	     	      oper.getCuentaContable().getIdCuentaContable());
	}
	
	
	
	/*OBSOLETS*/
//	public void guardarAsientoOperacion(Operacion operacion) {
//		_eleccion=1;
//	 oorr.guardarAsientoOperacion(
//			               operacion.getAsientoId().getDocumentoComprobante(),
//			               operacion.getAsientoId().getFecha(),
//			               operacion.getAsientoId().getGlosa(),
//			               operacion.getAsientoId().getLibroRegistro(),			               
//			               operacion.getAsientoId().getLibroDiarioId().getIdLibroDiario(),
//			               operacion.getCorrelacion(),
//			               operacion.getDebe(),
//			               operacion.getHaber(),			               
//			               operacion.getCuentaContable().getIdCuentaContable(),
//			               _eleccion);}
//
//
//	public void guardarOperacioness(Operacion operacion) {
//		_eleccion=2;
//	 oorr.guardarOperaciones(operacion.getAsientoId().getDocumentoComprobante(),
//			               operacion.getAsientoId().getFecha(),
//			               operacion.getAsientoId().getGlosa(),
//			               operacion.getAsientoId().getLibroRegistro(),
//			               operacion.getAsientoId().getLibroDiarioId(),
//			               operacion.getCorrelacion(),
//			               operacion.getDebe(),
//			               operacion.getHaber(),
//			               operacion.getCuentaContable(),
//			               _eleccion);
//	 }
}
