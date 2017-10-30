package com.servicio.rest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dominio.entidades.Usuario;
import com.persistencia.dao.daoUsuario;

@Controller
public class UsuarioController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Inicio() {
		return "inicio";
	}	
	
	@RequestMapping(value = "/Usuario/VerificarAcceso", method = RequestMethod.GET, 
			produces ="application/json")
	public @ResponseBody Usuario VerificarAcceso(String user, String pass) {
		Usuario u = null;
		try {
			u = daoUsuario.Instancia().VerificarAcceso(user, pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}

}

