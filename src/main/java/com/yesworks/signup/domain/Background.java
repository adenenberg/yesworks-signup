package com.yesworks.signup.domain;

import java.io.Serializable;
import java.math.BigDecimal;
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
@Table(name = "BACKGROUND")
public class Background implements Serializable {

	private static final long serialVersionUID = 1L;
	
	public enum Race {
		AMERICAN_INDIAN_OR_ALASKA_NATIVE,
		ASIAN,
		BLACK_OR_AFRICAN_AMERICAN,
		NATIVE_HAWAIIAN_OR_PACIFIC_ISLANDER,
		WHITE
	}
	
	@Id
	@Column(name = "BACKGROUND_ID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "IS_HISPANIC")
	private boolean isHispanic;
	
	@Column(name = "RACE")
	@Enumerated(EnumType.STRING)
	@ElementCollection
	private Set<Race> race;
	
	@Column(name = "LIVING_SITUATION")
	private String livingSituation;
	
	@Column(name = "FINANCIAL_SUPPORTER")
	private String financialSupporter;
	
	@Column(name = "ANNUAL_INCOME")
	private BigDecimal annualIncome;
	
	@Column(name = "NUM_SUPPORTED_BY_INCOME")
	private int numSupportedByIncome;
	
	@Column(name = "HAS_CHECKING_ACCOUNT")
	private boolean hasCheckingAccount;
	
	@Column(name = "HAS_SAVINGS_ACCOUNT")
	private boolean hasSavingsAccount;
	
	@OneToOne(targetEntity = Youth.class, optional = false)
	@JoinColumn(name = "YOUTH_ID")
	private Youth youth;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public boolean isHispanic() {
		return isHispanic;
	}

	public void setHispanic(boolean isHispanic) {
		this.isHispanic = isHispanic;
	}

	public Set<Race> getRace() {
		return race;
	}

	public void setRace(Set<Race> race) {
		this.race = race;
	}

	public String getLivingSituation() {
		return livingSituation;
	}

	public void setLivingSituation(String livingSituation) {
		this.livingSituation = livingSituation;
	}

	public String getFinancialSupporter() {
		return financialSupporter;
	}

	public void setFinancialSupporter(String financialSupporter) {
		this.financialSupporter = financialSupporter;
	}

	public BigDecimal getAnnualIncome() {
		return annualIncome;
	}

	public void setAnnualIncome(BigDecimal annualIncome) {
		this.annualIncome = annualIncome;
	}

	public int getNumSupportedByIncome() {
		return numSupportedByIncome;
	}

	public void setNumSupportedByIncome(int numSupportedByIncome) {
		this.numSupportedByIncome = numSupportedByIncome;
	}

	public boolean hasCheckingAccount() {
		return hasCheckingAccount;
	}

	public void setHasCheckingAccount(boolean hasCheckingAccount) {
		this.hasCheckingAccount = hasCheckingAccount;
	}

	public boolean hasSavingsAccount() {
		return hasSavingsAccount;
	}

	public void setHasSavingsAccount(boolean hasSavingsAccount) {
		this.hasSavingsAccount = hasSavingsAccount;
	}
	
	public Youth getYouth() {
		return youth;
	}

	public void setYouth(Youth youth) {
		this.youth = youth;
	}
	
}
