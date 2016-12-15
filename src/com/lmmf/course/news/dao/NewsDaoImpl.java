package com.lmmf.course.news.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.lmmf.course.entity.News;
import com.lmmf.framework.BaseDao;
import com.lmmf.framework.Page;

@Repository
public class NewsDaoImpl extends BaseDao<News,Integer> {
	
	@Resource
	private SessionFactory sessionFactory;
	
	
	public void saveNews(News news){
		try{
			Session session = sessionFactory.getCurrentSession();
			session.save(news);
			//this.save(news);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public Page<News> editNews(int id_news){
		String hql;
			hql="from News news where news.id_news="+id_news;	
		try{
			Page<News> page = new Page<News>();
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
	public Page<News> findNews(int pageNum,int pageSize,Object[] params,String leiXing){
		String hql;
		if(params!=null&&params.length>0){
			hql="from News news where news.id_news like ?";
			params[0]="%" + params[0]+"%";
		}else{
			if(leiXing.equals("全部")){				
				hql="from News news order by news.time desc";
			}else{				
				hql="from News news where news.leiXing="+  "'"+leiXing+"'"+"order by news.time desc";
			}
		}
		try{
			Page<News> page = new Page<News>();
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
	public Page<News> findNewsDX(int pageNum,int pageSize,Object[] params,String guoji){
		String hql;
		if(params!=null&&params.length>0){
			hql="from News news where news.id_news like ?";
			params[0]="%" + params[0]+"%";
		}else{
			if(guoji.equals("巴西")){				
				hql="from News news where news.isBrazilians=true";
			}else if(guoji.equals("韩国")){				
				hql="from News news where news.isKorean=true";
			}else if(guoji.equals("印尼")){				
				hql="from News news where news.isIndonesians=true";
			}else if(guoji.equals("日本")){				
				hql="from News news where news.isJapanese=true";
			}else{
				hql="from News";
				System.out.println("国籍参数有误");
			}
		}
		try{
			Page<News> page = new Page<News>();
			page.setCurrentPageNum(pageNum);	
			page.setPageSize(pageSize);	
			page=this.findByPage(pageNum, pageSize, hql, params);
			return page;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	public News getNews(int id_news){
		try{
			News news = this.get(id_news);
			return news;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	public void updateNews(News news){
		try{
			this.update(news);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public void deleteNews(int id_news){
		try{
			this.delete(id_news);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
