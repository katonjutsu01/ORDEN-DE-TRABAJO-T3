package com.presentacion.web;

import java.util.ArrayList;

import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJacksonHttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import Pojo.Actividad;
import Pojo.Obra;
import Pojo.Ordendetrabajo;
import Pojo.TipoMaterial;
import Pojo.Trabajador;

@Controller
public class COREOrdenTrabajo {
	@RequestMapping(value = "/COREOrdenTrabajo/Nuevo", method = RequestMethod.GET)
	public ModelAndView NuevoOrden() {
		try {
			RestTemplate rest = new RestTemplate();
			String UriO= "http://localhost:8080/rest/Obra/ListarObra";
			String UriA= "http://localhost:8080/rest/Actividad/ListarActividad";
			String UriT= "http://localhost:8080/rest/Trabajador/ListarTrabajador";
			ArrayList<Obra> listaO = new ArrayList<Obra>();
			ArrayList<Obra> resultO = rest.getForObject(UriO,listaO.getClass()); 
			ArrayList<Actividad> listaA = new ArrayList<Actividad>();
			ArrayList<Actividad> resultA = rest.getForObject(UriA,listaA.getClass()); 
			ArrayList<Trabajador> listaT = new ArrayList<Trabajador>();
			ArrayList<Trabajador> resultT = rest.getForObject(UriT,listaT.getClass()); 
			ModelAndView m = new ModelAndView("/COREOrdenTrabajo/Nuevo","command", new Ordendetrabajo());
			m.addObject("obras", resultO);
			m.addObject("actividades", resultA);
			m.addObject("trabajadores", resultT);
			return m;
		}catch(Exception e){
			return new ModelAndView("frmError","error",e.getMessage());
		}
	}
	
	@RequestMapping(value = "/COREOrdenTrabajo/GuardarOrdenTrabajo", method = RequestMethod.POST)
	public String NuevoOrden(@ModelAttribute("SpringWeb")Ordendetrabajo o) {
		try {
			RestTemplate rest = new RestTemplate();
			rest.getMessageConverters().add(new MappingJacksonHttpMessageConverter());
			rest.getMessageConverters().add(new StringHttpMessageConverter());
			o.setEstado("Iniciado");
			String URI= "http://localhost:8080/rest/Orden/InsertarOrden";
			String URIE= "http://localhost:8080/rest/Trabajador/EditarTrabajador?idTrabajador="+o.getTrabajador().getIdTrabajador()
					    +"&estado=false";
			ResponseEntity<String> result = rest.postForEntity(URI, o, String.class);
			Boolean edito = rest.getForObject(URIE, Boolean.class);	
			if(result.getBody().toString().equals("true")&&edito) { 
				return "redirect:/COREOrdenTrabajo/Nuevo?msg=Se inserto con exito";
			}
			return "redirect:/COREOrdenTrabajo/Nuevo?msg=No se pudo insertar";
		}catch(Exception e){
			return "redirect:/COREOrdenTrabajo/error?msg="+e.getMessage();
		}
	}
}
