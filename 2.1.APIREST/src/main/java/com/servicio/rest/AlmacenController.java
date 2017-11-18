package com.servicio.rest;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dominio.entidades.Almacen;
import com.persistencia.dao.daoAlmacen;

@Controller
public class AlmacenController {
	@RequestMapping(value = "/Almacen/ListarAlmacen", method = RequestMethod.GET, 
			produces ="application/json")
	public @ResponseBody ArrayList<Almacen> ListarAlmacen() {
		ArrayList<Almacen> a = null;
		try {
			a = daoAlmacen.Instancia().ListarAlmacen();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
}
