package com.lmmf.course.ynjd.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lmmf.course.entity.Ynjd;
import com.lmmf.course.ynjd.dao.YnjdDaoImpl;
import com.lmmf.framework.Page;

@Service
@Transactional(readOnly=false)
public class YnjdServiceImpl {
	@Resource
	private YnjdDaoImpl ynjdDaoImpl;
	public void addYnjd(Ynjd ynjd){
		this.ynjdDaoImpl.saveYnjd(ynjd);
	}
	@Transactional(readOnly=true)
	public Page<Ynjd> listYnjd(int pageNum,int pageSize,Object[] params,String leiXing){	
			return this.ynjdDaoImpl.findYnjd(pageNum, pageSize, params,leiXing);
	}
	@Transactional(readOnly=true)
	public Ynjd getYnjd(int id_YN){
		return this.ynjdDaoImpl.getYnjd(id_YN);
	}	
	public void editYnjd(Ynjd ynjd){
		Ynjd ynjd02 = this.ynjdDaoImpl.getYnjd(ynjd.getId_YN());
//		ynjd02.setTime(ynjd.getTime());
		this.ynjdDaoImpl.updateYnjd(ynjd02);
	}
	public void dropYnjd(int id_YN){
		this.ynjdDaoImpl.deleteYnjd(id_YN);
	}
}
