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
	public @ResponseBody ArrayList<Actividad> ListarActividad() {
	ArrayList<Actividad> tipmat = null;
	try {
		tipmat = daoActividad.Instancia().ListarActividad();
	} catch (Exception e) {
		e.printStackTrace();
	}
		return tipmat;
	}
	
	@RequestMapping(value = "/Actividad/EliminarActividad", method = RequestMethod.GET, 
			produces ="application/json")
	public @ResponseBody Boolean EliminarActividad(int idActividad) {
	Boolean elimino = false;
	try {
		Actividad a = new Actividad();
		a.setIdActividad(idActividad);
		elimino = daoActividad.Instancia().EliminarActividad(idActividad);
	} catch (Exception e) {
		e.printStackTrace();
	}
		return elimino;
	}

	@RequestMapping(value = "/Actividad/InsertarActividad", method = RequestMethod.GET, 
			produces ="application/json")
	public @ResponseBody Boolean InsertarActividad(String descripcion, int tiempoestimado) {
		Boolean inserto = false;
	try {
		Actividad a = new Actividad();
		a.setDescripcion(descripcion);
		a.setTiempoestimado(tiempoestimado);
		inserto = daoActividad.Instancia().InsertarActividad(a);
	} catch (Exception e) {
		e.printStackTrace();
	}
		return inserto;
	}

	@RequestMapping(value = "/Actividad/EditarActividad", method = RequestMethod.GET, 
			produces ="application/json")
	public @ResponseBody Boolean EditarActividad(int idActividad, String descripcion, int tiempoestimado) {
		Boolean edito = false;
	try {
		Actividad a = new Actividad();
		a.setIdActividad(idActividad);
		a.setDescripcion(descripcion);
		a.setTiempoestimado(tiempoestimado);
		edito = daoActividad.Instancia().EditarActividad(a);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return edito;
	}

	@RequestMapping(value = "/Actividad/DevolverActividad", method = RequestMethod.GET, 
				produces ="application/json")
	public @ResponseBody Actividad DevolverActividad(int idActividad) {
		Actividad a = null;
	try {
		a = daoActividad.Instancia().DevolverActividad(idActividad);
		} catch (Exception e) {
			e.printStackTrace();
		}
			return a;
		}
	}
