package com.yesworks.signup.domain;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "EMPLOYMENT")
public class Employment implements Serializable {

	private static final long serialVersionUID = 1L;
	
	public enum JobType {
		FULL_TIME,
		PART_TIME,
		SEASONAL_TEMPORARY,
		WEEKENDS_ONLY
	}
	
	@Id
	@Column(name = "EMPLOYMENT_ID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "SUNDAY_HOURS_FROM")
	private String sundayHoursFrom;
	
	@Column(name = "SUNDAY_HOURS_TO")
	private String sundayHoursTo;
	
	@Column(name = "MONDAY_HOURS_FROM")
	private String mondayHoursFrom;
	
	@Column(name = "MONDAY_HOURS_TO")
	private String mondayHoursTo;
	
	@Column(name = "TUESDAY_HOURS_FROM")
	private String tuesdayHoursFrom;
	
	@Column(name = "TUESDAY_HOURS_TO")
	private String tuesdayHoursTo;
	
	@Column(name = "WEDNESDAY_HOURS_FROM")
	private String wednesdayHoursFrom;
	
	@Column(name = "WEDNESDAY_HOURS_TO")
	private String wednesdayHoursTo;
	
	@Column(name = "THURSDAY_HOURS_FROM")
	private String thursdayHoursFrom;
	
	@Column(name = "THURSDAY_HOURS_TO")
	private String thursdayHoursTo;
	
	@Column(name = "FRIDAY_HOURS_FROM")
	private String fridayHoursFrom;
	
	@Column(name = "FRIDAY_HOURS_TO")
	private String fridayHoursTo;
	
	@Column(name = "SATURDAY_HOURS_FROM")
	private String saturdayHoursFrom;
	
	@Column(name = "SATURDAY_HOURS_TO")
	private String saturdayHoursTo;
	
	@Column(name = "SKILLS")
	private String skills;
	
	@Column(name = "JOB_TYPE")
	@Enumerated(EnumType.STRING)
	@ElementCollection
	private Set<JobType> jobType;
	
	@Column(name = "JOB_KIND")
	private String jobKind;
	
	@Column(name = "DREAM_CAREER")
	private String dreamCareer;
	
	@Column(name = "ADDITIONAL_CHALLENGES")
	private String additionalChallenges;
	
	@OneToOne(targetEntity = Youth.class, optional = false)
	@JoinColumn(name = "YOUTH_ID")
	private Youth youth;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSundayHoursFrom() {
		return sundayHoursFrom;
	}

	public void setSundayHoursFrom(String sundayHoursFrom) {
		this.sundayHoursFrom = sundayHoursFrom;
	}

	public String getSundayHoursTo() {
		return sundayHoursTo;
	}

	public void setSundayHoursTo(String sundayHoursTo) {
		this.sundayHoursTo = sundayHoursTo;
	}

	public String getMondayHoursFrom() {
		return mondayHoursFrom;
	}

	public void setMondayHoursFrom(String mondayHoursFrom) {
		this.mondayHoursFrom = mondayHoursFrom;
	}

	public String getMondayHoursTo() {
		return mondayHoursTo;
	}

	public void setMondayHoursTo(String mondayHoursTo) {
		this.mondayHoursTo = mondayHoursTo;
	}

	public String getTuesdayHoursFrom() {
		return tuesdayHoursFrom;
	}

	public void setTuesdayHoursFrom(String tuesdayHoursFrom) {
		this.tuesdayHoursFrom = tuesdayHoursFrom;
	}

	public String getTuesdayHoursTo() {
		return tuesdayHoursTo;
	}

	public void setTuesdayHoursTo(String tuesdayHoursTo) {
		this.tuesdayHoursTo = tuesdayHoursTo;
	}

	public String getWednesdayHoursFrom() {
		return wednesdayHoursFrom;
	}

	public void setWednesdayHoursFrom(String wednesdayHoursFrom) {
		this.wednesdayHoursFrom = wednesdayHoursFrom;
	}

	public String getWednesdayHoursTo() {
		return wednesdayHoursTo;
	}

	public void setWednesdayHoursTo(String wednesdayHoursTo) {
		this.wednesdayHoursTo = wednesdayHoursTo;
	}

	public String getThursdayHoursFrom() {
		return thursdayHoursFrom;
	}

	public void setThursdayHoursFrom(String thursdayHoursFrom) {
		this.thursdayHoursFrom = thursdayHoursFrom;
	}

	public String getThursdayHoursTo() {
		return thursdayHoursTo;
	}

	public void setThursdayHoursTo(String thursdayHoursTo) {
		this.thursdayHoursTo = thursdayHoursTo;
	}

	public String getFridayHoursFrom() {
		return fridayHoursFrom;
	}

	public void setFridayHoursFrom(String fridayHoursFrom) {
		this.fridayHoursFrom = fridayHoursFrom;
	}

	public String getFridayHoursTo() {
		return fridayHoursTo;
	}

	public void setFridayHoursTo(String fridayHoursTo) {
		this.fridayHoursTo = fridayHoursTo;
	}

	public String getSaturdayHoursFrom() {
		return saturdayHoursFrom;
	}

	public void setSaturdayHoursFrom(String saturdayHoursFrom) {
		this.saturdayHoursFrom = saturdayHoursFrom;
	}

	public String getSaturdayHoursTo() {
		return saturdayHoursTo;
	}

	public void setSaturdayHoursTo(String saturdayHoursTo) {
		this.saturdayHoursTo = saturdayHoursTo;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	public Set<JobType> getJobType() {
		return jobType;
	}

	public void setJobType(Set<JobType> jobType) {
		this.jobType = jobType;
	}

	public String getJobKind() {
		return jobKind;
	}

	public void setJobKind(String jobKind) {
		this.jobKind = jobKind;
	}

	public String getDreamCareer() {
		return dreamCareer;
	}

	public void setDreamCareer(String dreamCareer) {
		this.dreamCareer = dreamCareer;
	}

	public String getAdditionalChallenges() {
		return additionalChallenges;
	}

	public void setAdditionalChallenges(String additionalChallenges) {
		this.additionalChallenges = additionalChallenges;
	}

	public Youth getYouth() {
		return youth;
	}

	public void setYouth(Youth youth) {
		this.youth = youth;
	}
	
}
