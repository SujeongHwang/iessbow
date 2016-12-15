<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
        <title>新建新闻</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

        
        <!-- jQuery AND jQueryUI -->
        <script type="text/javascript" src="js/libs/jquery/1.6/jquery.min.js"></script>
        <script type="text/javascript" src="js/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>
        
        <!-- Compressed Version
        <link type="text/css" rel="stylesheet" href="min/b=CoreAdmin&f=css/reset.css,css/style.css,css/jqueryui/jqueryui.css,js/jwysiwyg/jquery.wysiwyg.old-school.css,js/zoombox/zoombox.css" />
        <script type="text/javascript" src="min/b=CoreAdmin/js&f=cookie/jquery.cookie.js,jwysiwyg/jquery.wysiwyg.js,tooltipsy.min.js,iphone-style-checkboxes.js,excanvas.js,zoombox/zoombox.js,visualize.jQuery.js,jquery.uniform.min.js,main.js"></script>
        -->
        <link rel="stylesheet" href="css/min.css" />
        <script type="text/javascript" src="js/min.js"></script>
        
    </head>
    <body>
        
        <script type="text/javascript" src="content/settings/main.js"></script>
<link rel="stylesheet" href="content/settings/style.css" />


 
        <!--              
                HEAD
                        --> 
        <div id="head">
            <div class="left">
                <a href="#" class="button profile"><img src="img/icons/top/huser.png" alt="" /></a>
                Hi, 
                <a href="#">John Doe</a>
                |
                <a href="#">Logout</a>
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
                    <a href="index.jsp">
                        <img src="img/icons/menu/inbox.png" alt="" />
                        欢迎
                    </a>
                </li>
                <li class="current"><a href="#"><img src="img/icons/menu/layout.png" alt="" /> 新闻管理</a>
                    <ul>
                                                <li class="current"><a href="tableXW.jsp?p=table">公告</a></li>
                                                <li><a href="table.jsp?p=table">热点</a></li>
                                                <li><a href="table.jsp?p=table">国际新闻</a></li>
                                                <li><a href="table.jsp?p=table">校内新闻</a></li>
                                                <li><a href="forms.jsp?p=forms">添加新闻</a></li>
                    </ul>
                </li>
                <li><a href="#"><img src="img/icons/menu/brush.png" alt="" /> 信息管理</a>
                    <ul>
                        <li><a href="table.jsp?p=table">学生基本信息表</a></li>
                        <li><a href="table.jsp?p=table">奖学金申请表</a></li>
                        <li><a href="table.jsp?p=table">助学金申请表</a></li>
                        <li><a href="forms.jsp?p=forms">添加申请表</a></li>
                    </ul>
                </li>
                <li><a href="#"><img src="img/icons/menu/factory.png" alt="" /> 疑难问题管理</a>
                    <ul>
                        <li><a href="table.jsp?p=table">韩国专区</a></li>
                        <li><a href="table.jsp?p=table">日本专区</a></li>
                        <li><a href="table.jsp?p=table">印尼巴西专区</a></li>
                        <li><a href="forms.jsp?p=forms">添加专区</a></li>
                    </ul>
                </li>
                <li><a href="#"><img src="img/icons/menu/lab.png" alt="" />学生管理</a>
                    <ul>
                        <li><a href="table.jsp?p=table">韩国学生</a></li>
                        <li><a href="table.jsp?p=table">印尼学生</a></li>
                        <li><a href="table.jsp?p=table">巴西学生</a></li>
                        <li><a href="table.jsp?p=table">日本学生</a></li>
                        <li><a href="forms.jsp?p=forms">添加学生</a></li>
                     </ul>
                </li>
                <li><a href="#"><img src="img/icons/menu/flag.png" alt="" />定向消息</a>
                    <ul>
                        <li><a href="table.jsp?p=table">韩国消息</a></li>
                        <li><a href="table.jsp?p=table">印尼消息</a></li>
                        <li><a href="table.jsp?p=table">巴西消息</a></li>
                        <li><a href="table.jsp?p=table">日本消息</a></li>
                        <li><a href="forms.jsp?p=forms">添加消息</a></li>
                     </ul>
                </li>
            </ul>


        </div>
                
                
                
                
                
        <!--            
              CONTENT 
                        --> 
        <div id="content" class="white">
            <h1><img src="img/icons/posts.png" alt="" /> Forms</h1>

<div class="bloc">
    <div class="title">Simple inputs</div>
    <div class="content">
        <div class="input">
            <label for="input1">Text input</label>
            <input type="text" id="input1" />
            Some informations on how to use this field
        </div>
       
       
        <div class="input">
            <label for="file">Upload a file</label>
            <input type="file" id="file" />
        </div>

        <div class="input">
            <label class="label">Checkboxes</label>
            <input type="checkbox" id="check1" checked="checked"/><label for="check1" class="inline">This is a checkbox</label> <br/>
            <input type="checkbox" id="check2" /><label for="check2" class="inline">Another one !</label> <br/>
        </div>
        <div class="input">
            <label class="label">Radio</label>
            <input type="radio" id="radio1" name="radiobutton"  checked="checked"/><label for="radio1" class="inline">This is a radio input</label> <br/>
            <input type="radio" id="radio2"  name="radiobutton"/><label for="radio2" class="inline">And this is another radio input</label>
        </div>
        <div class="input">
            <label for="select">This is a "select" input</label>
            <select name="select" id="select">
                <option value="1">First value</option>
                <option value="2">Second value</option>
                <option value="3">Third value</option>
            </select>
            Some informations on how to use this field
        </div>
        
       
    </div>
</div>



<div class="bloc">

    <div class="content">
        <div class="input">
            <label for="input4">Datepicker using jQuery UI</label>
            <input type="text" class="datepicker" id="input4"/>
        </div>
        <div class="input textarea">
            <label for="textarea2">Autogrow WYSIWYG Textarea (<a href="https://github.com/akzhan/jwysiwyg">jwysiwyg</a>)</label>
            <textarea name="text" id="textarea2" rows="7" class="wysiwyg" cols="4">
                Here you <em>can have</em> some <strong>HTML Content</strong>
            </textarea>
        </div>
       
        
    </div>
</div>        

</div>
        
        
    </body>
</html>