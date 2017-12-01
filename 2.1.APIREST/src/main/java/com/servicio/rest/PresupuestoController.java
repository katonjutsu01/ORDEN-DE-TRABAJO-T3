package com.servicio.rest;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.dominio.entidades.Presupuesto;
import com.persistencia.dao.daoPresupuesto;

@Controller
public class PresupuestoController {
	@RequestMapping(value = "/Presupuesto/ListarPresupuesto", method = RequestMethod.GET, 
			produces ="application/json")
	public @ResponseBody ArrayList<Presupuesto> ListarPresupuesto() {
		ArrayList<Presupuesto> p = null;
		try {
			p = daoPresupuesto.Instancia().ListarPresupuesto();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}
}
