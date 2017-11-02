package com.servicio.rest;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dominio.entidades.Obra;
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
}
