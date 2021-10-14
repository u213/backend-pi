package counts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import counts.entity.CuentaContable;
import counts.repository.CuentaRepository;

@Service
public class CuentaService {

   @Autowired   
	private CuentaRepository ccrr;
	
	public List<CuentaContable> listCuenta() {
		return  ccrr.findAll();		
	}
	
	public void editarNivelCuenta(CuentaContable c) {
		ccrr.editarNivel(
				c.getNivelCuenta(),
				c.getIdCuentaContable()
				);
	}
	
	public List<CuentaContable> buscarCuenta(String codigo){		
		return ccrr.buscarPorCuenta(codigo);
	} 
	
	public List<CuentaContable> buscarXcuenta(String x){		
		return ccrr.buscar_cod_deno(x);
	} 
	/*          c.getIdCuentaContable(),
				c.getCuenta(),
				c.getDenominacion(),
				c.getDigitos(),
				c.getNivelCueta(),
				c.getTipoCuenta(),
				c.getEstructura()*/
	
}
