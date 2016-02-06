package com.bhms.web.controller;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bhms.web.form.LoginForm;

@Controller
public class UserController {
	
	private final static Logger log = Logger.getLogger(UserController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView login() {
		log.info("login() -  start");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("loginForm", new LoginForm());
		modelAndView.setViewName("login");
		log.info("login() - end");
		return modelAndView;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView performLogin(@Valid  @ModelAttribute("loginForm") LoginForm loginForm, BindingResult result) {
		log.info("performLogin() -  start");
		ModelAndView modelAndView = new ModelAndView();
		
		if(result.hasErrors()){
			modelAndView.addObject("loginForm", loginForm);
			modelAndView.setViewName("login");
			return modelAndView;
		}
		modelAndView.setViewName("landing");
		log.info("performLogin() - end");
		return modelAndView;
	}

}
