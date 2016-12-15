package com.lmmf.course.loginUser.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lmmf.course.entity.LoginUser;
import com.lmmf.course.loginUser.dao.LoginUserDaoImpl;

@Service
@Transactional(readOnly=true)
public class LoginUserServiceImpl {
	@Resource
	private LoginUserDaoImpl loginUserDaoImpl;
	@Transactional(readOnly=false)
	public void regist(){
		//insert user
		int a = 10/0;
		//update score
	}
	public LoginUser login(String name,String pwd){
		return this.loginUserDaoImpl.findByNamdAndPwd(name,pwd);
	}
}