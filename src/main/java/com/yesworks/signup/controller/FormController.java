package com.yesworks.signup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/form")
@SessionAttributes("maxStep")
public class FormController {

	@RequestMapping(value = "/start", method = RequestMethod.GET)
	public String getPersonalInformation(Model model) {
		
		model.addAttribute("step", 1);
		setMaxStep(model, 1);
		
		return "/jsp/form/formContainer";
	}
	
	@RequestMapping(value = "/start", method = RequestMethod.POST)
	public String savePersonalInformation(Model model) {
		
		setMaxStep(model, 1);
		
		return "redirect:/form/address";
	}
	
	@RequestMapping(value = "/address", method = RequestMethod.GET)
	public String getAddressInformation(Model model) {
		
		model.addAttribute("step", "2");
		setMaxStep(model, 2);
		
		return "/jsp/form/formContainer";
	}
	
	private void setMaxStep(Model model, int currentStep) {
		Object maxStep = model.asMap().get("maxStep");
		
		if(maxStep == null || currentStep > (int) maxStep) {
			model.addAttribute("maxStep", currentStep);
		}
	}
}
