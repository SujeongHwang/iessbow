package com.lmmf.course.lbt.service;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lmmf.course.entity.LunBoTu;
import com.lmmf.course.lbt.dao.LunBoTuDaoImpl;
import com.lmmf.framework.Page;
/**
 * 
 */

@Service
@Transactional(readOnly=false)
public class LunBoTuServiceImpl {
	
	@Resource
	private LunBoTuDaoImpl lbtDaoImpl;
	
	public void addLunBoTu(LunBoTu lbt){
		
		this.lbtDaoImpl.saveLunBoTu(lbt);
		
	}


	@Transactional(readOnly=true)
	public Page<LunBoTu> listLunBoTu(int pageNum,int pageSize){
		return this.lbtDaoImpl.findLunBoTu(pageNum, pageSize);
	}
	@Transactional(readOnly=true)
	public LunBoTu getLunBoTu(int id_SYLB){
		return this.lbtDaoImpl.getLunBoTu(id_SYLB);
	}
	
	public void editLunBoTu(LunBoTu lbt){
		LunBoTu lbta=this.lbtDaoImpl.getLunBoTu(lbt.getId_SYLB());
		lbta.setPictureURL_href(lbt.getPictureURL_href());
		this.lbtDaoImpl.updateLunBoTu(lbta);
	}
	
	public void dropLunBoTu(int id_SYLB){
		this.lbtDaoImpl.deleteLunBoTu(id_SYLB);
	}

}
