package com.yesworks.signup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class HomeController {

	@RequestMapping("/")
	public String welcomePage(Model model) {
		
		return "/jsp/home";
	}
	
	@RequestMapping("/finish")
	public String finishPage(Model model) {
		
		return "/jsp/finish";
	}
}
