package com.yesworks.signup.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yesworks.signup.domain.Youth;
import com.yesworks.signup.service.YouthService;

@Controller
@RequestMapping("/form")
@SessionAttributes("maxStep")
public class FormController {

	@Resource
	private YouthService youthService;
	
	@RequestMapping(value = "/start", method = RequestMethod.GET)
	public String getPersonalInformation(Model model) {
		
		model.addAttribute("step", 1);
		setMaxStep(model, 1);
		
		return "/jsp/form/formContainer";
	}
	
	@RequestMapping(value = "/start", method = RequestMethod.POST)
	public String savePersonalInformation(Youth youth, Model model) {
		System.out.println("Name = " + youth.getFirstName());
		youthService.save(youth);
		
		setMaxStep(model, 1);
		
		return "redirect:/form/address";
	}
	
	@RequestMapping(value = "/address", method = RequestMethod.GET)
	public String getAddressInformation(Model model) {
		
		model.addAttribute("step", 2);
		setMaxStep(model, 2);
		
		return "/jsp/form/formContainer";
	}
	
	@RequestMapping(value = "/address", method = RequestMethod.POST)
	public String saveAddressInformation(Model model) {
		
		setMaxStep(model, 2);
		
		return "redirect:/form/education";
	}
	
	@RequestMapping(value = "/education", method = RequestMethod.GET)
	public String getEducationInformation(Model model) {
		
		model.addAttribute("step", 3);
		setMaxStep(model, 3);
		
		return "/jsp/form/formContainer";
	}
	
	@RequestMapping(value = "/education", method = RequestMethod.POST)
	public String saveEducationInformation(Model model) {
		
		setMaxStep(model, 3);
		
		return "redirect:/form/background";
	}
	
	@RequestMapping(value = "/background", method = RequestMethod.GET)
	public String getBackgroundInformation(Model model) {
		
		model.addAttribute("step", 4);
		setMaxStep(model, 4);
		
		return "/jsp/form/formContainer";
	}
	
	@RequestMapping(value = "/background", method = RequestMethod.POST)
	public String saveBackgroundInformation(Model model) {
		
		setMaxStep(model, 4);
		
		return "redirect:/form/employment";
	}
	
	@RequestMapping(value = "/employment", method = RequestMethod.GET)
	public String getEmploymentInformation(Model model) {
		
		model.addAttribute("step", 5);
		setMaxStep(model, 5);
		
		return "/jsp/form/formContainer";
	}
	
	@RequestMapping(value = "/employment", method = RequestMethod.POST)
	public String saveEmploymentInformation(Model model) {
		
		setMaxStep(model, 5);
		
		return "redirect:/form/release";
	}
	
	@RequestMapping(value = "/release", method = RequestMethod.GET)
	public String getReleaseInformation(Model model) {
		
		model.addAttribute("step", 6);
		setMaxStep(model, 6);
		
		return "/jsp/form/formContainer";
	}
	
	@RequestMapping(value = "/release", method = RequestMethod.POST)
	public String saveReleaseInformation(Model model) {
		
		setMaxStep(model, 6);
		
		return "redirect:/form/finish";
	}
	
	private void setMaxStep(Model model, int currentStep) {
		Object maxStep = model.asMap().get("maxStep");
		
		if(maxStep == null || currentStep > (int) maxStep) {
			model.addAttribute("maxStep", currentStep);
		}
	}
}
