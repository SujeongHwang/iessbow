<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
        <title>新闻列表</title>
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
                <li  class="current"><a href="#"><img src="img/icons/menu/layout.png" alt="" /> 新闻管理</a>
                    <ul>
                                                <li class="current"><a href="tableXW.jsp?p=table">公告</a></li>
                                                <li><a href="tableXW.jsp?p=table">热点</a></li>
                                                <li><a href="tableXW.jsp?p=table">国际新闻</a></li>
                                                <li><a href="tableXW.jsp?p=table">校内新闻</a></li>
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
                        <li><a href="tableXS.jsp?p=table">韩国学生</a></li>
                        <li><a href="tableXS.jsp?p=table">印尼学生</a></li>
                        <li><a href="tableXS.jsp?p=table">巴西学生</a></li>
                        <li><a href="tableXS.jsp?p=table">日本学生</a></li>
                        <li><a href="forms.jsp?p=forms">添加学生</a></li>
                     </ul>
                </li>
                <li><a href="#"><img src="img/icons/menu/flag.png" alt="" />定向消息</a>
                    <ul>
                        <li><a href="tableDX.jsp?p=table">韩国消息</a></li>
                        <li><a href="tableDX.jsp?p=table">印尼消息</a></li>
                        <li><a href="tableDX.jsp?p=table">巴西消息</a></li>
                        <li><a href="tableDX.jsp?p=table">日本消息</a></li>
                        <li><a href="forms.jsp?p=forms">添加消息</a></li>
                     </ul>
                </li>
            </ul>


        </div>
                
                
                
                
                
                
                
        <!--            
              CONTENT 
                        --> 
        <div id="content" class="white">
            <h1><img src="img/icons/posts.png" alt="" /> Table</h1>
<div class="bloc">
    <div class="title">
        消息列表
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Catégories</th>
                    <th>Tags</th>
                    <th><img src="img/th-comment.png" alt="" /></th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="#">Lorem ipsum</a></td>
                    <td><a href="#">Grafikart</a></td>
                    <td><a href="#">Dolor</a> , <a href="#">Amet</a></td>
                    <td><a href="#">Consecte</a> , <a href="#">Adipiscin</a>, <a href="#">Elit</a></td>
                    <td>35</td>
                    <td class="actions"><a href="#" title="Edit this content"><img src="img/icons/actions/edit.png" alt="" /></a><a href="#" title="Delete this content"><img src="img/icons/actions/delete.png" alt="" /></a></td>
                </tr>
                                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="#">Lorem ipsum</a></td>
                    <td><a href="#">Grafikart</a></td>
                    <td><a href="#">Dolor</a> , <a href="#">Amet</a></td>
                    <td><a href="#">Consecte</a> , <a href="#">Adipiscin</a>, <a href="#">Elit</a></td>
                    <td>35</td>
                    <td class="actions"><a href="#" title="Edit this content"><img src="img/icons/actions/edit.png" alt="" /></a><a href="#" title="Delete this content"><img src="img/icons/actions/delete.png" alt="" /></a></td>
                </tr>
                                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="#">Lorem ipsum</a></td>
                    <td><a href="#">Grafikart</a></td>
                    <td><a href="#">Dolor</a> , <a href="#">Amet</a></td>
                    <td><a href="#">Consecte</a> , <a href="#">Adipiscin</a>, <a href="#">Elit</a></td>
                    <td>35</td>
                    <td class="actions"><a href="#" title="Edit this content"><img src="img/icons/actions/edit.png" alt="" /></a><a href="#" title="Delete this content"><img src="img/icons/actions/delete.png" alt="" /></a></td>
                </tr>
                                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="#">Lorem ipsum</a></td>
                    <td><a href="#">Grafikart</a></td>
                    <td><a href="#">Dolor</a> , <a href="#">Amet</a></td>
                    <td><a href="#">Consecte</a> , <a href="#">Adipiscin</a>, <a href="#">Elit</a></td>
                    <td>35</td>
                    <td class="actions"><a href="#" title="Edit this content"><img src="img/icons/actions/edit.png" alt="" /></a><a href="#" title="Delete this content"><img src="img/icons/actions/delete.png" alt="" /></a></td>
                </tr>
                                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="#">Lorem ipsum</a></td>
                    <td><a href="#">Grafikart</a></td>
                    <td><a href="#">Dolor</a> , <a href="#">Amet</a></td>
                    <td><a href="#">Consecte</a> , <a href="#">Adipiscin</a>, <a href="#">Elit</a></td>
                    <td>35</td>
                    <td class="actions"><a href="#" title="Edit this content"><img src="img/icons/actions/edit.png" alt="" /></a><a href="#" title="Delete this content"><img src="img/icons/actions/delete.png" alt="" /></a></td>
                </tr>
                                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="#">Lorem ipsum</a></td>
                    <td><a href="#">Grafikart</a></td>
                    <td><a href="#">Dolor</a> , <a href="#">Amet</a></td>
                    <td><a href="#">Consecte</a> , <a href="#">Adipiscin</a>, <a href="#">Elit</a></td>
                    <td>35</td>
                    <td class="actions"><a href="#" title="Edit this content"><img src="img/icons/actions/edit.png" alt="" /></a><a href="#" title="Delete this content"><img src="img/icons/actions/delete.png" alt="" /></a></td>
                </tr>
                                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="#">Lorem ipsum</a></td>
                    <td><a href="#">Grafikart</a></td>
                    <td><a href="#">Dolor</a> , <a href="#">Amet</a></td>
                    <td><a href="#">Consecte</a> , <a href="#">Adipiscin</a>, <a href="#">Elit</a></td>
                    <td>35</td>
                    <td class="actions"><a href="#" title="Edit this content"><img src="img/icons/actions/edit.png" alt="" /></a><a href="#" title="Delete this content"><img src="img/icons/actions/delete.png" alt="" /></a></td>
                </tr>
                                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="#">Lorem ipsum</a></td>
                    <td><a href="#">Grafikart</a></td>
                    <td><a href="#">Dolor</a> , <a href="#">Amet</a></td>
                    <td><a href="#">Consecte</a> , <a href="#">Adipiscin</a>, <a href="#">Elit</a></td>
                    <td>35</td>
                    <td class="actions"><a href="#" title="Edit this content"><img src="img/icons/actions/edit.png" alt="" /></a><a href="#" title="Delete this content"><img src="img/icons/actions/delete.png" alt="" /></a></td>
                </tr>
                                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="#">Lorem ipsum</a></td>
                    <td><a href="#">Grafikart</a></td>
                    <td><a href="#">Dolor</a> , <a href="#">Amet</a></td>
                    <td><a href="#">Consecte</a> , <a href="#">Adipiscin</a>, <a href="#">Elit</a></td>
                    <td>35</td>
                    <td class="actions"><a href="#" title="Edit this content"><img src="img/icons/actions/edit.png" alt="" /></a><a href="#" title="Delete this content"><img src="img/icons/actions/delete.png" alt="" /></a></td>
                </tr>
                                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="#">Lorem ipsum</a></td>
                    <td><a href="#">Grafikart</a></td>
                    <td><a href="#">Dolor</a> , <a href="#">Amet</a></td>
                    <td><a href="#">Consecte</a> , <a href="#">Adipiscin</a>, <a href="#">Elit</a></td>
                    <td>35</td>
                    <td class="actions"><a href="#" title="Edit this content"><img src="img/icons/actions/edit.png" alt="" /></a><a href="#" title="Delete this content"><img src="img/icons/actions/delete.png" alt="" /></a></td>
                </tr>
                            </tbody>
        </table>
        <div class="left input">
            <select name="action" id="tableaction">
                <option value="">Action</option>
                <option value="delete">Delete</option>
            </select>
        </div>
        <div class="pagination">
            <a href="#" class="prev">«</a>
            <a href="#">1</a>
            <a href="#" class="current">2</a>
            ...
            <a href="#">21</a>
            <a href="#">22</a>
            <a href="#" class="next">»</a>
        </div>
    </div>
</div>



<div class="bloc">
    <div class="title">
        新闻列表
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th>Picture</th>
                    <th>Title</th>
                    <th>Link</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                                <tr>
                    <td class="picture" style="width:140px;"><a href="../../../lorempixum.com/800/600/food/0/index25b2.html?.jpg" class="zoombox"><img src="http://lorempixum.com/100/100/food/0" alt="" /></a></td>
                    <td><a href="#">Lorem ipsum</a></td>
                    <td><script type="text/javascript"><!--
google_ad_client = "ca-pub-3413404722490728";
/* postscript728+90postscript.html */
google_ad_slot = "9238639693";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script></td>
                    <td class="actions"><a href="#" title="Edit this content"><img src="img/icons/actions/edit.png" alt="" /></a><a href="#" title="Delete this content"><img src="img/icons/actions/delete.png" alt="" /></a></td>
                </tr>
                                <tr>
                    <td class="picture" style="width:140px;"><a href="../../../lorempixum.com/800/600/food/1/index25b2.html?.jpg" class="zoombox"><img src="http://lorempixum.com/100/100/food/1" alt="" /></a></td>
                    <td><a href="#">Lorem ipsum</a></td>
                    <td>http://lorempixum.com/800/600/food/1</td>
                    <td class="actions"><a href="#" title="Edit this content"><img src="img/icons/actions/edit.png" alt="" /></a><a href="#" title="Delete this content"><img src="img/icons/actions/delete.png" alt="" /></a></td>
                </tr>
                                <tr>
                    <td class="picture" style="width:140px;"><a href="../../../lorempixum.com/800/600/food/2/index25b2.html?.jpg" class="zoombox"><img src="http://lorempixum.com/100/100/food/2" alt="" /></a></td>
                    <td><a href="#">Lorem ipsum</a></td>
                    <td>http://lorempixum.com/800/600/food/2</td>
                    <td class="actions"><a href="#" title="Edit this content"><img src="img/icons/actions/edit.png" alt="" /></a><a href="#" title="Delete this content"><img src="img/icons/actions/delete.png" alt="" /></a></td>
                </tr>
                                <tr>
                    <td class="picture" style="width:140px;"><a href="../../../lorempixum.com/800/600/food/3/index25b2.html?.jpg" class="zoombox"><img src="http://lorempixum.com/100/100/food/3" alt="" /></a></td>
                    <td><a href="#">Lorem ipsum</a></td>
                    <td>http://lorempixum.com/800/600/food/3</td>
                    <td class="actions"><a href="#" title="Edit this content"><img src="img/icons/actions/edit.png" alt="" /></a><a href="#" title="Delete this content"><img src="img/icons/actions/delete.png" alt="" /></a></td>
                </tr>
                                <tr>
                    <td class="picture" style="width:140px;"><a href="../../../lorempixum.com/800/600/food/4/index25b2.html?.jpg" class="zoombox"><img src="http://lorempixum.com/100/100/food/4" alt="" /></a></td>
                    <td><a href="#">Lorem ipsum</a></td>
                    <td>http://lorempixum.com/800/600/food/4</td>
                    <td class="actions"><a href="#" title="Edit this content"><img src="img/icons/actions/edit.png" alt="" /></a><a href="#" title="Delete this content"><img src="img/icons/actions/delete.png" alt="" /></a></td>
                </tr>
                            </tbody>
        </table>
    </div>
</div>


      </div>
        
        
    </body>
</html>