<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix ="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>菜谱主页</title>
</head>

<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/menulist.css">
<link rel="stylesheet" type="text/css" href="css/menu.css">
<link rel="stylesheet" type="text/css" href="css/pagination.css" />
<link rel="stylesheet" type="text/css" href="css/index.css">
<script src="js/jquery.js"></script>
<script src="js/jquery.pagination.js"></script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>

<script type="text/javascript">

$.ajaxSetup({
	cache:false
});

function showMenu(str)
{
var xmlhttp;    
if (str=="")
  {
  document.getElementById("menus").innerHTML="";
  return;
  }
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("menus").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","http://localhost:8080/JianKe_Web01/ajaxmenu?menu_cid="+str,true);
xmlhttp.send();
}

$(function () {
	 $('#order_nav li').hover(function () {
	        $(this).addClass('on');
	    },
		function () {
	        $(this).removeClass('on');
	    }
		);
	});
</script>
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
                            <li id="active"><a href="#">菜谱首页</a></li></span>
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

	<div id="container" style="width:80%;margin-left:10%;background:#F7F7F7">
        <div id="myimg">
			<div class="special " style="width:80%;margin-left:10%;background: #F7F7F7">
        <div class="container" style="width:100%;">
            <div class="arrival-grids" >
                <ul id="flexiselDemo">
                <c:forEach items="${initmenus}" var="imn">
                    <li ><a href="getmenubyid.action?menuid=${imn.mid }"><img src="${imn.mimage1}" alt=""/></a></li>
                </c:forEach>   
                </ul>
                <script type="text/javascript">
                    $(window).load(function() {
                        $("#flexiselDemo").flexisel({
                            visibleItems: 4,
                            animationSpeed: 500,
                            autoPlay: false,
                            autoPlaySpeed: 3000,
                            pauseOnHover:true,
                            clone:true,
                            enableResponsiveBreakpoints: true,
                            responsiveBreakpoints: {
                                portrait: {
                                    changePoint:480,
                                    visibleItems: 1
                                },
                                landscape: {
                                    changePoint:640,
                                    visibleItems: 2
                                },
                                tablet: {
                                    changePoint:768,
                                    visibleItems: 3
                                }
                            }
                        });
                    });
                </script>
                <script type="text/javascript" src="js/jquery.flexisel.js"></script>
            </div>
        </div>
    </div>
    </div>
    <hr>
    
<div id="order_nav">
  <div class="auto_width height100">
    <ul class="list not_ie" >
    <c:forEach items="${categories}" var="imn">
      <li>
        <div class="ico _2" onclick="showMenu(${imn.menu_cid});return false;"><img src="${imn.image}" style="width:100%;"/><a href="#"></a></div>
        <p><span>${imn.cname}</span></p>
      </li>
    </c:forEach> 
    </ul>
  </div>
</div>

        <%-- <div class="category">
        <ul class="nav nav-pills">
        <c:forEach items="${categories}" var="imn">
            <li class="c_img " onclick="showMenu(${imn.menu_cid});return false;"><a href="#"><img  src="${imn.image}"><p>${imn.cname}</p></a></li>
        </c:forEach>  
        </ul>
    	</div> --%>
  <div id="menus" style="width:80%; margin-left:10%;background:#F7F7F7;" >
  <div class="container" >
    <div class="grid">
<c:forEach items="${menus}" var="m" >
        <figure class="effect-chico">
            <img src="${m.mimage1}"/>
            <figcaption>
                <h2>${m.mname}<br><span>${m.user.nickname}</span></h2>
                <p>主要食材:${m.food}</p>
                <a href="getmenubyid.action?menuid=${m.mid }" target="_blank">View more</a>
            </figcaption>
        </figure>
        <c:set var="i" value="${i+1 }"></c:set>
</c:forEach>
    </div>
    </div>
</div>
</div>
</body>
</html>
