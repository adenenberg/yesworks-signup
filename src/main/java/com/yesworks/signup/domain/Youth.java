package com.yesworks.signup.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "YOUTH")
public class Youth implements Serializable {

	private static final long serialVersionUID = 1L;
	
	public enum MaritalStatus {
		MARRIED,
		SINGLE
	}
	
	public enum Gender {
		MALE,
		FEMALE
	}
	
	@Id
	@Column(name = "YOUTH_ID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "FIRST_NAME")
	private String firstName;
	
	@Column(name = "LAST_NAME")
	private String lastName;
	
	@Column(name = "MIDDLE_INITIAL")
	private String middleInitial;
	
	@Column(name = "LAST_FOUR_SOCIAL")
	private String lastFourSocial;
	
	@Column(name = "MARITAL_STATUS")
	@Enumerated(EnumType.STRING)
	private MaritalStatus maritalStatus;
	
	@Column(name = "NUMBER_OF_CHILDREN")
	private int numberOfChildren;
	
	@Column(name = "GENDER")
	@Enumerated(EnumType.STRING)
	private Gender gender;
	
	@Column(name = "BIRTH_DATE")
	private Date birthDate;
	
	@Column(name = "AGE")
	private int age;
	
	@OneToOne(mappedBy = "youth", targetEntity = Address.class, cascade = CascadeType.ALL)
	private Address address;
	
	@OneToOne(mappedBy = "youth", targetEntity = Education.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "YOUTH_ID")
	private Education education;
	
	@OneToOne(mappedBy = "youth", targetEntity = Background.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "YOUTH_ID")
	private Background background;
	
	@OneToOne(mappedBy = "youth", targetEntity = Employment.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "YOUTH_ID")
	private Employment employment;
	
	@OneToOne(mappedBy = "youth", targetEntity = Signature.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "YOUTH_ID")
	private Signature signature;
	
	@OneToMany(targetEntity = Experience.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "YOUTH_ID")
	private List<Experience> experience = new ArrayList<Experience>();

	@OneToMany(targetEntity = Survey.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "YOUTH_ID")
	private List<Survey> surveys = new ArrayList<Survey>();

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMiddleInitial() {
		return middleInitial;
	}

	public void setMiddleInitial(String middleInitial) {
		this.middleInitial = middleInitial;
	}

	public String getLastFourSocial() {
		return lastFourSocial;
	}

	public void setLastFourSocial(String lastFourSocial) {
		this.lastFourSocial = lastFourSocial;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public MaritalStatus getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(MaritalStatus maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public int getNumberOfChildren() {
		return numberOfChildren;
	}

	public void setNumberOfChildren(int numberOfChildren) {
		this.numberOfChildren = numberOfChildren;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Education getEducation() {
		return education;
	}

	public void setEducation(Education education) {
		this.education = education;
	}

	public Background getBackground() {
		return background;
	}

	public void setBackground(Background background) {
		this.background = background;
	}

	public Employment getEmployment() {
		return employment;
	}

	public void setEmployment(Employment employment) {
		this.employment = employment;
	}
	
	public Signature getSignature() {
		return signature;
	}

	public void setSignature(Signature signature) {
		this.signature = signature;
	}
	
	public List<Experience> getExperience() {
		return experience;
	}

	public void setExperience(List<Experience> experience) {
		this.experience = experience;
	}

	public List<Survey> getSurveys() {
		return surveys;
	}

	public void setSurveys(List<Survey> surveys) {
		this.surveys = surveys;
	}
	
}
