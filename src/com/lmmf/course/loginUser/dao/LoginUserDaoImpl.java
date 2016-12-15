package com.lmmf.course.loginUser.dao;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.lmmf.course.entity.LoginUser;
import com.lmmf.framework.BaseDao;

@Repository
public class LoginUserDaoImpl extends BaseDao<LoginUser,String> {

	public LoginUser findByNamdAndPwd(String name,String pwd){
		try{
			return super.findOne("from LoginUser lu where lu.userName=? and lu.password=?", new Object[]{name,pwd});
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

}