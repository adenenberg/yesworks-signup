package com.yesworks.signup.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "EXPERIENCE")
public class Experience implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "EXPERIENCE_ID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "COMPANY_NAME")
	private String companyName;
	
	@Column(name = "START_DATE")
	private Date startDate;
	
	@Column(name = "END_DATE")
	private Date endDate;
	
	@Column(name = "JOB_TITLE")
	private String jobTitle;
	
	@Column(name = "PAY_RATE_AMOUNT")
	private String payRateAmount;
	
	@Column(name = "PAY_RATE_INTERVAL")
	private String payRateInterval;
	
	@Column(name = "HOURS_PER_WEEK")
	private int hoursPerWeek;
	
	@Column(name = "JOB_DUTIES")
	private String jobDuties;
	
	@Column(name = "REASON_FOR_LEAVING")
	private String reasonForLeaving;
	
	@Column(name = "LEAVING_TERMS")
	private String leavingTerms;
	
	@ManyToOne(targetEntity = Youth.class)
	@JoinColumn(name = "YOUTH_ID")
	private Youth youth;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public String getPayRateAmount() {
		return payRateAmount;
	}

	public void setPayRateAmount(String payRateAmount) {
		this.payRateAmount = payRateAmount;
	}

	public String getPayRateInterval() {
		return payRateInterval;
	}

	public void setPayRateInterval(String payRateInterval) {
		this.payRateInterval = payRateInterval;
	}

	public int getHoursPerWeek() {
		return hoursPerWeek;
	}

	public void setHoursPerWeek(int hoursPerWeek) {
		this.hoursPerWeek = hoursPerWeek;
	}

	public String getJobDuties() {
		return jobDuties;
	}

	public void setJobDuties(String jobDuties) {
		this.jobDuties = jobDuties;
	}

	public String getReasonForLeaving() {
		return reasonForLeaving;
	}

	public void setReasonForLeaving(String reasonForLeaving) {
		this.reasonForLeaving = reasonForLeaving;
	}

	public String getLeavingTerms() {
		return leavingTerms;
	}

	public void setLeavingTerms(String leavingTerms) {
		this.leavingTerms = leavingTerms;
	}
	
	public Youth getYouth() {
		return youth;
	}

	public void setYouth(Youth youth) {
		this.youth = youth;
	}
}
