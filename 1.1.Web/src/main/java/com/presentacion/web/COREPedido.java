package com.presentacion.web;
import java.util.ArrayList;

import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJacksonHttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import Pojo.Almacen;
import Pojo.Ordendetrabajo;
import Pojo.Usuario;

@Controller
public class COREPedido {

	@RequestMapping(value = "/COREPedido/Index", method = RequestMethod.GET)
	public ModelAndView Index() {
		try {
			RestTemplate rest = new RestTemplate();
			String UriOrde= "http://localhost:8080/rest/Orden/ListarOrden";
			String UriAlm= "http://localhost:8080/rest/Almacen/ListarAlmacen";
			ArrayList<Ordendetrabajo> listaOrde = new ArrayList<Ordendetrabajo>();
			ArrayList<Almacen> listaAlm = new ArrayList<Almacen>();
			ArrayList<Ordendetrabajo> resultOrde = rest.getForObject(UriOrde,listaOrde.getClass());
			ArrayList<Ordendetrabajo> resultAlm = rest.getForObject(UriAlm,listaAlm.getClass()); 
			//ModelAndView m = new ModelAndView("/COREPedido/Index","command", new Ordendetrabajo());
			ModelAndView m = new ModelAndView("/COREPedido/Index","command",int.class);
			m.addObject("ordenes", resultOrde);
			m.addObject("almacenes", resultAlm);
			return m;
		}catch(Exception e){
			return new ModelAndView("frmError","error",e.getMessage());
		}
	}
	
	@RequestMapping(value = "/COREPedido/AgregarDetalle", method = RequestMethod.POST)
	//public String AgregarDetalle(@ModelAttribute("SpringWeb")Ordendetrabajo o) {
	public String AgregarDetalle() {
		try {
			
		}catch(Exception e){
		}
		return null;
	}
}