package com.bhms.web.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bhms.web.form.LoginForm;

@Controller
public class PatientController {
	
	private final static Logger log = Logger.getLogger(PatientController.class);
	
	@RequestMapping(value = "/patient", method = RequestMethod.GET)
	public ModelAndView showPatientRegistration() {
		log.info("showPatientRegistration() -  start");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("loginForm", new LoginForm());
		modelAndView.setViewName("patient-registration");
		log.info("showPatientRegistration() - end");
		return modelAndView;
	}

}
