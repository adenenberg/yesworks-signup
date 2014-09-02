package com.yesworks.signup.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.yesworks.signup.domain.Address;
import com.yesworks.signup.domain.Background;
import com.yesworks.signup.domain.Education;
import com.yesworks.signup.domain.Employment;
import com.yesworks.signup.domain.Signature;
import com.yesworks.signup.domain.Youth;
import com.yesworks.signup.service.YouthService;

@Controller
@RequestMapping("/form")
@SessionAttributes({"maxStep", "youth"})
public class FormController {

	@Resource
	private YouthService youthService;
	
	@RequestMapping(value = "/start", method = RequestMethod.GET)
	public String getPersonalInformation(Model model, SessionStatus sessionStatus) {
		
		sessionStatus.setComplete();
		
		model.addAttribute("step", 1);
		setMaxStep(model, 1);
		
		return "/jsp/form/formContainer";
	}
	
	@RequestMapping(value = "/start", method = RequestMethod.POST)
	public String savePersonalInformation(Youth youth, Model model) {
		System.out.println("Name = " + youth.getFirstName());
		
		//TODO: Encrypt SSN??????
		
		setMaxStep(model, 1);
		model.addAttribute("youth", youth);
		
		return "redirect:/form/address";
	}
	
	@RequestMapping(value = "/address", method = RequestMethod.GET)
	public String getAddressInformation(Model model) {
		
		Youth youth = (Youth) model.asMap().get("youth");
		model.addAttribute("youth", youth);
		
		model.addAttribute("step", 2);
		setMaxStep(model, 2);
		
		return "/jsp/form/formContainer";
	}
	
	@RequestMapping(value = "/address", method = RequestMethod.POST)
	public String saveAddressInformation(Address address, Model model) {
		
		Youth youth = (Youth) model.asMap().get("youth");
		youth.setAddress(address);
		address.setYouth(youth);
		
		model.addAttribute("youth", youth);
		
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
	public String saveEducationInformation(Education education, Model model) {
		
		Youth youth = (Youth) model.asMap().get("youth");
		youth.setEducation(education);
		education.setYouth(youth);
		
		model.addAttribute("youth", youth);
		
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
	public String saveBackgroundInformation(Background background, Model model) {
		
		Youth youth = (Youth) model.asMap().get("youth");
		youth.setBackground(background);
		background.setYouth(youth);
		
		model.addAttribute("youth", youth);
		
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
	public String saveEmploymentInformation(Employment employment, Model model) {
		
		Youth youth = (Youth) model.asMap().get("youth");
		youth.setEmployment(employment);
		employment.setYouth(youth);
		
		model.addAttribute("youth", youth);
		
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
	public String saveReleaseInformation(Signature signature, Model model) {
		
		Youth youth = (Youth) model.asMap().get("youth");
		youth.setSignature(signature);
		signature.setYouth(youth);
		youthService.save(youth);
		
		setMaxStep(model, 6);
		
		return "redirect:/experience";
	}
	
	private void setMaxStep(Model model, int currentStep) {
		Object maxStep = model.asMap().get("maxStep");
		
		if(maxStep == null || currentStep > (int) maxStep) {
			model.addAttribute("maxStep", currentStep);
		}
	}
}
