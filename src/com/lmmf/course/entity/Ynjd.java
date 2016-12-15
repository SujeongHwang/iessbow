package com.lmmf.course.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="ynjd")
public class Ynjd {
	Integer id_YN;
	String question;
	String answer;
	String leiXing;
	String answerURL;
	

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId_YN() {
		return id_YN;
	}
	public void setId_YN(Integer id_YN) {
		this.id_YN = id_YN;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getLeiXing() {
		return leiXing;
	}
	public void setLeiXing(String leiXing) {
		this.leiXing = leiXing;
	}
	public String getAnswerURL() {
		return answerURL;
	}
	public void setAnswerURL(String answerURL) {
		this.answerURL = answerURL;
	}
}
