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
		<link rel="stylesheet" href="${ctx }/css/zui.css">
		<script src="${ctx }/js/zui.lite.js"></script>
		<script src="${ctx }/js/jquery.mobile-1.4.5.min.js"></script>		
	</head>
	<script type="text/javascript">
	 function tijiao(i){
		 document.getElementById(i).submit();
	 }
	</script>
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
  <c:forEach items="${page.list }" var="p">
  <c:if test="${p.isFaBu==true }">
  <c:if test="${p.isJapanese==true }">
  <form id="${p.id_news}" action="${ctx}/news/content" method="post">
   <input type="hidden" name="id_news" value="${p.id_news}"> 
    <div class="item">
      <div class="item-heading">
        <div class="pull-right"><span class="text-muted">${p.time}</span> &nbsp; <a href="#" class="text-muted"><i class="icon-comments"></i> 243</a></div>
        <h4><a href="${ctx }/news/neirong?id_news=${p.id_news}" id="id_news" onclick="tijiao(${p.id_news})">${p.biaoTi }</a></h4>
      </div>
      <div class="item-content">
        <div class="text">${p.neiRong }</div>
      </div>
    </div>
    </form>
    </c:if>
    </c:if>
   </c:forEach> 
  </div>
  <footer>
    <ul class="pager">
     <c:forEach begin="1" end="${page.totalPageNum }" var="pageNum">
				<li><a name="pagen"  href="${ctx }/news/qt_dxrb?pageNum=${pageNum }" class="current">${pageNum }</a></li>
			</c:forEach>
    </ul>
  </footer>
</div>
  <footer>
    <p class="text-important">本文节选自河北师范大学国际合作处官方网站。</p>
  </footer>
</article>
	</body>
</html>