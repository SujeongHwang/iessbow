<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <%@page import="java.util.Date" 
    import="java.util.Calendar" 
    import="java.text.SimpleDateFormat"
    import="java.lang.Integer"
     %>
    <%
    	Date date = new Date();
   		Calendar c = Calendar.getInstance();
   		Integer year = c.get(Calendar.YEAR); 
   		Integer month = c.get(Calendar.MONTH); 
   		month=month+1;
   		Integer day = c.get(Calendar.DATE); 
   		Integer hour = c.get(Calendar.HOUR_OF_DAY); 
   		Integer minute = c.get(Calendar.MINUTE); 
   		Integer second = c.get(Calendar.SECOND); 
   		request.setAttribute("year",year);
   		request.setAttribute("month",month);
   		request.setAttribute("day",day);
   		request.setAttribute("hour",hour);
   		request.setAttribute("minute",minute);
   		request.setAttribute("second",second);
    %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
        <title>定向消息管理-新建消息</title>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

        
        <!-- jQuery AND jQueryUI -->
        <script type="text/javascript" src="${ctx}/js/libs/jquery/1.6/jquery.min.js"></script>
        <script type="text/javascript" src="${ctx}/js/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>
        <script type="text/javascript" charset="utf-8" src="${ctx}/ueditor.config.js"></script>
        <script type="text/javascript" charset="utf-8" src="${ctx}/ueditor.all.min.js"> </script>
        <script type="text/javascript" charset="utf-8" src="${ctx}/lang/zh-cn/zh-cn.js"></script>
        <style type="text/css">
        div{
            width:100%;
        }
      </style>
      <script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
	
    function tiJiao(){
		document.getElementById("neiRong").value = UE.getEditor('editor').getContentTxt();
		document.getElementById('biaoDan').submit();
    }
	
    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }
    function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
    }
    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }
    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }
    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }
    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        alert(arr.join("\n"));
    }
    function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
    }
    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }
    function setFocus() {
        UE.getEditor('editor').focus();
    }
    function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
    }
    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }

    function getLocalData () {
        alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
    }

    function clearLocalData () {
        UE.getEditor('editor').execCommand( "clearlocaldata" );
        alert("已清空草稿箱")
    }
</script>
        <!-- Compressed Version
        <link type="text/css" rel="stylesheet" href="min/b=CoreAdmin&f=css/reset.css,css/style.css,css/jqueryui/jqueryui.css,js/jwysiwyg/jquery.wysiwyg.old-school.css,js/zoombox/zoombox.css" />
        <script type="text/javascript" src="min/b=CoreAdmin/js&f=cookie/jquery.cookie.js,jwysiwyg/jquery.wysiwyg.js,tooltipsy.min.js,iphone-style-checkboxes.js,excanvas.js,zoombox/zoombox.js,visualize.jQuery.js,jquery.uniform.min.js,main.js"></script>
        -->
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
                <li><a href="#"><img src="${ctx}/img/icons/menu/lab.png" alt="" />学生管理</a>
                    <ul>
                        <li><a href="tableXShg.jsp">韩国学生</a></li>
                        <li><a href="tableXSyn.jsp">印尼学生</a></li>
                        <li><a href="tableXSbx.jsp">巴西学生</a></li>
                        <li><a href="tableXSrb.jsp?p=table">日本学生</a></li>
                        <li><a href="formsXS.jsp">添加学生</a></li>
                     </ul>
                </li>
                <li  class="current"><a href="#"><img src="${ctx}/img/icons/menu/flag.png" alt="" />定向消息</a>
                    <ul>
                        <li><a href="${ctx }/news/list_dxhg">韩国消息</a></li>
                        <li><a href="${ctx }/news/list_dxyn">印尼消息</a></li>
                        <li><a href="${ctx }/news/list_dxbx">巴西消息</a></li>
                        <li><a href="${ctx }/news/list_dxrb">日本消息</a></li>
                        <li class="current"><a href="${ctx}/formsDX.jsp">添加消息</a></li>
                     </ul>
                </li>
            </ul>


        </div>  
                
        <!--            
              CONTENT 
                        --> 
        <div id="content" class="white">
            <h1><img src="${ctx}/img/icons/posts.png" alt=""/>定向消息管理-新建消息</h1>

<div class="bloc">
<div class="title">
        新建消息
      </div>
   <div class="content">
    <c:if test="${action!='edit' }">
     <form action="${ctx }/news/add_dx" method="post">
     <div class="content">
     <div class="right">
        <div class="input">
            <label for="input4">时间</label>
            <input type="text" name="time" class="datepicker"  value="${month}/${day}/${year} ${hour}:${minute}" id="input4"/>
        </div>
    </div> 
    </div> 
        <div class="input">
            <label for="input1">标题</label>
            <input type="text" name="biaoTi" id="input1" />
        </div>
        <br/>
        <br/>
  
    <div class="input">
            <label for="label">定向消息</label>
            <input type="checkbox" name="isJapanese" id="check1"/> <!-- 默认选定属性 checked="checked" -->
            <label for="check1"   class="inline">日本</label> 
            <input type="checkbox" name="isKorean" id="check2" />
            <label for="check2" class="inline">韩国</label> 
            <input type="checkbox" name="isIndonesians"id="check3" />
            <label for="check3" class="inline">印尼</label> 
            <input type="checkbox" name="isBrazilians" id="check4" />
            <label for="check4" class="inline">巴西</label> <br/>
    </div>

    <br/>
    <br/>
    <br/>
    <br/>
    <br/>

     <div class="input">
    <label for="input3">内容</label>
    <script id="editor" type="text/plain" name="neiRongURL" style="width:1024px;height:500px;"></script>
    </div>
    <input type = "hidden" name="neiRong" id="neiRong"/>
 <div id="btns">
    <div>
        <button onclick="getAllHtml()">获得整个html的内容</button>
        <button onclick="getContent()">获得内容</button>
        <button onclick="setContent()">写入内容</button>
        <button onclick="setContent(true)">追加内容</button>
        <button onclick="getContentTxt()">获得纯文本</button>
        <button onclick="getPlainTxt()">获得带格式的纯文本</button>
        <button onclick="hasContent()">判断是否有内容</button>
        <button onclick="setFocus()">使编辑器获得焦点</button>
        <button onmousedown="isFocus(event)">编辑器是否获得焦点</button>
        <button onmousedown="setblur(event)" >编辑器失去焦点</button>

    </div>
    <div>
        <button onclick="getText()">获得当前选中的文本</button>
        <button onclick="insertHtml()">插入给定的内容</button>
        <button id="enable" onclick="setEnabled()">可以编辑</button>
        <button onclick="setDisabled()">不可编辑</button>
        <button onclick=" UE.getEditor('editor').setHide()">隐藏编辑器</button>
        <button onclick=" UE.getEditor('editor').setShow()">显示编辑器</button>
        <button onclick=" UE.getEditor('editor').setHeight(300)">设置高度为300默认关闭了自动长高</button>
    </div>

    <div>
        <button onclick="getLocalData()" >获取草稿箱内容</button>
        <button onclick="clearLocalData()" >清空草稿箱</button>
    </div>

</div>
<div>
    <button onclick="createEditor()">
    创建编辑器</button>
    <button onclick="deleteEditor()">
    删除编辑器</button>
</div>
<div class="submit">
    <input type="submit" value="提交" />
</div>
	</form>
	
    </c:if>
   <!-- ********************************edit************************************ -->
     <c:if test="${action=='edit' }">
        <%session.setAttribute("action", "add");%>
     	     <form action="${ctx }/news/edit_dx" method="post">
     <div class="content">
     <div class="right">
        <div class="input">
            <label for="input4">时间</label>
            <input type="text" name="time" class="datepicker"  value="${month}/${day}/${year} ${hour}:${minute}" id="input4"/>
        </div>
    </div> 
    </div> 
        <div class="input">
            <label for="input1">标题</label>
            <input type="text" name="biaoTi" id="input1"  value="${news04.biaoTi}"/>
        </div>
        <br/>
        <br/>
  
    <div class="input">
            <label for="label">定向消息</label>
            <!-- 默认选定属性 checked="checked" -->
            <c:if test="${news04.isJapanese}">   
				 <input type="checkbox" id="check1" name="isJapanese" checked="checked"/> 
            	<label for="check1" class="inline">日本</label>	
			</c:if>
			<c:if test="${!news04.isJapanese}">
				 <input type="checkbox" id="check1" name="isJapanese" /> 
            	<label for="check1" class="inline">日本</label>	
			</c:if> 
			<c:if test="${news04.isKorean}">   
				 <input type="checkbox" id="check1" name="isKorean" checked="checked"/> 
            	<label for="check1" class="inline">韩国</label>	
			</c:if>
			<c:if test="${!news04.isKorean}">
				 <input type="checkbox" id="check1" name="isKorean" /> 
            	<label for="check1" class="inline">韩国</label>	
			</c:if> 
			<c:if test="${news04.isIndonesians}">   
				 <input type="checkbox" id="check1" name="isIndonesians"  checked="checked"/> 
            	<label for="check1" class="inline">印尼</label>	
			</c:if>
			<c:if test="${!news04.isIndonesians}">
				 <input type="checkbox" id="check1" name="isIndonesians"/> 
            	<label for="check1" class="inline">印尼</label>	
			</c:if> 
			<c:if test="${news04.isBrazilians}">   
				 <input type="checkbox" id="check1" name="isBrazilians" checked="checked"/> 
            	<label for="check1" class="inline">巴西</label>	
			</c:if>
			<c:if test="${!news04.isBrazilians}">
				 <input type="checkbox" id="check1" name="isBrazilians" /> 
            	<label for="check1" class="inline">巴西</label>	
			</c:if> 
    </div>

    <br/>
    <br/>
    <br/>
    <br/>
    <br/>

     <div class="input">
    <label for="input3">内容</label>
    <script id="editor" type="text/plain" name="neiRongURL" style="width:1024px;height:500px;">
      ${news04.neiRongURL}
    </script>
    </div>
    <input type = "hidden" name="neiRong" id="neiRong"/>
 <div id="btns">
    <div>
        <button onclick="getAllHtml()">获得整个html的内容</button>
        <button onclick="getContent()">获得内容</button>
        <button onclick="setContent()">写入内容</button>
        <button onclick="setContent(true)">追加内容</button>
        <button onclick="getContentTxt()">获得纯文本</button>
        <button onclick="getPlainTxt()">获得带格式的纯文本</button>
        <button onclick="hasContent()">判断是否有内容</button>
        <button onclick="setFocus()">使编辑器获得焦点</button>
        <button onmousedown="isFocus(event)">编辑器是否获得焦点</button>
        <button onmousedown="setblur(event)" >编辑器失去焦点</button>

    </div>
    <div>
        <button onclick="getText()">获得当前选中的文本</button>
        <button onclick="insertHtml()">插入给定的内容</button>
        <button id="enable" onclick="setEnabled()">可以编辑</button>
        <button onclick="setDisabled()">不可编辑</button>
        <button onclick=" UE.getEditor('editor').setHide()">隐藏编辑器</button>
        <button onclick=" UE.getEditor('editor').setShow()">显示编辑器</button>
        <button onclick=" UE.getEditor('editor').setHeight(300)">设置高度为300默认关闭了自动长高</button>
    </div>

    <div>
        <button onclick="getLocalData()" >获取草稿箱内容</button>
        <button onclick="clearLocalData()" >清空草稿箱</button>
    </div>

</div>
<div>
    <button onclick="createEditor()">
    创建编辑器</button>
    <button onclick="deleteEditor()">
    删除编辑器</button>
</div>
<div class="submit">
    <input type="submit" value="提交" />
</div>
	</form>
     
	 </c:if>
	 <!-- ********************************/edit*********************************** -->
	
    </div>
    </div>
</div>
    </body>
</html>