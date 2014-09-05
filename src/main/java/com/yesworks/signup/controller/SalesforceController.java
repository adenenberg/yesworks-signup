package com.yesworks.signup.controller;

import java.util.Calendar;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.sforce.soap.enterprise.EnterpriseConnection;
import com.sforce.soap.enterprise.GetUserInfoResult;
import com.sforce.soap.enterprise.SaveResult;
import com.sforce.soap.enterprise.sobject.Kid__c;
import com.sforce.soap.enterprise.sobject.SObject;
import com.sforce.ws.ConnectionException;
import com.sforce.ws.ConnectorConfig;
import com.yesworks.signup.domain.Youth;

@Controller
@RequestMapping("/salesforce")
@SessionAttributes({"youth"})
public class SalesforceController {

	private EnterpriseConnection connection;
	
	@Value("${salesforce.endpoint.url}")
	private String endpointUrl;
	
	@Value("${salesforce.username}")
	private String username;
	
	@Value("${salesforce.password}")
	private String password;
	
	@Value("${salesforce.securityToken}")
	private String securityToken;
	
	@RequestMapping(value = "/export", method = RequestMethod.GET)
	public String exportToSalesforce(Model model, SessionStatus sessionStatus) {
		
		boolean success = false;
		Youth youth = (Youth) model.asMap().get("youth");

		try {
			System.out.println("***Salesforce test***");
			ConnectorConfig config = new ConnectorConfig();
			config.setUsername(username);
			config.setPassword(password + securityToken);
			
			System.out.println("AuthEndPoint: " + endpointUrl);
			config.setAuthEndpoint(endpointUrl);
			
			connection = new EnterpriseConnection(config);
			printUserInfo(config);
			
			success = true;
			
			Kid__c kid = new Kid__c();
			kid.setFirstName__c(youth.getFirstName());
			kid.setLastName__c(youth.getLastName());
			kid.setMiddleInitial__c(youth.getMiddleInitial());
			kid.setRefferedByOther__c(youth.getSignature().getReferral());
			kid.setGender__c(youth.getGender().toString());
			kid.setBirthdate__c(Calendar.getInstance(youth.getBirthDate()));
			kid.setCurrentStreet__c(youth.getAddress().getCurrentAddressLine1() + " " + youth.getAddress().getCurrentAddressLine2());
			kid.setCurrentCity__c(youth.getAddress().getCurrentCity());
			kid.setCurrentState__c(youth.getAddress().getCurrentState());
			kid.setCurrentPostalCode__c(youth.getAddress().getCurrentZipCode());
			kid.setPermanentStreet__c(youth.getAddress().getPermanentAddressLine1() + " " + youth.getAddress().getPermanentAddressLine2());
			kid.setPermanentCity__c(youth.getAddress().getPermanentCity());
			kid.setPermanentState__c(youth.getAddress().getPermanentState());
			kid.setPermanentPostalCode__c(youth.getAddress().getPermanentZipCode());
			kid.setHomePhone__c(youth.getAddress().getHomePhone());
			kid.setCellPhone__c(youth.getAddress().getCellPhone());
			kid.setEmail__c();
//			kid.setOtherPhone__c(youth.getAddress().getO);
			
//			kid.setMothersName__c();
//			kid.setMothersPhone__c(MothersPhone__c);
//			kid.setMothersEmail__c(MothersEmail__c);
//			kid.setFathersName__c(FathersName__c);
//			kid.setFathersPhone__c(FathersPhone__c);
//			kid.setFathersEmail__c(FathersEmail__c);
//			kid.setGuardiansName__c(GuardiansName__c);
//			kid.setGuardiansPhone__c(GuardiansPhone__c);
//			kid.setGuardiansEmail__c(GuardiansEmail__c);
			
			kid.setSchool__c(youth.getEducation().getSchoolName());
			kid.setGradeCompleted__c(GradeCompleted__c);
			kid.setDreamCareer__c(youth.getEmployment().getDreamCareer());
//			kid.setEducationalAttainment__c(EducationalAttainment__c);
			kid.setEducationalAttainmentOther__c(youth.getEducation().getEducationalAttainment());
			
//			kid.setLivingArrangement__c();
			kid.setLivingArrangementOther__c(youth.getBackground().getLivingSituation());
//			kid.setFinanciallySupports__c(FinanciallySupports__c);
			kid.setFinanciallySupportsOther__c(FinanciallySupportsOther__c);
			kid.setCheckingAccount__c(CheckingAccount__c);
			kid.setSavingsAccount__c(SavingsAccount__c);
			kid.setMaritalStatus__c(MaritalStatus__c);
			kid.setNumberChildren__c(NumberChildren__c);
			kid.setNumberInHousehold__c(NumberInHousehold__c);
			kid.setFamilyAnnualIncome__c(FamilyAnnualIncome__c);
			kid.setEthnicity__c(Ethnicity__c);
			kid.setRace__c(Race__c);
			kid.setSurveyDate__c(Calendar.getInstance());
			kid.setFirstVisit__c(FirstVisit__c);
			kid.setSignature__c(Signature__c);
			kid.setKid_Id__c(99999d);
			
			SaveResult[] results = connection.create(new SObject[] { kid });
		}
		catch (ConnectionException ce) {
			ce.printStackTrace();
		} 
		
//		return "/jsp/survey/surveyContainer";
		return "";
	}
	
	
	private void printUserInfo(ConnectorConfig config) {
		try {
			GetUserInfoResult userInfo = connection.getUserInfo();

			System.out.println("\nLogging in ...\n");
			System.out.println("UserID: " + userInfo.getUserId());
			System.out.println("User Full Name: " + userInfo.getUserFullName());
			System.out.println("User Email: " + userInfo.getUserEmail());
			System.out.println();
			System.out.println("SessionID: " + config.getSessionId());
			System.out.println("Auth End Point: " + config.getAuthEndpoint());
			System.out.println("Service End Point: "
					+ config.getServiceEndpoint());
			System.out.println();
		} catch (ConnectionException ce) {
			ce.printStackTrace();
		}
	}
}
