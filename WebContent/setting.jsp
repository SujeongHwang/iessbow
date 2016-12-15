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
    <script src="${ctx }/js/jquery.mobile-1.4.5.min.js"></script>
    <script src="${ctx }/js/zui.lite.js"></script>
  </head>
  <body>
    <article class="article">
  <header>
    <img src="${ctx }/images/img5.jpg" width="1316px" height="400px" class="img-responsive" alt="响应式图片测试">
  </header>
  <div class="list list-condensed">
  <header>
    <h3><i class="icon-list-ul"></i> 选择语言 <small>choose your language</small></h3>
  </header>
  <div class="items items-hover">
    <div class="item">
    
      <div class="item-content">
        <button class="btn btn-block " type="button">English <input type="radio" checked="checked" name="language" value="language1" /></button>
      </div>

    </div>
    <div class="item">
     <div class="item-content">
        <button class="btn btn-block " type="button">中文 <input type="radio" checked="checked" name="language" value="language2" /></button>
      </div>
    </div>
    <div class="item">
      <div class="item-content">
        <button class="btn btn-block " type="button">日本語 <input type="radio" checked="checked" name="language" value="language3" /></button>
      </div>
    </div>
     <div class="item">
      <div class="item-content">
        <button class="btn btn-block " type="button">한국어´ <input type="radio" checked="checked" name="language" value="language4" /></button>
      </div>
    </div>
   
  </div>

    <header>
    <h3><i class="icon-list-ul"></i> 选择接收信息国家 <small>Choose your country to accept the information</small></h3>
  </header>
  <div class="items items-hover">
    <div class="item">
    
      <div class="item-content">
        <button class="btn btn-block " type="button">Britain <input type="radio" checked="checked" name="country" value="country4" /></button>
      </div>

    </div>
    <div class="item">
     <div class="item-content">
        <button class="btn btn-block " type="button">中国 <input type="radio" checked="checked" name="country" value="country4" /></button>
      </div>
    </div>
    <div class="item">
      <div class="item-content">
        <button class="btn btn-block " type="button">日本 <input type="radio" checked="checked" name="country" value="country4" /></button>
      </div>
    </div>
     <div class="item">
      <div class="item-content">
        <button class="btn btn-block " type="button">한국 <input type="radio" checked="checked" name="country" value="country4" /></button>
      </div>
    </div>
   
  </div>

  
  <button class="btn btn-primary" type="button">提交</button>
 

 
</div>
  <footer>
    <p class="text-important">本文节选自河北师范大学国际合作处官方网站。</p>
  </footer>
</article>
  </body>
</html>