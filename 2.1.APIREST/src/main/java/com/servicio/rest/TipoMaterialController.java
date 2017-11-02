package com.servicio.rest;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dominio.entidades.TipoMaterial;
import com.persistencia.dao.daoTipoMaterial;

@Controller
public class TipoMaterialController {
	@RequestMapping(value = "/TipoMaterial/ListarTipoMaterial", method = RequestMethod.GET, 
					produces ="application/json")
	public @ResponseBody ArrayList<TipoMaterial> ListarTipoMaterial() {
	ArrayList<TipoMaterial> tipmat = null;
	try {
		tipmat = daoTipoMaterial.Instancia().ListarTipoMaterial();
	} catch (Exception e) {
		e.printStackTrace();
	}
		return tipmat;
	}

	@RequestMapping(value = "/TipoMaterial/EliminarTipoMaterial", method = RequestMethod.GET, 
					produces ="application/json")
	public @ResponseBody Boolean EliminarTipoMaterial(int idtipomaterial) {
	Boolean elimino = false;
	try {
		TipoMaterial tipmat = new TipoMaterial();
		tipmat.setIdtipomaterial(idtipomaterial);
		elimino = daoTipoMaterial.Instancia().EliminarTipoMaterial(idtipomaterial);
	} catch (Exception e) {
		e.printStackTrace();
	}
		return elimino;
	}
	
	@RequestMapping(value = "/TipoMaterial/InsertarTipoMaterial", method = RequestMethod.POST, 
					produces ="application/json")
	public @ResponseBody Boolean InsertarTipoMaterial(@RequestBody TipoMaterial t) {
	Boolean inserto = false;
	try {
		inserto = daoTipoMaterial.Instancia().InsertarTipoMaterial(t);
	} catch (Exception e) {
	e.printStackTrace();
	}
		return inserto;
	}
	
	@RequestMapping(value = "/TipoMaterial/EditarTipoMaterial", method = RequestMethod.POST, 
					produces ="application/json")
	public @ResponseBody Boolean EditarTipoMaterial(@RequestBody TipoMaterial t) {
	Boolean edito = false;
	try {
		edito = daoTipoMaterial.Instancia().EditarTipoMaterial(t);
	} catch (Exception e) {
		e.printStackTrace();
	}
		return edito;
	}
	
	@RequestMapping(value = "/TipoMaterial/DevolverTipoMaterial", method = RequestMethod.GET, 
					produces ="application/json")
	public @ResponseBody TipoMaterial DevolverTipoMaterial(int idtipomaterial) {
	TipoMaterial tipmat = null;
	try {
		tipmat = daoTipoMaterial.Instancia().DevolverTipoMaterial(idtipomaterial);
	} catch (Exception e) {
		e.printStackTrace();
	}
		return tipmat;
	}
}
