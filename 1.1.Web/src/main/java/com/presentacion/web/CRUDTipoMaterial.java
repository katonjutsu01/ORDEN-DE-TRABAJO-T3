package com.presentacion.web;
import java.util.ArrayList;

import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJacksonHttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import Pojo.TipoMaterial;


@Controller
public class CRUDTipoMaterial {
	@RequestMapping(value = "/CRUDTipoMaterial/Lista", method = RequestMethod.GET)
	public ModelAndView ListarTipoMaterial() {
		try {
			RestTemplate rest = new RestTemplate();
			String URI= "http://localhost:8080/rest/TipoMaterial/ListarTipoMaterial";
			ArrayList<TipoMaterial> lista = new ArrayList<TipoMaterial>();
			ArrayList<TipoMaterial> result = rest.getForObject(URI,lista.getClass());
			ModelAndView m = new ModelAndView("CRUDTipoMaterial/Lista") ;
			m.addObject("listaTM", result);
			return m;
		}catch(Exception e){
			return new ModelAndView("frmError","error",e.getMessage());
		}
	}
	
	@RequestMapping(value = "/CRUDTipoMaterial/Elimina", method = RequestMethod.GET)
	public String EliminarTipoMaterial(@RequestParam(value="btnEliminar") int idtipomaterial) {
		try {
			RestTemplate rest = new RestTemplate();
			String URI= "http://localhost:8080/rest/TipoMaterial/EliminarTipoMaterial?idtipomaterial="+idtipomaterial;
			Boolean elimino = rest.getForObject(URI, Boolean.class);
			if(elimino) { 
				return "redirect:/CRUDTipoMaterial/Lista";
			}else {return "error";}
		}catch(Exception e){
			return "error";
		}
	}
	
	@RequestMapping(value = "/CRUDTipoMaterial/Nuevo", method = RequestMethod.GET)
	public ModelAndView NuevoTipoMaterial() {
		try {
			return new ModelAndView("/CRUDTipoMaterial/Nuevo","command", new TipoMaterial());
		}catch(Exception e){
			return new ModelAndView("frmError","error",e.getMessage());
		}
	}
	
	@RequestMapping(value = "/CRUDTipoMaterial/GuardarTipoMaterial", method = RequestMethod.POST)
	public String NuevoTipoMaterial(@ModelAttribute("SpringWeb")TipoMaterial tipmat) {
		try {
			RestTemplate rest = new RestTemplate();
			if(tipmat.getDescripcion()!="") {
				rest.getMessageConverters().add(new MappingJacksonHttpMessageConverter());
				rest.getMessageConverters().add(new StringHttpMessageConverter());
				String URI= "http://localhost:8080/rest/TipoMaterial/InsertarTipoMaterial";
				ResponseEntity<String> result = rest.postForEntity(URI, tipmat, String.class);
				//Boolean inserto = rest.getForObject(URI, Boolean.class);	
				if(result.getBody().toString().equals("true")) { 
					return "redirect:/CRUDTipoMaterial/Lista?msg=Se inserto con exito";
				}
			}
			return "redirect:/CRUDTipoMaterial/Nuevo?msg=No se pudo insertar";
		}catch(Exception e){
			return "redirect:/CRUDTipoMaterial/error?msg="+e.getMessage();
		}
	}
	
	@RequestMapping(value = "/CRUDTipoMaterial/Editar", method = RequestMethod.GET)
	public ModelAndView EditarTipoMaterial(@RequestParam(value="btnEditar") int idtipomaterial) {
		try {
			RestTemplate rest = new RestTemplate();
			String URI= "http://localhost:8080/rest/TipoMaterial/DevolverTipoMaterial?idtipomaterial="+idtipomaterial;
			TipoMaterial tipmat = rest.getForObject(URI,TipoMaterial.class);
			return new ModelAndView("/CRUDTipoMaterial/Editar","command", tipmat);
			
		}catch(Exception e){
			return new ModelAndView("frmError","error",e.getMessage());
		}
		
	}
	
	@RequestMapping(value = "/CRUDTipoMaterial/GuardarTipoMaterialE", method = RequestMethod.POST)
	public String EditarTipoMaterial(@ModelAttribute("SpringWeb")TipoMaterial tipmat) {
		try {
			RestTemplate rest = new RestTemplate();
			if(tipmat.getDescripcion()!="") {
			rest.getMessageConverters().add(new MappingJacksonHttpMessageConverter());
			rest.getMessageConverters().add(new StringHttpMessageConverter());
			String URI= "http://localhost:8080/rest/TipoMaterial/EditarTipoMaterial";
			ResponseEntity<String> result = rest.postForEntity(URI, tipmat, String.class);
			if(result.getBody().toString().equals("true")&&tipmat.getDescripcion()!="") {
				return "redirect:/CRUDTipoMaterial/Lista?msg=Se edito con exito";
			}
			}
			return "redirect:/CRUDTipoMaterial/Editar?btnEditar="+tipmat.getIdtipomaterial()+"&msg=No se pudo insertar";
		}catch(Exception e){
			return "redirect:/CRUDTipoMaterial/error?msg="+e.getMessage();
		}
	}
	
}

