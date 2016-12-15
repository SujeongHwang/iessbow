package com.lmmf.course.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 由郭可完成
 * 实现新闻页和消息页的功能
 * 需要有增删改查
 */

@Entity
@Table(name="news")
public class News {
	
	Integer id_news;
	Date time;
	String biaoTi;
	String neiRongURL;
	Boolean isFaBu;
	Boolean isKorean;
	Boolean isJapanese;
	Boolean isIndonesians;
	Boolean isBrazilians;
	String  leiXing;
	String  neiRong;
	
	public String getNeiRong() {
		return neiRong;
	}
	public void setNeiRong(String neiRong) {
		this.neiRong = neiRong;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId_news() {
		return id_news;
	}
	public void setId_news(Integer id_news) {
		this.id_news = id_news;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getBiaoTi() {
		return biaoTi;
	}
	public void setBiaoTi(String biaoTi) {
		this.biaoTi = biaoTi;
	}
	public String getNeiRongURL() {
		return neiRongURL;
	}
	public void setNeiRongURL(String neiRongURL) {
		this.neiRongURL = neiRongURL;
	}
	public Boolean getIsFaBu() {
		return isFaBu;
	}
	public void setIsFaBu(Boolean isFaBu) {
		this.isFaBu = isFaBu;
	}
	public Boolean getIsKorean() {
		return isKorean;
	}
	public void setIsKorean(Boolean isKorean) {
		this.isKorean = isKorean;
	}
	public Boolean getIsJapanese() {
		return isJapanese;
	}
	public void setIsJapanese(Boolean isJapanese) {
		this.isJapanese = isJapanese;
	}
	public Boolean getIsIndonesians() {
		return isIndonesians;
	}
	public void setIsIndonesians(Boolean isIndonesians) {
		this.isIndonesians = isIndonesians;
	}
	public Boolean getIsBrazilians() {
		return isBrazilians;
	}
	public void setIsBrazilians(Boolean isBrazilians) {
		this.isBrazilians = isBrazilians;
	}
	public String getLeiXing() {
		return leiXing;
	}
	public void setLeiXing(String leiXing) {
		this.leiXing = leiXing;
	}

}
