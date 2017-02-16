<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix ="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<title>person</title>


<style type="text/css">



.carousel .container{position: relative; z-index: 9;}
.carousel .item{width: 100%;  height: 0;  padding-bottom: 18%;  overflow: hidden;}
.carousel .item .myimg{position: absolute; top: -131px; left: 0; width: 100%; }
.carousel-caption{width:1200px;background-color: transparent; position: relative;z-index:100;margin:auto;}
.carousel-caption .headcoin{float:left;overflow:hidden; width:150px;height:150px; border-radius: 50%; border:1px solid #ccc; background-color: #ffffff;margin:5% 0 0 10%}
.carousel-caption .headcoin img{width:150px;height:150px;}
.carousel-caption h3{float:left;padding:5% 0 0 20%; }
 .personnav{width:1000px;margin:auto;}
</style>
</head>
<body>
<div>
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
                            <li><a href="privilege">找店铺</a></li>
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
				                        	<img alt="" src="${CurrentUser.headicon}" style="width:20%;height:4%;float:left;">
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
		<script  type="text/javascript"> 
		$(".navbg").capacityFixed();
		</script>
	

<div id="myCarousel" class="carousel slide">
    <div class="carousel-inner">
        <div class="item active">
            <img src="img/bg1.jpg" class="myimg">
                <div class="carousel-caption">
                <div class="headcoin" ><img src="${oneuser.headicon }" /></div>
                	<c:choose>
                		<c:when test="${focus == 1}">
		                    <h3>${oneuser.nickname}
		                    	<small>的个人空间&nbsp;&nbsp;&nbsp; 
		                    	    <%--  <c:when test="${oneuser.uid == CurrentUser.uid }">
		                    	     </c:when>
		                    	     <c:otherwise>
			                    		<a href="addfriend?fid=${oneuser.uid }">关注</a>
		                    	     </c:otherwise> --%>
		                    	     <a href="addfriend?fid=${oneuser.uid }">关注</a>
		                    	</small>
		                    </h3> 
                		</c:when>
                		<c:when test="${focus == 0}">
                			<h3>${oneuser.nickname}
                				<small>的个人空间&nbsp;&nbsp;&nbsp; 
                				 	<%-- <c:when test="${oneuser.uid == CurrentUser.uid }">
		                    	     </c:when>
		                    	     <c:otherwise>
			                    		<a href="addfriend?fid=${oneuser.uid }">已关注</a>
		                    	     </c:otherwise> --%>
		                    	     <a href="addfriend?fid=${oneuser.uid }">已关注</a>
                				</small>
                			</h3>
                		</c:when>
                		<c:otherwise>
                			<h3>${oneuser.nickname}
                				<small>的个人空间&nbsp;&nbsp;&nbsp; 
                					<%-- <c:when test="${oneuser.uid == CurrentUser.uid }">
		                    	     </c:when>
		                    	     <c:otherwise>
			                    		<a href="addfriend?fid=${oneuser.uid }">关注</a>
		                    	     </c:otherwise> --%>
		                    	     <a href="addfriend?fid=${oneuser.uid }">关注</a>
		                    	    
                				</small>
                			</h3>
                		</c:otherwise>
                	</c:choose>
                </div>
            
        </div>

    </div>
</div>

<div class="personnav">
<ul class="nav nav-tabs">	
		<li class="active"><a href="peronalView.action">个人菜谱</a></li>
        <li><a href="percollection?mid=${mid}">个人收藏</a></li>
        <li><a href="perchallengeView.action">挑战菜系</a></li>
        <li><a href="personfriend.jsp">TA的粉丝</a></li>							
</ul>
<script type="text/javascript">
	$(function(){
		 $(".content:gt(0)").css("display","none");
		
		$(".nav li").click(function(){
			$(".nav li").removeClass("active");
			$(this).addClass("active");
		});
	})
</script>


</div>