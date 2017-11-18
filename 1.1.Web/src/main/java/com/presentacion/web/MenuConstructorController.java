package com.presentacion.web;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MenuConstructorController {
	@RequestMapping(value = "/MenuConstructor/Menu", method = RequestMethod.GET)
	public ModelAndView Menu() {
		try {
			ModelAndView m = new ModelAndView("MenuConstructor/Menu") ;
			return m;
		}catch(Exception e){
			return new ModelAndView("frmError","error",e.getMessage());
		}
	}
	
	@RequestMapping(value = "/MenuConstructor/CerrarSesion", method = RequestMethod.GET)
	public String CerrarSesion(HttpServletRequest req) {
		try {
			HttpSession session = req.getSession(false);
			if (session != null) {
			    session.invalidate();
			}
			return "redirect:/";
		}catch(Exception e){
			return "error";
		}
	}
}
