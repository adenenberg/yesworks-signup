package com.yesworks.signup.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "QUESTION")
public class Question implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "QUESTION_ID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "QUESTION_TEXT")
	private String questionText;
	
	@Column(name = "QUESTION_ANSWER")
	private boolean questionAnswer;
	
	@ManyToOne(targetEntity = Survey.class)
	@JoinColumn(name = "SURVEY_ID")
	private Survey survey;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getQuestionText() {
		return questionText;
	}

	public void setQuestionText(String questionText) {
		this.questionText = questionText;
	}

	public boolean isQuestionAnswer() {
		return questionAnswer;
	}

	public void setQuestionAnswer(boolean questionAnswer) {
		this.questionAnswer = questionAnswer;
	}

	public Survey getSurvey() {
		return survey;
	}

	public void setSurvey(Survey survey) {
		this.survey = survey;
	}
	
}
