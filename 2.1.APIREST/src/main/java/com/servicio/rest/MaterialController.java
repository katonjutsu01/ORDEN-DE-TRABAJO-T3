package com.servicio.rest;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dominio.entidades.Material;
import com.dominio.entidades.TipoMaterial;
import com.persistencia.dao.daoMaterial;

@Controller
public class MaterialController {
	@RequestMapping(value = "/Material/ListarMaterial", method = RequestMethod.GET, 
					produces ="application/json")
	public @ResponseBody ArrayList<Material> ListarMaterial() {
	ArrayList<Material> m = null;
	try {
		m = daoMaterial.Instancia().ListarMaterial();
	} catch (Exception e) {
		e.printStackTrace();
	}
		return m;
	}
	
	@RequestMapping(value = "/Material/EliminarMaterial", method = RequestMethod.GET, 
			produces ="application/json")
	public @ResponseBody Boolean EliminarMaterial(int idmaterial) {
	Boolean elimino = false;
	try {
		Material m = new Material();
		m.setIdmaterial(idmaterial);
		elimino = daoMaterial.Instancia().EliminarMaterial(idmaterial);
	} catch (Exception e) {
		e.printStackTrace();
	}
		return elimino;
	}

	@RequestMapping(value = "/Material/InsertarMaterial", method = RequestMethod.GET, 
			produces ="application/json")
	public @ResponseBody Boolean InsertarMaterial(String nombre, int idtipomaterial) {
		Boolean inserto = false;
	try {
		Material m = new Material();
		m.setNombre(nombre);
			TipoMaterial t = new TipoMaterial();
			t.setIdtipomaterial(idtipomaterial);
		m.setTipoMaterial(t);
		inserto = daoMaterial.Instancia().InsertarMaterial(m);
	} catch (Exception e) {
		e.printStackTrace();
	}
		return inserto;
	}

	@RequestMapping(value = "/Material/EditarMaterial", method = RequestMethod.GET, 
			produces ="application/json")
	public @ResponseBody Boolean EditarMaterial(int idmaterial, String nombre, int idtipomaterial) {
		Boolean edito = false;
	try {
		Material m = new Material();
		m.setIdmaterial(idmaterial);
		m.setNombre(nombre);
			TipoMaterial t = new TipoMaterial();
			t.setIdtipomaterial(idtipomaterial);
		m.setTipoMaterial(t);
		edito = daoMaterial.Instancia().EditarMaterial(m);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return edito;
	}

	@RequestMapping(value = "/Material/DevolverMaterial", method = RequestMethod.GET, 
				produces ="application/json")
	public @ResponseBody Material DevolverMaterial(int idmaterial) {
		Material m = null;
	try {
		m = daoMaterial.Instancia().DevolverMaterial(idmaterial);
		} catch (Exception e) {
			e.printStackTrace();
		}
			return m;
		}
	}
