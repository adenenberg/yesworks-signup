package com.yesworks.signup.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.yesworks.signup.domain.Experience;
import com.yesworks.signup.domain.Youth;
import com.yesworks.signup.service.YouthService;

@Controller
@RequestMapping("/experience")
@SessionAttributes({"youth"})
public class ExperienceController {

	@Resource
	private YouthService youthService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getExperience(Model model, SessionStatus sessionStatus) {
		
		return "/jsp/experience/experienceContainer";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveExperience(Experience experience, Model model) {
		
		Youth youth = (Youth) model.asMap().get("youth");
		youth.getExperience().add(experience);
		
		youthService.save(youth);
		
		return "redirect:/experience";
	}
	
	@RequestMapping(value = "/continue", method = RequestMethod.POST)
	public String setExperience(Experience experience, Model model) {
		
		Youth youth = (Youth) model.asMap().get("youth");
		youth.getExperience().add(experience);
		
		youthService.save(youth);
		
		return "redirect:/survey/finance";
	}
}
