package com.lmmf.course.ynjd.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.lmmf.course.entity.Ynjd;
import com.lmmf.framework.BaseDao;
import com.lmmf.framework.Page;

@Repository
public class YnjdDaoImpl extends BaseDao<Ynjd,Integer> {
	
	@Resource
	private SessionFactory sessionFactory;
	
	
	public void saveYnjd(Ynjd ynjd){
		try{
			Session session = sessionFactory.getCurrentSession();
			session.save(ynjd);
			//this.save(ynjd);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public Page<Ynjd> editYnjd(int id_ynjd){
		String hql;
			hql="from Ynjd ynjd where ynjd.id_ynjd="+id_ynjd;	
		try{
			Page<Ynjd> page = new Page<Ynjd>();
			page.setCurrentPageNum(1);	
			page.setPageSize(5000);	
			page=this.findByPage(1,5000, hql,null);
			return page;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	//此方法用于首页新闻
	public Page<Ynjd> findYnjd(int pageNum,int pageSize,Object[] params,String leiXing){
		String hql;
		if(params!=null&&params.length>0){
			hql="from Ynjd ynjd where ynjd.answer like ?";
			params[0]="%" + params[0]+"%";
		}else{			
			hql="from Ynjd ynjd where ynjd.leiXing="+"'"+leiXing+"'";
		}
		try{
			Page<Ynjd> page = new Page<Ynjd>();
			page.setCurrentPageNum(pageNum);	
			page.setPageSize(pageSize);	
			page=this.findByPage(pageNum, pageSize, hql, params);
			return page;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	//此方法用于定向新闻
	public Page<Ynjd> findYnjdDX(int pageNum,int pageSize,Object[] params,String guoji){
		String hql;
		if(params!=null&&params.length>0){
			hql="from Ynjd ynjd where ynjd.id_ynjd like ?";
			params[0]="%" + params[0]+"%";
		}else{
			if(guoji.equals("巴西")){				
				hql="from Ynjd ynjd where ynjd.isBrazilians=true";
			}else if(guoji.equals("韩国")){				
				hql="from Ynjd ynjd where ynjd.isKorean=true";
			}else if(guoji.equals("印尼")){				
				hql="from Ynjd ynjd where ynjd.isIndonesians=true";
			}else if(guoji.equals("日本")){				
				hql="from Ynjd ynjd where ynjd.isJapanese=true";
			}else{
				hql="from Ynjd";
				System.out.println("国籍参数有误");
			}
		}
		try{
			Page<Ynjd> page = new Page<Ynjd>();
			page.setCurrentPageNum(pageNum);	
			page.setPageSize(pageSize);	
			page=this.findByPage(pageNum, pageSize, hql, params);
			return page;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	public Ynjd getYnjd(int id_ynjd){
		try{
			Ynjd ynjd = this.get(id_ynjd);
			return ynjd;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	public void updateYnjd(Ynjd ynjd){
		try{
			this.update(ynjd);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public void deleteYnjd(int id_ynjd){
		try{
			this.delete(id_ynjd);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
