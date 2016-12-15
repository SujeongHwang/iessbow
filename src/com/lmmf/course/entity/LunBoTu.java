package com.lmmf.course.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 由岳伟玺完成
 * 实现首页轮播图
 * 需要有增删改查功能
 */

@Entity
@Table(name="shouyelunbotu")
public class LunBoTu {
	Integer id_SYLB;
	String PictureURL_href;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId_SYLB() {
		return id_SYLB;
	}
	public void setId_SYLB(Integer id_SYLB) {
		this.id_SYLB = id_SYLB;
	}
	public String getPictureURL_href() {
		return PictureURL_href;
	}
	public void setPictureURL_href(String pictureURL_href) {
		PictureURL_href = pictureURL_href;
	}
}
