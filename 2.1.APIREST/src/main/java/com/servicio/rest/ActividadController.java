package com.servicio.rest;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dominio.entidades.Actividad;
import com.persistencia.dao.daoActividad;

@Controller
public class ActividadController {
	@RequestMapping(value = "/Actividad/ListarActividad", method = RequestMethod.GET, 
					produces ="application/json")
	public @ResponseBody ArrayList<Actividad> ListarTipoMaterial() {
	ArrayList<Actividad> tipmat = null;
	try {
		tipmat = daoActividad.Instancia().ListarActividad();
	} catch (Exception e) {
		e.printStackTrace();
	}
		return tipmat;
	}
}
