package com.presentacion.web;
import java.util.ArrayList;
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
			String URI= "http://localhost:8080/rest/TipoMaterial/InsertarTipoMaterial?descripcion="+tipmat.getDescripcion();
			Boolean inserto = rest.getForObject(URI, Boolean.class);	
			if(inserto) { 
				return "redirect:/CRUDTipoMaterial/Lista";
			}else {return "error";}
		}catch(Exception e){
			return "error";
		}
	}
	
	@RequestMapping(value = "/CRUDTipoMaterial/Editar", method = RequestMethod.GET)
	public ModelAndView EditarTipoMaterial(@RequestParam(value="btnEditar") int idtipomaterial) {
		try {
			RestTemplate rest = new RestTemplate();
			String URI= "http://localhost:8080/rest/CRUDTipoMaterial/DevolverTipoMaterial?idtipomaterial="+idtipomaterial;
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
			String URI= "http://localhost:8080/rest/TipoMaterial/EditarTipoMaterial?=idtipomaterial?"+tipmat.getIdtipomaterial()+"&descripcion"+tipmat.getDescripcion();
			Boolean inserto = rest.getForObject(URI, Boolean.class);	
			if(inserto) { 
				return "redirect:/CRUDTipoMaterial/Lista";
			}else {return "error";}
		}catch(Exception e){
			return "error";
		}
	}
	
}

