<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix ="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>菜谱大全</title>
    
<link rel="stylesheet" type="text/css" href="css/pagination.css" />
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="css/menulist.css"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<script type="text/javascript" src="js/jquery.pagination.js"></script>
<script type="text/javascript">
$(function(){
	//这是一个非常简单的demo实例，让列表元素分页显示
	//回调函数的作用是显示对应分页的列表项内容
	//回调函数在用户每次点击分页链接的时候执行
	//参数page_index{int整型}表示当前的索引页
	var initPagination = function() {
		var num_entries = $("#hiddenresult div.result").length;
		// 创建分页
		$("#Pagination").pagination(num_entries, {
			num_edge_entries: 1, //边缘页数
			num_display_entries: 4, //主体页数
			callback: pageselectCallback,
			items_per_page:1 //每页显示1项
		});
	 }();
	 
	function pageselectCallback(page_index, jq){
		var new_content = $("#hiddenresult div.result:eq("+page_index+")").clone();
		$("#Searchresult").empty().append(new_content); //装载对应分页的内容
		return false;
	}
});
</script>

</head>

<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="bs-docs-example">
        <div style="position: static;" class="navbar navbar-inverse">
            <div class="navbar-inner">
                <div class="container">
                    <a data-target=".navbar-inverse-collapse" data-toggle="collapse" class="btn btn-navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a href="#" class="brand">荐客</a>
                    <div class="nav-collapse collapse navbar-inverse-collapse">
                        <ul class="nav">
                            <li class="active"><a href="index">首页</a></li>
                            <li><a href="menuIndex">菜谱</a></li>
                            <li><a href="fenyeshop">找店铺</a></li>
                             <li><a href="privilege">找优惠</a></li>
                        </ul>
                        
                        <c:choose>
		                        	<c:when test="${empty CurrentUser}">
			                        	<div class="btn-group pull-right" style="margin-top: 10px">
				                            <a href="#" class="btn btn-primary"><i class="icon-user icon-white"></i> User</a>
				                            <a href="#" data-toggle="dropdown" class="btn btn-primary dropdown-toggle"><span class="caret"></span></a>
				                            <ul class="dropdown-menu">
				                                <li id="example"><a href="denglu.jsp"><i class="icon-pencil"></i> 登录</a></li>
				                                <li><a href="register.html"><i class="icon-trash"></i> 注册</a></li>
				                                <li class="divider"></li>
				                                <li><a href="#"><i class="i"></i> Make admin</a></li>
				                            </ul>
				                        </div>
			                        </c:when>
			                        <c:otherwise>
				                        <div style="margin-left:88%;width:20%;height:80%;">
				                        	<img alt="" src="${CurrentUser.headicon}" style="width:20%;height:4%;float:left;background-color:white;">
				                        	<a href="peronalView?mid=${CurrentUser.uid}"><span style="color:white;font-size:20px;">${CurrentUser.nickname}</span>
				                          	</a>
				                          	<a href="zhuxiao.action"><span style="font-size:10px;margin-left:10px;">注销</span></a>
				                        </div>
			                        </c:otherwise>
		                        </c:choose>
                        
                        
                    </div><!-- /.nav-collapse -->
                </div>
            </div><!-- /navbar-inner -->
        </div><!-- /navbar -->
    </div>
</nav>
<div id="myCarousel" class="carousel slide"><!--左右图片切换滑动-->
    <div class="carousel-inner">
        <div class="item active">
            <img src="img/bg1.jpg" alt="">
            <div class="container">
                <div class="carousel-caption">
                    <h1>荐客<small>菜谱</small></h1>
                    <div id="navcontainer">
                        <ul id="navlist">
                            <li id="active"><a href="menuIndex">菜谱首页</a></li></span>
                            <li><a href="menulist">菜谱大全</a></li>
                            <li><a href="#">健康膳食</a></li>
                            <li><a href="postmenulog.action">我要发布</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>


<ol class="breadcrumb" style="padding-left:10%;" >
    <li><a href="#">Home</a> /</li>
    <li><a href="#">2013</a> /</li>
    <li class="active">十一月</li>
</ol>
<div id="page">
    <div id="Searchresult">分页初始化完成后这里的内容会被替换。</div>
	<div id="Pagination" class="pagination"><!-- 这里显示分页 --></div>
	<div id="hiddenresult" style="display:none;">
	<!-- 列表元素 -->
	<c:set var="i" value="1"></c:set>
	<c:forEach items="${menus}" var="m" step="16">
    <div class="result">
    	<div class="container">
    <div class="grid" >
<c:forEach items="${menus}" var="m" begin="${i-1}" end="${i+14}">
        <figure class="effect-chico">
            <img src="${m.mimage1}"/>
            <figcaption>
                <h2>${m.mname}<br><span>${m.user.nickname}</span></h2>
                <p>主要食材:${m.food}</p>
                <a href="" target="_blank">View more</a>
            </figcaption>
        </figure>
        <c:set var="i" value="${i+1 }"></c:set>
</c:forEach>
    </div>
    </div>
</div>
  </c:forEach>
   </div> 
   </div>
</body>


</html>
