package com.yesworks.signup.controller;

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
			kid.setFirstName__c("Testfirstname");
			kid.setLastName__c("Testlastname");
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
