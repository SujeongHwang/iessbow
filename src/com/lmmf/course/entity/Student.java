package com.lmmf.course.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 由王鹏帆完成
 * 实现用户第一次使用微信记录相关信息
 */

@Entity
@Table(name="student")
public class Student {
	Integer id_Stu;
	String guoJi;
	String niCheng;
	String touXiangURL;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId_Stu() {
		return id_Stu;
	}
	public void setId_Stu(Integer id_Stu) {
		this.id_Stu = id_Stu;
	}
	public String getGuoJi() {
		return guoJi;
	}
	public void setGuoJi(String guoJi) {
		this.guoJi = guoJi;
	}
	public String getNiCheng() {
		return niCheng;
	}
	public void setNiCheng(String niCheng) {
		this.niCheng = niCheng;
	}
	public String getTouXiangURL() {
		return touXiangURL;
	}
	public void setTouXiangURL(String touXiangURL) {
		this.touXiangURL = touXiangURL;
	}
	public String getYuYan() {
		return yuYan;
	}
	public void setYuYan(String yuYan) {
		this.yuYan = yuYan;
	}
	String yuYan;
}
