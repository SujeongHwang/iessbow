package com.lmmf.course.lbt.dao;

import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.lmmf.course.entity.LunBoTu;

import com.lmmf.framework.BaseDao;
import com.lmmf.framework.Page;
/**
 *
 */

@Repository
public class LunBoTuDaoImpl extends BaseDao<LunBoTu, Integer> {
	
	@Resource
	private SessionFactory sessionFactory;
	public void saveLunBoTu(LunBoTu lbt){
		try {
			
			Session session = sessionFactory.getCurrentSession();
			session.save(lbt);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Page<LunBoTu> findLunBoTu(int pageNum, int pageSize){
		String hql;
		hql="from LunBoTu";
		try {
			
			Page<LunBoTu> page=new Page<LunBoTu>();
	
			page.setCurrentPageNum(pageNum);
			
			page.setPageSize(pageSize);
		
			page=this.findByPage(pageNum, pageSize, hql,null);
			
			return page;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	public LunBoTu getLunBoTu(int id_SYLB){
		try {
			LunBoTu lbt=this.get(id_SYLB);
			return lbt;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	public void updateLunBoTu(LunBoTu lbt){
		try {
			this.update(lbt);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void deleteLunBoTu(int id_SYLB){
		try {
			this.delete(id_SYLB);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
