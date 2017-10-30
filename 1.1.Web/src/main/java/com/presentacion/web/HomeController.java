package com.presentacion.web;

//import java.text.DateFormat;
//import java.util.Date;
//import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import Pojo.Usuario;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() {
		return new ModelAndView("login", "command", new Usuario());
	}
	
	@RequestMapping(value = "/VerificarAcceso", method = RequestMethod.POST)
	public String  VerificarAcceso(@ModelAttribute("SpringWeb")Usuario u, 
			HttpServletRequest req) {
		try {
			String Usuario = u.getUserName();
			String Password = u.getPassword();
			//VERIFICAMOS ACCESO DESDE LA API REST
			RestTemplate rest = new RestTemplate();
			String URI=
					"http://localhost:8080/rest/Usuario/VerificarAcceso" +
						"?user="+Usuario+"&pass="+Password;
			Usuario result = rest.getForObject(URI, u.getClass());
			HttpSession sesion =req.getSession(true);
			sesion.setAttribute( "usuario", result );
			if(result!=null) {
				return "redirect:/CRUDTipoMaterial/Lista";
			}else {
				return "redirect:/?msg=Usuario o password no valido";
			}

		}catch(Exception e){
			return "error";
		}
	}	
}
