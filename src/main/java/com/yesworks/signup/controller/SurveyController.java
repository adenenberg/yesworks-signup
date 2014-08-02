package com.yesworks.signup.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.yesworks.signup.domain.Survey;
import com.yesworks.signup.domain.Youth;
import com.yesworks.signup.service.YouthService;

@Controller
@RequestMapping("/survey")
@SessionAttributes({"youth"})
public class SurveyController {

	@Resource
	private YouthService youthService;
	
	@RequestMapping(value = "/finance", method = RequestMethod.GET)
	public String getFinanceSurvey(Model model, SessionStatus sessionStatus) {
		
		model.addAttribute("survey", "finance");
		
		return "/jsp/survey/surveyContainer";
	}
	
	@RequestMapping(value = "/finance", method = RequestMethod.POST)
	public String setFinanceSurvey(@RequestBody Survey survey, Model model) {
		
		Youth youth = (Youth) model.asMap().get("youth");
		youth.getSurveys().add(survey);
		
		return "redirect:/survey/skills";
	}
	
	@RequestMapping(value = "/skills", method = RequestMethod.GET)
	public String getSkillsSurvey(Model model) {
		
		model.addAttribute("survey", "skills");
		
		return "/jsp/survey/surveyContainer";
	}
	
	@RequestMapping(value = "/skills", method = RequestMethod.POST)
	public String setSkillsSurvey(@RequestBody Survey survey, Model model) {
		Youth youth = (Youth) model.asMap().get("youth");
		youth.getSurveys().add(survey);
		
		youthService.save(youth);
		
		return "redirect:/finish";
	}
}
