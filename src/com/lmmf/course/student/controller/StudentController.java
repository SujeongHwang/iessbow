package com.lmmf.course.student.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

import com.lmmf.course.entity.News;
import com.lmmf.course.entity.Student;
import com.lmmf.course.student.service.StudentServiceImpl;
import com.lmmf.framework.Page;

@Controller
@RequestMapping("student")
public class StudentController {

	
	@Resource
	private StudentServiceImpl  studentServiceImpl;
	
	@RequestMapping("add")
	public String add(Student student,HttpServletRequest request){
		try {
			String niCheng =student.getNiCheng();
			niCheng = new String(niCheng.getBytes("iso-8859-1"),"utf-8");
			student.setNiCheng(niCheng);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		try {
			String guoJi =student.getGuoJi();
			guoJi = new String(guoJi.getBytes("iso-8859-1"),"utf-8");
			student.setGuoJi(guoJi);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		try {
			String yuYan =student.getYuYan();
			yuYan = new String(yuYan.getBytes("iso-8859-1"),"utf-8");
			student.setYuYan(yuYan);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		String guoJi = student.getGuoJi();
		String count;
		if(guoJi.equals("巴西")){
			count="bx";
		}else if(guoJi.equals("日本")){
			count="rb";
		}else if(guoJi.equals("印尼")){
			count="yn";
		}else if(guoJi.equals("韩国")){
			count="hg";
		}else{
			count="count没被初始化";
		}
		this.studentServiceImpl.addStudent(student);
		return "redirect:/student/list_"+count;
	}

	@RequestMapping(value="edit",method=RequestMethod.GET)
	public String toEdit(@RequestParam("id_Stu") int id_Stu,
			HttpServletRequest request){
		Student student = this.studentServiceImpl.getStudent(id_Stu);
		HttpSession session = request.getSession();
		session.setAttribute("student03",student);
		session.setAttribute("action", "edit");
		return "formsXS";
	}
	
	@RequestMapping(value="edit",method=RequestMethod.POST)
	public String edit(Student student,HttpServletRequest request){
		try {
			String niCheng =student.getNiCheng();
			niCheng = new String(niCheng.getBytes("iso-8859-1"),"utf-8");
			student.setNiCheng(niCheng);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		try {
			String guoJi =student.getGuoJi();
			guoJi = new String(guoJi.getBytes("iso-8859-1"),"utf-8");
			student.setGuoJi(guoJi);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		try {
			String yuYan =student.getYuYan();
			yuYan = new String(yuYan.getBytes("iso-8859-1"),"utf-8");
			student.setYuYan(yuYan);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		HttpSession session = request.getSession();
		Student student03 = (Student)session.getAttribute("student03");
		student.setId_Stu(student03.getId_Stu());
		this.studentServiceImpl.editStudent(student);
		
		String guoJi = student.getGuoJi();
		String count;
		if(guoJi.equals("巴西")){
			count="bx";
		}else if(guoJi.equals("日本")){
			count="rb";
		}else if(guoJi.equals("印尼")){
			count="yn";
		}else if(guoJi.equals("韩国")){
			count="hg";
		}else{
			count="count没被初始化";
		}
		return "redirect:list_"+count;
	}
	
	@RequestMapping(value="delete_bx")
	public String deletebx(@RequestParam("id_Stu") int id_Stu,
			HttpServletRequest request){
		this.studentServiceImpl.dropStudent(id_Stu);
		return "redirect:list_bx";
	}
	@RequestMapping(value="delete_hg")
	public String deletehg(@RequestParam("id_Stu") int id_Stu,
			HttpServletRequest request){
		this.studentServiceImpl.dropStudent(id_Stu);
		return "redirect:list_hg";
	}
	@RequestMapping(value="delete_rb")
	public String deleterb(@RequestParam("id_Stu") int id_Stu,
			HttpServletRequest request){
		this.studentServiceImpl.dropStudent(id_Stu);
		return "redirect:list_rb";
	}
	@RequestMapping(value="delete_yn")
	public String deleteyn(@RequestParam("id_Stu") int id_Stu,
			HttpServletRequest request){
		this.studentServiceImpl.dropStudent(id_Stu);
		return "redirect:list_yn";
	}
	
	@RequestMapping(value="list_bx")
	public String list_bx(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			Model model){
		Page<Student> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.studentServiceImpl.listStudent(pageNum,5,null,"巴西");
		}else{
			page=this.studentServiceImpl.listStudent(pageNum,10,new Object[]{searchParam},"巴西");
		}			
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableXSbx";
	}
	
	@RequestMapping(value="list_hg")
	public String list_hg(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			Model model){
		Page<Student> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.studentServiceImpl.listStudent(pageNum,5,null,"韩国");
		}else{
			page=this.studentServiceImpl.listStudent(pageNum,10,new Object[]{searchParam},"韩国");
		}			
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableXShg";
	}
	
	@RequestMapping(value="list_rb")
	public String list_rb(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			Model model){
		Page<Student> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.studentServiceImpl.listStudent(pageNum,5,null,"日本");
		}else{
			page=this.studentServiceImpl.listStudent(pageNum,10,new Object[]{searchParam},"日本");
		}			
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableXSrb";
	}
	
	@RequestMapping(value="list_yn")
	public String list_yn(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			Model model){
		Page<Student> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.studentServiceImpl.listStudent(pageNum,5,null,"印尼");
		}else{
			page=this.studentServiceImpl.listStudent(pageNum,10,new Object[]{searchParam},"印尼");
		}			
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableXSyn";
	}
}
	