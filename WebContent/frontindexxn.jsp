<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% response.setContentType("text/html;charset=UTF-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
	<head>
		<title>新闻页首页</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
		<meta name="Viewport"content="width=device-width,initial-scale=1ï¼user-scalable=no">
		<link rel="stylesheet" href="${ctx }/css/zui.css">
		<link rel="stylesheet" href="${ctx }/css/ayangshi.css">
		<link rel="stylesheet" href="${ctx }/css/pgwmenu.css">
    	<link rel="stylesheet" href="${ctx }/css/dilan.css">
		<link rel="stylesheet" type="text/css" href="${ctx }/css/menu.css" media="all"/>
		
		<script src="${ctx }/js/doc.min.js"></script> 
		<script type="text/javascript" src="${ctx }/js/jquery.mobile-1.4.5.min.index.js"></script>
		<script type="text/javascript" src="${ctx }/js/jquery-1.8.3.min.js"></script>
        <script type="text/javascript" src="${ctx }/js/pgwmenu.min.js"></script>
        <script type="text/javascript" src="${ctx }/js/zui.lite.index.js"></script>
        <script type="text/javascript" src="${ctx }/js/less.min.js"></script>
        <!-- ZUI Javascriptç»ä»¶ -->
        <script src="${ctx }/js/zui.min.doc.js"></script>
        <script type="text/javascript" src="${ctx }/js/jquery.1.7.2.min.js"></script>
     	<script type="text/javascript" src="${ctx }/js/navfix.js"></script>
		<script type="text/javascript">
			$(document).ready(function(e) {
 			$('#mynav').navfix(0,999);    
			});
		//第一个值： 你期望导航在距离顶部多少的位置浮动
		//第二个值： 导航zindex
		</script>
   
   <!-- 增强文档插件 -->

    <script async src="${ctx }/js/prettify.js"></script>
    <script src="${ctx }/js/marked.min.js"></script>
    <script type="text/javascript">
    
    window.onload=function(){
    var nav=document.getElementById('mynav');
    var selected=document.getElementById('selected');
    selected.style.backgroundColor="#c3c3c3";
    nav.onclick=function(){
      selected.style.backgroundColor="";
    }
  }

    </script>
	</head>
	<body>
	<!-- 轮播图-->
<div id="myNiceCarousel" class="carousel slide" data-ride="carousel">
  <!-- 圆点指示器 -->

  <ol class="carousel-indicators">
    <li data-target="#myNiceCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myNiceCarousel" data-slide-to="1"></li>
    <li data-target="#myNiceCarousel" data-slide-to="2"></li>
  </ol>

  <!-- 轮播项目 -->
  <div class="carousel-inner">
    <div class="item active">
      <img alt="First slide" src="${ctx }/images/banner01.jpg">
      <div class="carousel-caption">
        <h3>我是第一张幻灯片</h3>
        <p>:)</p>
      </div>
    </div>
    <div class="item">
      <img alt="Second slide" src="${ctx }/images/banner02.jpg">
      <div class="carousel-caption">
        <h3>我是第二张幻灯片</h3>
        <p>0.0</p>
      </div>
    </div>

    <div class="item">
      <img alt="Third slide" src="${ctx }/images/banner03.jpg">
      <div class="carousel-caption">
        <h3>我是第三张幻灯片</h3>
        <p>最后一张喽~</p>
      </div>
    </div>
  </div>

   
</div>

	<!--上部菜单栏-->
	<div id="mynav" style="position:relative;top:auto;z-index:999;width:100%;">
<ul class="pgwMenu light">
	<li target="_blank"><a href="${ctx }/news/list_qtqb">全部</a></li>
	<li target="_blank"><a href="${ctx}/news/list_qtrd">热点</a></li>
	<li target="_blank"><a href="${ctx}/news/list_qtgg">公告</a></li>
	<li target="_blank"><a id="selected" href="${ctx}/news/list_qtxn">校内</a></li>
	<li target="_blank"><a  id="selected"   href="${ctx}/news/list_qtgj">国际</a></li>
</ul>
</div>
<!--新闻内容-->
<c:forEach items="${page.list}" var="p">
<form id="${p.id_news}" action="${ctx}/news/content" method="post">
<input type="hidden" name="id_news" value="${p.id_news}"> 
<div class="items items-hover" onclick="tiJiao(${p.id_news});">
  <input type="hidden" name="id_news">
  <div style="max-height:110px; overflow:hidden;"class="item">
    <div class="item-heading">
    <!--
      <div class="pull-right label label-success">河北师大国际合作处</div>
      -->
      <h4 name="biaoTi">${p.biaoTi}</h4>
    </div>
    <div class="item-footer">
      <span class="text-muted" name="time">${p.time}</span>
    </div>
    <div class="item-content">
      <div class="text">${p.neiRong}</div>
      <!--<div class="media pull-right"><img src="${ctx }/images/banner02.jpg" alt=""></div>
      <div class="media pull-right"><img src="${ctx }/images/banner02.jpg" alt=""></div>  -->
      <input type="hidden" name="neiRongURL"/>
    </div>
    
  </div>
</div>
</form>
<div class="black"></div>
</c:forEach>

<!--低栏菜单-->

<div class="nav4">

  
    <div id="nav4_ul" class="nav_4">
      <ul class="box">
        
        <li>
        
        <a href="#"><img src="${ctx }/images/06.png"><span>新闻首页</span> </a>
        </li>
        
        <li>
        <a href=""><img src="${ctx }/images/08.png">信息填写</a>
          
        </li>
        <li>
        <a href=""><img src="${ctx }/images/04.png"><span>疑难解答</span></a>
          
        </li>
          <li>
          <a href="${ctx }/center.jsp"><img src="${ctx }/images/03.png"><span>个人中心</span></a>
        
        </li>
      </ul>
    </div>
  
  
 <div id="nav4_masklayer" class="masklayer_div on">&nbsp;</div>

</div>


	</body>
</html>