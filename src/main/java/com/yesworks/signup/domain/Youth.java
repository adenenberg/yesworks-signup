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
import javax.persistence.OneToMany;
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
	
	@OneToMany(mappedBy = "youth", targetEntity = Address.class, cascade = CascadeType.ALL)
	private List<Address> addresses = new ArrayList<Address>();
	
	@Column(name = "MARITAL_STATUS")
	@Enumerated(EnumType.STRING)
	private MaritalStatus maritalStatus;
	
	@Column(name = "NUMBER_OF_CHILDREN")
	private int numberOfChildren;
	
	@Column(name = "GENDER")
	@Enumerated(EnumType.STRING)
	private Gender gender;
	
	@Column(name = "HOME_PHONE")
	private String homePhone;
	
	@Column(name = "CELL_PHONE")
	private String cellPhone;
	
	@Column(name = "BIRTH_DATE")
	private Date birthDate;
	
	@Column(name = "AGE")
	private int age;

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

	public List<Address> getAddresses() {
		return addresses;
	}

	public void setAddresses(List<Address> addresses) {
		this.addresses = addresses;
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

	public String getHomePhone() {
		return homePhone;
	}

	public void setHomePhone(String homePhone) {
		this.homePhone = homePhone;
	}

	public String getCellPhone() {
		return cellPhone;
	}

	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
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
	
}
