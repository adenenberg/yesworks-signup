package com.yesworks.signup.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "SIGNATURE")
public class Signature implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "SIGNATURE_ID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "ACCEPT_RELEASE")
	private boolean acceptRelease;
	
	@Column(name = "FIRST_VISIT")
	private boolean isFirstVisit;
	
	@Column(name = "REFERRAL")
	private String referral;
	
	@Column(name = "SIGNATURE")
	private String signature;
	
	@OneToOne(targetEntity = Youth.class, optional = false)
	@JoinColumn(name = "YOUTH_ID")
	private Youth youth;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public boolean isAcceptRelease() {
		return acceptRelease;
	}

	public void setAcceptRelease(boolean acceptRelease) {
		this.acceptRelease = acceptRelease;
	}

	public boolean isFirstVisit() {
		return isFirstVisit;
	}

	public void setFirstVisit(boolean isFirstVisit) {
		this.isFirstVisit = isFirstVisit;
	}

	public String getReferral() {
		return referral;
	}

	public void setReferral(String referral) {
		this.referral = referral;
	}

	public String getSignature() {
		return signature;
	}

	public void setSignature(String signature) {
		this.signature = signature;
	}

	public Youth getYouth() {
		return youth;
	}

	public void setYouth(Youth youth) {
		this.youth = youth;
	}
	
}
