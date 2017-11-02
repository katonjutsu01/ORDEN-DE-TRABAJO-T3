package com.servicio.rest;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dominio.entidades.TipoMaterial;
import com.dominio.entidades.Trabajador;
import com.persistencia.dao.daoTipoMaterial;
import com.persistencia.dao.daoTrabajador;

@Controller
public class TrabajadorController {
	@RequestMapping(value = "/Trabajador/ListarTrabajador", method = RequestMethod.GET, 
			produces ="application/json")
	public @ResponseBody ArrayList<Trabajador> ListarTrabajador() {
		ArrayList<Trabajador> t = null;
		try {
			t = daoTrabajador.Instancia().ListarTrabajador();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return t;
	}

	@RequestMapping(value = "/Trabajador/EditarTrabajador", method = RequestMethod.GET, 
			produces ="application/json")
	public @ResponseBody Boolean EditarTrabajador(int idTrabajador, Boolean estado) {
		Boolean edito = false;
		try {
			Trabajador t = new Trabajador();
			t.setIdTrabajador(idTrabajador);
			t.setEstado(estado);
			edito = daoTrabajador.Instancia().EditarTrabajador(t);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return edito;
	}
}
