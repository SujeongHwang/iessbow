package com.lmmf.course.loginUser.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lmmf.course.entity.LoginUser;
import com.lmmf.course.loginUser.service.LoginUserServiceImpl;

@Controller
@RequestMapping("loginuser")
public class LoginUserController {
	@Resource
	private LoginUserServiceImpl loginUserServiceImpl;
	
	@RequestMapping("login")
	public String login(@RequestParam("userName")String name,
			@RequestParam("password") String password,HttpSession session){
		LoginUser lu = this.loginUserServiceImpl.login(name,password);
		if(lu!=null){
			session.setAttribute("userName",lu.getUserName());
			return "index";
		}else{
			return "redirect:/login.jsp";
		}
	}
}
