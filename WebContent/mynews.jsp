<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% response.setContentType("text/html;charset=UTF-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
	<head>
		<title>文章内容页</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
		<meta name="Viewport"content="width=device-width,initial-scale=1">
		<link rel="stylesheet" href="css/zui.css">
		<script src="${ctx }/js/zui.lite.js"></script>
		<script src="${ctx }/js/jquery.mobile-1.4.5.min.js"></script>		
	</head>
	<body>
		<article class="article">
  <header>
    <img src="${ctx }/images/img4.jpg" width="1316px" height="400px" class="img-responsive" alt="响应式图片测试">
  </header>
  <div class="list list-condensed">
  <header>
    <h3><i class="icon-list-ul"></i> 最新消息 <small>更新 123 条</small></h3>
  </header>
  <div class="items items-hover">
    <div class="item">
      <div class="item-heading">
        <div class="pull-right"><span class="text-muted">2013-11-11 16:14:37</span> &nbsp; <a href="#" class="text-muted"><i class="icon-comments"></i> 243</a></div>
        <h4><a href="###">HTML5 发展历史</a></h4>
      </div>
      <div class="item-content">
        <div class="text">HTML 5草案的前身名为Web Applications 1.0，是在2004年由WHATWG提出。2008年1月22日，第一份正式草案发布。WHATWG表示该规范是目前仍在进行的工作，仍须多年的努力。[8]目前Mozilla Firefox、Google Chrome、Opera、Safari（版本4以上）、Internet Explorer（版本9以上）已支持HTML5技术。</div>
      </div>
    </div>
    <div class="item">
      <div class="item-heading">
        <div class="pull-right label label-success">河北师大合作处</div>
        <h4><a href="###">HTML5 发展历史</a></h4>
      </div>
      <div class="item-content">
        <div class="text">HTML 5草案的前身名为Web Applications 1.0，是在2004年由WHATWG提出。2008年1月22日，第一份正式草案发布。WHATWG表示该规范是目前仍在进行的工作，仍须多年的努力。[8]目前Mozilla Firefox、Google Chrome、Opera、Safari（版本4以上）、Internet Explorer（版本9以上）已支持HTML5技术。</div>
      </div>
      <div class="item-footer">
        <a href="#" class="text-muted"><i class="icon-comments"></i> 243</a> &nbsp; <span class="text-muted">2013-11-11 16:14:37</span>
      </div>
    </div>
    <div class="item">
      <div class="item-heading">
        <div class="pull-right label label-success">河北师大合作处</div>
        <h4><a href="###">HTML5 发展历史</a></h4>
      </div>
      <div class="item-content">
        <div class="media pull-right"><img src="${ctx }/images/img2.jpg" alt=""></div>
        <div class="text">HTML 5草案的前身名为Web Applications 1.0，是在2004年由WHATWG提出。2008年1月22日，第一份正式草案发布。WHATWG表示该规范是目前仍在进行的工作，仍须多年的努力。[8]目前Mozilla Firefox、Google Chrome、Opera、Safari（版本4以上）、Internet Explorer（版本9以上）已支持HTML5技术。</div>
      </div>
      <div class="item-footer">
        <a href="#" class="text-muted"><i class="icon-comments"></i> 243</a> &nbsp; <span class="text-muted">2013-11-11 16:14:37</span>
      </div>
    </div>
    <div class="item">
      <div class="item-heading">
        <div class="pull-right"><a href="###"><i class="icon-pencil"></i> 编辑</a> &nbsp;<a href="#"><i class="icon-remove"></i> 删除</a></div>
        <h4><span class="label label-success">河北师大</span> <a href="###">HTML5 发展历史</a></h4>
      </div>
      <div class="item-content">
        <div class="text">HTML 5草案的前身名为Web Applications 1.0，是在2004年由WHATWG提出。2008年1月22日，第一份正式草案发布。WHATWG表示该规范是目前仍在进行的工作，仍须多年的努力。[8]目前Mozilla Firefox、Google Chrome、Opera、Safari（版本4以上）、Internet Explorer（版本9以上）已支持HTML5技术。</div>
      </div>
      <div class="item-footer">
        <a href="#" class="text-muted"><i class="icon-comments"></i> 243</a> &nbsp; <span class="text-muted">2013-11-11 16:14:37</span>
      </div>
    </div>
  </div>
  <footer>
    <ul class="pager">
      <li class="previous"><a href="#">« 上一页</a></li>
      <li><a href="#">1</a></li>
      <li><a href="#">…</a></li>
      <li><a href="#">6</a></li>
      <li class="active"><a href="#">7</a></li>
      <li><a href="#">8</a></li>
      <li><a href="#">9</a></li>
      <li><a href="#">…</a></li>
      <li><a href="#">12</a></li>
      <li class="next"><a href="#">下一页 »</a></li>
    </ul>
  </footer>
</div>
  <footer>
    <p class="text-important">本文节选自河北师范大学国际合作处官方网站。</p>
  </footer>
</article>
	</body>
</html>