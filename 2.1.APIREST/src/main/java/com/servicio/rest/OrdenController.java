package com.servicio.rest;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dominio.entidades.Ordendetrabajo;
import com.persistencia.dao.daoOrden;

@Controller
public class OrdenController {
	@RequestMapping(value = "/Orden/InsertarOrden", method = RequestMethod.POST, 
			produces ="application/json")
	public @ResponseBody Boolean InsertarOrden(@RequestBody Ordendetrabajo o) {
		Boolean inserto = false;
		try {
			inserto = daoOrden.Instancia().InsertarOrden(o);
		} catch (Exception e) {
			e.printStackTrace();
		}
			return inserto;
	}
	
	@RequestMapping(value = "/Orden/ListarOrden", method = RequestMethod.GET, 
			produces ="application/json")
	public @ResponseBody ArrayList<Ordendetrabajo> ListarOrden() {
		ArrayList<Ordendetrabajo> o = null;
		try {
			o = daoOrden.Instancia().ListarOrden();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return o;
	}

}
