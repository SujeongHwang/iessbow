
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%response.setContentType("text/html;charset=UTF-8");%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0109)file:///C:/Users/%E9%83%AD%E5%8F%AF/Desktop/%E5%90%8E%E5%8F%B0%E7%95%8C%E9%9D%A2%E6%9C%80%E6%96%B0/login.html -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎登录后台管理系统</title>
<link href="./login_files/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="./login_files/jquery.js"></script>
<script src="./login_files/cloud.js" type="text/javascript"></script>

	<script language="javascript">
		$(function(){
	    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
		$(window).resize(function(){  
	    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	    })  
	});  
	</script> 
	<script type="text/javascript">
		function login(){
			document.loginForm.submit();
		}
		function checkExist(){
			$.get("${ctx }/loginuser/checkname",{'loginName':$('#loginName').val()}, function(data, status) {
				console.log(eval(data)[0].loginName);
			});
		}
	</script>
</head>

<body style="overflow: hidden; background-image: 
url(&quot;images/light.png&quot;); background-color: 
rgb(28, 119, 172); 
background-position: -294.3px 0px; background-repeat: no-repeat;">



    <div id="mainBody">
      <div id="cloud1" class="cloud" style="background-position: 913.1px 100px;"></div>
      <div id="cloud2" class="cloud" style="background-position: 421px 460px;"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录后台管理界面平台</span>    
   
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
    
    <form name="loginForm" action="${ctx}/loginuser/login" method="post">
    
    <div class="loginbox" style="position: absolute; left: -12.5px;">
    <ul>
    <li><input name="userName" type="text" class="loginuser" value="admin" ></li>
    <li><input name="password" type="password" class="loginpwd" value="12345678" ></li>
    <li><input type="button" class="loginbtn" value="登录" onclick="login()"><label>
    <input name="" type="checkbox" value="" checked="checked">记住密码</label><label>
    <a href="file:///C:/Users/%E9%83%AD%E5%8F%AF/Desktop/%E5%90%8E%E5%8F%B0%E7%95%8C%E9%9D%A2%E6%9C%80%E6%96%B0/login.html#">忘记密码？</a>
    </label></li>
    </ul>
    </div>
    
    </form>
    
    </div>
</body></html>