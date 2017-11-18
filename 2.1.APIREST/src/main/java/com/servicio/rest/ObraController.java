package com.servicio.rest;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import com.dominio.entidades.Obra;
import com.dominio.entidades.Presupuesto;
import com.persistencia.dao.daoObra;

@Controller
public class ObraController {
	@RequestMapping(value = "/Obra/ListarObra", method = RequestMethod.GET, 
			produces ="application/json")
	public @ResponseBody ArrayList<Obra> ListarObra() {
		ArrayList<Obra> o = null;
		try {
			o = daoObra.Instancia().ListarObra();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return o;
	}
	
	@RequestMapping(value = "/Obra/EliminarObra", method = RequestMethod.GET, 
			produces ="application/json")
	public @ResponseBody Boolean EliminarObra(int idobra) {
	Boolean elimino = false;
	try {
		Obra o = new Obra();
		o.setIdobra(idobra);
		elimino = daoObra.Instancia().EliminarObra(idobra);
	} catch (Exception e) {
		e.printStackTrace();
	}
		return elimino;
	}

	@RequestMapping(value = "/Obra/InsertarObra", method = RequestMethod.GET, 
			produces ="application/json")
	public @ResponseBody Boolean InsertarObra(String nombre, String descripcion,int idpresupuesto) {
		Boolean inserto = false;
	try {
		Obra o = new Obra();
		o.setNombre(nombre);
		o.setDescripcion(descripcion);
			Presupuesto p = new Presupuesto();
			p.setIdpresupuesto(idpresupuesto);
		o.setPresupuesto(p);
		inserto = daoObra.Instancia().InsertarObra(o);
	} catch (Exception e) {
		e.printStackTrace();
	}
		return inserto;
	}

	@RequestMapping(value = "/Obra/EditarObra", method = RequestMethod.GET, 
			produces ="application/json")
	public @ResponseBody Boolean EditarObra(int idobra, String nombre, String descripcion,int idpresupuesto, Boolean activo) {
		Boolean edito = false;
	try {
		Obra o = new Obra();
		o.setIdobra(idobra);
		o.setNombre(nombre);
		o.setDescripcion(descripcion);
			Presupuesto p = new Presupuesto();
			p.setIdpresupuesto(idpresupuesto);
		o.setPresupuesto(p);
		o.setActivo(activo);
		edito = daoObra.Instancia().EditarObra(o);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return edito;
	}

	@RequestMapping(value = "/Obra/DevolverObra", method = RequestMethod.GET, 
				produces ="application/json")
	public @ResponseBody Obra DevolverObra(int idobra) {
		Obra o = null;
	try {
		o = daoObra.Instancia().DevolverObra(idobra);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return o;
	}
	
}
