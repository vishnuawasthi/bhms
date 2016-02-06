package com.bhms.web.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bhms.web.form.LoginForm;

@Controller
public class DoctorController {

	private final static Logger log = Logger.getLogger(DoctorController.class);
	
	@RequestMapping(value = "/doctor", method = RequestMethod.GET)
	public ModelAndView showDoctorRegistration() {
		log.info("showDoctorRegistration() -  start");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("loginForm", new LoginForm());
		modelAndView.setViewName("doctor-registration");
		log.info("showDoctorRegistration() - end");
		return modelAndView;
	}
}
