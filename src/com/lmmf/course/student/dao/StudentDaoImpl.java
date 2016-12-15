package com.lmmf.course.student.dao;

import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.lmmf.course.entity.Student;
import com.lmmf.framework.BaseDao;
import com.lmmf.framework.Page;
/**
 * 閰嶇疆瀛︾敓妯″潡鎸佷箙鍖栧眰锛屽疄鐜扮被閲岀殑鏂规硶锛�
 * 浣滆�咃細鐜嬮箯甯�
 * 鏃ユ湡锛�2016-11-16
 */

@Repository
public class StudentDaoImpl extends BaseDao<Student, Integer> {
	
	@Resource
	private SessionFactory sessionFactory;
	public void saveStudent(Student student){
		try {
			Session session = sessionFactory.getCurrentSession();
			session.save(student);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Page<Student> findStudent(int pageNum, int pageSize,Object[] params,String guoJi){
		String hql;
		if(params!=null && params.length>0){
			hql="from Student student where student.guoJi like ?";
			params[0]="%"+params[0]+"%";
			
		}else{
			hql="from Student student where student.guoJi ="+"\'"+guoJi+"\'";
		}
		try {
			Page<Student> page=new Page<Student>();
			page.setCurrentPageNum(pageNum);
			page.setPageSize(pageSize);
			page=this.findByPage(pageNum, pageSize, hql, params);
			return page;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	public Student getStudent(int id_Stu){
		try {
			Student student=this.get(id_Stu);
			return student;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	public void updateStudent(Student student){
		try {
			this.update(student);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteStudent(int id_Stu){
		try {
			this.delete(id_Stu);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
