package com.lmmf.course.student.service;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lmmf.course.entity.News;
import com.lmmf.course.entity.Student;
import com.lmmf.course.student.dao.StudentDaoImpl;
import com.lmmf.framework.Page;

@Service
@Transactional(readOnly=false)
public class StudentServiceImpl {
	
	@Resource
	private StudentDaoImpl studentDaoImpl;
	
	public void addStudent(Student student){
		
		this.studentDaoImpl.saveStudent(student);
	}


	@Transactional(readOnly=true)
	public Page<Student> listStudent(int pageNum,int pageSize,Object[] params,String guoJi){
		return this.studentDaoImpl.findStudent(pageNum, pageSize, params,guoJi);
	}
	@Transactional(readOnly=true)
	public Student getStudent(int id_Stu){
		return this.studentDaoImpl.getStudent(id_Stu);
	}
	
	public void editStudent(Student student){
		Student stu=this.studentDaoImpl.getStudent(student.getId_Stu());
		stu.setGuoJi(student.getGuoJi());
		stu.setNiCheng(student.getNiCheng());
		stu.setTouXiangURL(student.getTouXiangURL());
		stu.setYuYan(student.getYuYan());
		this.studentDaoImpl.updateStudent(stu);
	}
	
	public void dropStudent(int id_Stu){
		this.studentDaoImpl.deleteStudent(id_Stu);
	}

}
