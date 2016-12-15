<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
        <title>学生管理-新建学生</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

        
        <!-- jQuery AND jQueryUI -->
        <script type="text/javascript" src="${ctx}/js/libs/jquery/1.6/jquery.min.js"></script>
        <script type="text/javascript" src="${ctx}/js/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>
       
        <link rel="stylesheet" href="${ctx}/css/min.css" />
        <script type="text/javascript" src="${ctx}/js/min.js"></script>
        
    </head>
    <body>
        
        <script type="text/javascript" src="${ctx}/content/settings/main.js"></script>
<link rel="stylesheet" href="${ctx}/content/settings/style.css" />


 
        <!--              
                HEAD
                        --> 
        <div id="head">
            <div class="left">
                <a href="#" class="button profile"><img src="${ctx }/img/icons/top/huser.png" alt="" /></a>
               	您好，
                ${userName}
            </div>
            <div class="right">
                <form action="#" id="search" class="search placeholder">
                    <label>Looking for something ?</label>
                    <input type="text" value="" name="q" class="text"/>
                    <input type="submit" value="rechercher" class="submit"/>
                </form>
            </div>
        </div>
                
                
        <!--            
                SIDEBAR
                         --> 
<div id="sidebar">
            <ul>
                <li>
                    <a>
                        <img src="${ctx}/img/icons/menu/inbox.png" alt="" />
                        欢迎
                    </a>
                </li>
                <li ><a href="#"><img src="${ctx}/img/icons/menu/layout.png" alt="" /> 新闻管理</a>
                    <ul>
                          <li><a href="${ctx }/news/list_gg">公告</a></li>
                          <li><a href="${ctx }/news/list_rd">热点</a></li>
                          <li><a href="${ctx }/news/list_gj">国际</a></li>
                          <li><a href="${ctx }/news/list_xn">校内</a></li>
                          <li><a href="${ctx }/formsXW.jsp">添加新闻</a></li>
                          <li><a href="${ctx }/formLB.jsp">添加首页轮播图</a></li>
                    </ul>
                </li>
                <li><a href="#"><img src="${ctx}/img/icons/menu/brush.png" alt="" /> 信息管理</a>
                    <ul>
                        <li><a href="table.jsp?p=table">学生基本信息表</a></li>
                        <li><a href="table.jsp?p=table">奖学金申请表</a></li>
                        <li><a href="table.jsp?p=table">助学金申请表</a></li>
                        <li><a href="forms.jsp?p=forms">添加申请表</a></li>
                    </ul>
                </li>
                <li><a href="#"><img src="${ctx}/img/icons/menu/factory.png" alt="" /> 疑难问题管理</a>
                    <ul>
                        <li><a href="${ctx}/ynjd/list?leiXing=校内">校内专区</a></li>
                        <li><a href="${ctx}/ynjd/list?leiXing=国外">国外专区</a></li>
                        <li><a href="${ctx}/ynjd/list?leiXing=新生">新生专区</a></li>
                        <li><a href="${ctx}/ynjd/list?leiXing=常见">常见问题专区</a></li>
                        <li><a href="${ctx}/formsYN.jsp">添加专区</a></li>
                    </ul>
                </li>
                <li  class="current"><a href="#"><img src="${ctx}/img/icons/menu/lab.png" alt="" />学生管理</a>
                    <ul>
                        <li><a href="${ctx}/student/list_hg">韩国学生</a></li>
                        <li><a href="${ctx }/student/list_yn">印尼学生</a></li>
                        <li><a href="${ctx }/student/list_bx">巴西学生</a></li>
                        <li><a href="${ctx }/student/list_rb">日本学生</a></li>
                        <li  class="current"><a href="${ctx }/formsXS.jsp">添加学生</a></li>
                     </ul>
                </li>
                <li><a href="#"><img src="${ctx}/img/icons/menu/flag.png" alt="" />定向消息</a>
                    <ul>
                        <li><a href="${ctx }/news/list_dxhg">韩国消息</a></li>
                        <li><a href="${ctx }/news/list_dxyn">印尼消息</a></li>
                        <li><a href="${ctx }/news/list_dxbx">巴西消息</a></li>
                        <li><a href="${ctx }/news/list_dxrb">日本消息</a></li>
                        <li><a href="${ctx}/formsDX.jsp">添加消息</a></li>
                     </ul>
                </li>
            </ul>


        </div>  
                
                
                
        <!--            
              CONTENT 
                        --> 
       
        <div id="content" class="white">
            <h1><img src="${ctx}/img/icons/posts.png" alt="" /> 学生管理-新建学生</h1>

<div class="bloc">
<div class="title">
        新建学生
      </div>
          <c:if test="${action!='edit' }">
       <div class="content">
     <div class="content">
     <div class="right">
        <div class="input">
            <label for="input4"></label>
            <!--<input type="text" class="datepicker" id="input4"/>-->
        </div>
    </div> 
    </div> 
        <form action="${ctx }/student/add" method="post">
        <div class="input">
            <label for="input1">名称</label>
            <input type="text" name="niCheng" id="input1" />
        </div>
        <br/>
        <br/>
  
    <div class="input">
            <label for="label">所选国家</label>
            <input type="radio" name="guoJi" value="日本" id="check1"/>
            <label class="inline">日本</label> 
            <input type="radio" name="guoJi" value="韩国" id="check2" />
            <label class="inline">韩国</label> 
            <input type="radio" name="guoJi" value="印尼" id="check3" />
            <label class="inline">印尼</label> 
            <input type="radio" name="guoJi" value="巴西" id="check4" />
            <label class="inline">巴西</label> <br/>
    </div>

    <br/>
    <br/>
    <br/>
    <br/>
    <!--<br/>-->

    <div class="input">
            <label for="label">所选语言</label>
            <input type="radio" name="yuYan" id="check1" value="日语"/> <!-- 默认选定属性 checked="checked" -->
            <label for="check1" class="inline">日语</label> 
            <input type="radio" name="yuYan" id="check2" value="韩语"/>
            <label for="check2" class="inline">韩语</label> 
            <input type="radio" name="yuYan" id="check3" value="英语"/>
            <label for="check3" class="inline">英语</label> 
            <input type="radio" name="yuYan" id="check4" value="中文" />
            <label for="check4" class="inline">中文</label> 
    </div>

     <div class="input">
    <!--<label for="input3">内容</label>-->
    <script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
    </div>
 
       </br>
        <div class="submit">
        <input type="submit" value="提交" />
        </div>
        </form>
    </div>
    </c:if>
         <!-- *******************************edit********************************************** -->
         <c:if test="${action=='edit' }">
         <%session.setAttribute("action", "add");%>
         <div class="content">
     <div class="content">
     <div class="right">
        <div class="input">
            <label for="input4"></label>
            <!--<input type="text" class="datepicker" id="input4"/>-->
        </div>
    </div> 
    </div> 
        <form action="${ctx }/student/edit" method="post">
        <div class="input">
            <label for="input1">名称</label>
            <input type="text" name="niCheng" id="input1" value="${student03.niCheng}" />
        </div>
        <br/>
        <br/>
        
                
  
    <div class="input">
            <label for="label">所属国家</label>
            <c:if test="${student03.guoJi=='日本'}">   
				 <input type="radio" id="check1" name="guoJi" value="日本" checked="checked"/> 
				 
            	<label for="check1" class="inline">日本</label>	
			</c:if>
			<c:if test="${student03.guoJi!='日本'}">
				 <input type="radio" id="check1" name="guoJi" value="日本"/> 
            	<label for="check1" class="inline">日本</label>	
			</c:if> 
			<c:if test="${student03.guoJi=='韩国'}">   
				 <input type="radio" id="check2" name="guoJi" value="韩国" checked="checked"/> 
				 
            	<label for="check2" class="inline">韩国</label>	
			</c:if>
			<c:if test="${student03.guoJi!='韩国'}">
				 <input type="radio" id="check2" name="guoJi" value="韩国"/> 
            	<label for="check2" class="inline">韩国</label>	
			</c:if> 
			<c:if test="${student03.guoJi=='印尼'}">   
				 <input type="radio" id="check3" name="guoJi" value="印尼" checked="checked"/> 
            	<label for="check3" class="inline">印尼</label>	
			</c:if>
			<c:if test="${student03.guoJi!='印尼'}">
				 <input type="radio" id="check3" name="guoJi" value="印尼"/> 
            	<label for="check3" class="inline">印尼</label>	
			</c:if> 
			<c:if test="${student03.guoJi=='巴西'}">   
				 <input type="radio" id="check4" name="guoJi" value="巴西" checked="checked"/> 
            	<label for="check4" class="inline">巴西</label>	
			</c:if>
			<c:if test="${student03.guoJi!='巴西'}">
				 <input type="radio" id="check4" name="guoJi" value="巴西"/> 
            	<label for="check4" class="inline">巴西</label>	
			</c:if> 
			
			
			

            
    </div>

    <br/>
    <br/>
    <br/>
    <br/>
    

    <div class="input">
            <label for="label">所选语言</label>
           
            <c:if test="${student03.yuYan=='日语'}">   
				 <input type="radio" id="check1" name="yuYan" value="日语" checked="checked"/> 
            	<label for="check1" class="inline">日语</label>	
			</c:if>
			<c:if test="${student03.yuYan!='日语'}">
				 <input type="radio" id="check1" name="yuYan" value="日语"/> 
            	<label for="check1" class="inline">日语</label>	
			</c:if> 
			<c:if test="${student03.yuYan=='韩语'}">   
				 <input type="radio" id="check2" name="yuYan" value="韩语" checked="checked"/> 
            	<label for="check2" class="inline">韩语</label>	
			</c:if>
			<c:if test="${student03.yuYan!='韩语'}">
				 <input type="radio" id="check2" name="yuYan" value="韩语"/> 
            	<label for="check2" class="inline">韩语</label>	
			</c:if> 
			<c:if test="${student03.yuYan=='英语'}">   
				 <input type="radio" id="check3" name="yuYan" value="英语" checked="checked"/> 
            	<label for="check3" class="inline">英语</label>	
			</c:if>
			<c:if test="${student03.yuYan!='英语'}">
				 <input type="radio" id="check3" name="yuYan" value="英语"/> 
            	<label for="check3" class="inline">英语</label>	
			</c:if> 
			<c:if test="${student03.yuYan=='中文'}">   
				 <input type="radio" id="check4" name="yuYan" value="中文" checked="checked"/> 
            	<label for="check4" class="inline">中文</label>	
			</c:if>
			<c:if test="${student03.yuYan!='中文'}">
				 <input type="radio" id="check4" name="yuYan" value="中文"/> 
            	<label for="check4" class="inline">中文</label>	
			</c:if> 
    </div>
     <div class="input">
    <!--<label for="input3">内容</label>-->
    <script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
    </div>
       </br>
        <div class="submit">
        <input type="submit" value="提交" />
        </div>
        </form>
    </div>
    </c:if>
    <!-- ***********************************************/edit********************************************* -->
    </div>
</div>


        
    </body>
</html>