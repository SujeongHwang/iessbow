package com.lmmf.course.lbt.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.ui.Model;

import com.lmmf.course.entity.LunBoTu;

import com.lmmf.course.lbt.service.LunBoTuServiceImpl;
import com.lmmf.framework.Page;
/**
 * 
 */
@Controller
@RequestMapping("shouyelunbotu")
public class LunBoTuController {

	
	@Resource
	private LunBoTuServiceImpl  lbtServiceImpl;
	
	
//	@RequestMapping("add")
//	public String add(LunBoTu lbt,HttpServletRequest request){
//		try {
//			request.setCharacterEncoding("utf-8");
//		} catch (UnsupportedEncodingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		//System.out.println("name:"+request.getParameter("yuYan"));
//		System.out.print("name:"+lbt.getPictureURL_href()+"杩涘叆鎺у埗鍣�");
//		this.lbtServiceImpl.addLunBoTu(lbt);
//		
//		return "redirect:/formLB";
//	}
	
	@RequestMapping(value="add")
	public String add(LunBoTu lbt){
		try {
			String pictureURL_href =lbt.getPictureURL_href();
			pictureURL_href = new String(pictureURL_href.getBytes("iso-8859-1"),"utf-8");
			lbt.setPictureURL_href(pictureURL_href);	
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		this.lbtServiceImpl.addLunBoTu(lbt);
		
		return "redirect:list";
	}
	

//	@RequestMapping(value="edit",method=RequestMethod.GET)
//	public String toEdit(@RequestParam("id_SYLB") int id_SYLB,
//			HttpServletRequest request){
//		LunBoTu lbt=this.lbtServiceImpl.getLunBoTu(id_SYLB);
//		request.setAttribute("lbt", lbt);
//		request.setAttribute("action", "edit");
//		System.out.println("杩涘叆鎺у埗鍣ㄤ慨鏀筧");
//		return "formLB";
//	}
//	
//	@RequestMapping(value="edit",method=RequestMethod.POST)
//	public String edit(LunBoTu lbt,HttpServletRequest request){
//		this.lbtServiceImpl.editLunBoTu(lbt);
//		System.out.println("杩涘叆鎺у埗鍣ㄤ慨鏀筨");
//		return "redirect:list";
//	}
	
	
	@RequestMapping(value="delete")
	public String delete(@RequestParam("id_SYLB") int id_SYLB,
			HttpServletRequest request){
		this.lbtServiceImpl.dropLunBoTu(id_SYLB);
		return "redirect:list";
	}
	
	
	
	
	@RequestMapping(value="list")
	public String list_bx(HttpServletRequest request,Model model)
	{		
			
		Page<LunBoTu> page;
		page=this.lbtServiceImpl.listLunBoTu(1,3);		
		request.setAttribute("lbt",page);
		return "formLB";
	}
	
	@RequestMapping(value="list_qb")
	public String listqb(HttpServletRequest request,Model model)
	{		
			
		Page<LunBoTu> page;
		page=this.lbtServiceImpl.listLunBoTu(1,3);		
		request.setAttribute("lbt",page);
		return "/frontindex";
	}
	
	
}
	