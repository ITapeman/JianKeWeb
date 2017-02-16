<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>菜谱详情</title>
</head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="css/menulist.css"/>
<link rel="stylesheet" type="text/css" href="css/menudetail.css"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style>

</style>
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
	
<div id="container">
	
    <div id="mymyimg">
        <div id="menu_category" >所属分类：${menubyid.menu_Category.cname}</div>
    </div>
    
    <hr>
    
    <div id="detail">
        <div id="title"><h1>${menubyid.mname}
        	<small>
        		<c:choose>
        			<c:when test="${empty CurrentUser}">
        				<a href="denglu.jsp?isclogin=3"> <span style="font-size:10px;">登录后收藏</span></a>
        			</c:when>
        			<c:otherwise>
        				<c:choose>
        				<c:when test="${flag == 1}">
        					<a href="collectionview?mid=${menubyid.mid}"><input type="text" id="shoucang" style="width:40px;" value="收藏" ></a>
        				</c:when>
        				<c:otherwise>
        					<a href="collectionview?mid=${menubyid.mid}"><input type="text" id="shoucang" style="width:50px;background-color:yellow;" value="已收藏" ></a>
        				</c:otherwise>
        				</c:choose>
        			</c:otherwise>
        		</c:choose>
        	</small> 
        	
        	<a href="peronalView?mid=${menubyid.user.uid}"><small style="padding-left:80%;">${menubyid.user.nickname}</small></a></h1></div>
       
        <div id="image">
           <img src="${menubyid.mimage1}"/>
        </div>
        
        <div id=introduce>&nbsp;&nbsp;&nbsp;&nbsp;${menubyid.introduce}</div>
        
        <div id="food">
               <h4>食材明细:</h4><hr><small>&nbsp;&nbsp;&nbsp;&nbsp;${menubyid.food}</small>
        </div>
                <hr>
        <div id="step">
        	<c:set var="i" value="1"></c:set>
            <c:if test="${menubyid.mimage1!=null}">
            <div class="step1" >
                <img src="${menubyid.mimage1}" /><div class="text"><div class="radius"><h4>${i}</h4></div><br><small>${menubyid.mstep1}</small></div>
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${menubyid.mimage2!=null}">
            <div class="step2">
                <img src="${menubyid.mimage2}" /><div class="text"><div class="radius"><h4>${i}</h4></div><br><small>${menubyid.mstep2}</small></div>
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${menubyid.mimage3!=null}">
            <div class="step3">
                <img src="${menubyid.mimage3}" /><div class="text"><div class="radius"><h4>${i}</h4></div><br><small>${menubyid.mstep3}</small></div>
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${menubyid.mimage4!=null}">
            <div class="step4">
                <img src="${menubyid.mimage4}" /><div class="text"><div class="radius"><h4>${i}</h4></div><br><small>${menubyid.mstep4}</small></div>
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${menubyid.mimage5!=null}">
            <div class="step5">
                <img src="${menubyid.mimage5}" /><div class="text"><div class="radius"><h4>${i}</h4></div><br><small>${menubyid.mstep5}</small></div>
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${menubyid.mimage6!=null}">
            <div class="step6">
                <img src="${menubyid.mimage6}" /><div class="text"><div class="radius"><h4>${i}</h4></div><br><small>${menubyid.mstep6}</small></div> 
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${menubyid.mimage7!=null}">
            <div class="step7">
                <img src="${menubyid.mimage7}" /><div class="text"><div class="radius"><h4>${i}</h4></div><br><small>${menubyid.mstep7}</small></div>
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${menubyid.mimage8!=null}">
            <div class="step8">
                <img src="${menubyid.mimage8}" /><div class="text"><div class="radius"><h4>${i}</h4></div><small>${menubyid.mstep8}</small></div>
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${menubyid.mimage9!=null}">
            <div class="step9">
                <img src="${menubyid.mimage9}" /><div class="text"><div class="radius"><h4>${i}</h4></div><small>${menubyid.mstep9}</small></div>
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${menubyid.mimage10!=null}">
            <div class="step10">
                <img src="${menubyid.mimage10}" /><div class="text"><div class="radius"><h4>${i}</h4></div><br><small>${menubyid.mstep10}</small></div>
            </div>
            </c:if>
        </div>
        </div>
        </div>
</body>

</html>