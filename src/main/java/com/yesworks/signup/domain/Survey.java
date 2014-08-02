package com.yesworks.signup.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "SURVEY")
public class Survey implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "SURVEY_ID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@OneToMany(targetEntity = Question.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "SURVEY_ID")
	private List<Question> questions = new ArrayList<Question>();
	
	@ManyToOne(targetEntity = Youth.class)
	@JoinColumn(name = "YOUTH_ID")
	private Youth youth;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<Question> getQuestions() {
		return questions;
	}

	public void setQuestions(List<Question> questions) {
		this.questions = questions;
	}

	public Youth getYouth() {
		return youth;
	}

	public void setYouth(Youth youth) {
		this.youth = youth;
	}

}
