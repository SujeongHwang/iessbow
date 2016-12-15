<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% response.setContentType("text/html;charset=UTF-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <title>个人中心</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta name="Viewport"content="width=device-width,initial-scale=1">
    <!-- zui -->
    <link href="${ctx }/css/zhongxin.css" rel="stylesheet">
    <link rel="stylesheet" href="${ctx }/css/dilan.center.css">
    
    <script src="${ctx }/js/jquery.mobile-1.4.5.min.js"></script>

  </head>
  <body>
    <!-- 我的中心 -->
    <div clasd="black">
        <h5 class="header-header" align="center" background-color:#F5F5F5; style="color:#696969">我的中心</h5>
        </hr >
       <div class="n"></div>
    </div>
    <!--头像+名字  -->
     <div class="name">
      <div class="userpic" style="width:60px; height:60px; border-radius:50%; overflow:hidden;">
      <img src="${ctx }/images/raw_1478051685.jpeg" width="60"height="60" />
      </div>
      <div class="userna"><font size="3">GD</font></div>
    </div>
    <!-- 列表 -->
    <div class="list-group">
    <a href="${ctx }/mynews.jsp"class="list-group-item">
    <div class="m">
      <div class="mn"><img src="${ctx }/images/raw_1478160624.jpeg" width="20"height="20"/></div>
      <div class="mm"><font size="2">我的消息</font></div>
    </div>
    </a>
    <a href="${ctx }/setting.jsp"class="list-group-item">
    <div class="m">
      <div class="mn"><img src="${ctx }/images/shezhi.png"width="20"height="20"/></div>
      <div class="mm"><font size="2">设置</font></div>
    </div>
    </a>
    <a href="#"class="list-group-item">
    <div class="m">
      <div class="mn"><img src="${ctx }/images/women.png"width="20"height="20"/> </div>
      <div class="mm"><font size="2">关于我们</font></div>
    </div>
    </a>
    </div>
<!--底栏菜单-->
<div class="nav4">

  
    <div id="nav4_ul" class="nav_4">
      <ul class="box">
        
        <li>
        
        <a href="${ctx }/news/list_qtqb"><img src="${ctx }/images/02.png"><span>新闻首页</span> </a>
        </li>
        
        <li>
        <a href=""><img src="${ctx }/images/08.png">信息填写</a>
          
        </li>
        <li>
        <a href=""><img src="${ctx }/images/04.png"><span>疑难解答</span></a>
          
        </li>
          <li>
          <a href="#"><img src="${ctx }/images/05.png"><span>个人中心</span></a>
          
        </li>
      </ul>
    </div>
  
  
  <div id="nav4_masklayer" class="masklayer_div on">&nbsp;</div>

</div>

    <!-- jQuery (ZUI中的Javascript组件依赖于jQuery) -->
    <script src="${ctx }///code.jquery.com/jquery-1.11.0.min.js"></script>
    <!-- ZUI Javascript组件 -->
    <script src="${ctx }/js/zui.min.js"></script>
  </body>
</html>