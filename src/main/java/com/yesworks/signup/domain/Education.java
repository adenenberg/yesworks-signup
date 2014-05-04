package com.yesworks.signup.domain;

import java.io.Serializable;

import javax.persistence.Column;
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
@Table(name = "EDUCATION")
public class Education implements Serializable {

	private static final long serialVersionUID = 1L;
	
	public enum SchoolType {
		HIGH_SCHOOL,
		COLLEGE
	}
	
	@Id
	@Column(name = "EDUCATION_ID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "SCHOOL_NAME")
	private String schoolName;
	
	@Column(name = "SCHOOL_TYPE")
	@Enumerated(EnumType.STRING)
	private SchoolType schoolType;
	
	@Column(name = "SCHOOL_YEARS_COMPLETED")
	private int schoolYearsCompleted;
	
	@Column(name = "EDUCATIONAL_ATTAINMENT")
	private String educationalAttainment;
	
	@OneToOne(targetEntity = Youth.class, optional = false)
	@JoinColumn(name = "YOUTH_ID")
	private Youth youth;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSchoolName() {
		return schoolName;
	}

	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}

	public SchoolType getSchoolType() {
		return schoolType;
	}

	public void setSchoolType(SchoolType schoolType) {
		this.schoolType = schoolType;
	}

	public int getSchoolYearsCompleted() {
		return schoolYearsCompleted;
	}

	public void setSchoolYearsCompleted(int schoolYearsCompleted) {
		this.schoolYearsCompleted = schoolYearsCompleted;
	}

	public String getEducationalAttainment() {
		return educationalAttainment;
	}

	public void setEducationalAttainment(String educationalAttainment) {
		this.educationalAttainment = educationalAttainment;
	}

	public Youth getYouth() {
		return youth;
	}

	public void setYouth(Youth youth) {
		this.youth = youth;
	}
	
}
