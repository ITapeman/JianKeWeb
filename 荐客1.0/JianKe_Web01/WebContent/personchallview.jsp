
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>BootStrap  Demo</title>
</head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="css/menulist.css"/>
<link rel="stylesheet" type="text/css" href="css/menudetail.css"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style>
	#step img{
	width:45%;
	float:left;
	margin:0 5% 0 0;
}

.step1 ,.step2,.step3,.step4,.step5,.step6,.step7,.step8,.step9,.step10
{
	height:200px;
	width:700px;
	padding-bottom:150px;
}

#step .text{
	float:left;
	width:45%;
	word-wrap:break-word;
	max-height:200px;
	padding:3px;
}

.text .radius{	
	background-color: #FFFFFF;
	width:30px;
	height:30px;
	border:1px solid red;
	border-radius: 100px;
	padding:1px;
}
.text .radius h4 {
	margin:6px 0 0 10px;
}
.step10 .text .radius h4{margin:6px 0 0 5px;}
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
                    <a href="index" class="brand">荐客</a>
                    <div class="nav-collapse collapse navbar-inverse-collapse">
                        <ul class="nav">
                            <li class="active"><a href="index">首页</a></li>
                            <li><a href="menuIndex">菜谱</a></li>
                            <li><a href="fenyeshop">找店铺</a></li>
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
                    <h1>挑战者菜谱<small></small></h1>
                    <!-- <h3 style="padding-left:70%">菜谱名称：</h3> -->
                    <h3 style="padding-left:70%;margin-top:13%;">${challenge.name}</h3>
                </div>
            </div>
        </div>

    </div>
</div>



<div style="width:70%;margin-left: 20%;">
	<div id="step">
	<c:choose>
	<c:when test="${empty challenge}">空  空  </c:when>
	<c:otherwise>
        	<c:set var="i" value="1"></c:set>
            <c:if test="${challenge.image1!=null && challenge.step1!=null}">
            <div class="step1" >
                <img src="${challenge.image1}" /><div class="text"><div class="radius"><h4>${i}</h4></div><br><small>${challenge.step1}</small></div>
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${challenge.image2!=null && challenge.step2!=null}">
            <div class="step2">
                <img src="${challenge.image2}" /><div class="text"><div class="radius"><h4>${i}</h4></div><br><small>${challenge.step2}</small></div>
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${challenge.image3!=null && challenge.step3!=null}">
            <div class="step3">
                <img src="${challenge.image3}" /><div class="text"><div class="radius"><h4>${i}</h4></div><br><small>${challenge.step3}</small></div>
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${challenge.image4!=null && challenge.step4!=null}">
            <div class="step4">
                <img src="${challenge.image4}" /><div class="text"><div class="radius"><h4>${i}</h4></div><br><small>${challenge.step4}</small></div>
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${challenge.image5!=null && challenge.step5!=null}">
            <div class="step5">
                <img src="${challenge.image5}" /><div class="text"><div class="radius"><h4>${i}</h4></div><br><small>${challenge.step5}</small></div>
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${challenge.image6!=null && challenge.step6!=null}">
            <div class="step6">
                <img src="${challenge.image6}" /><div class="text"><div class="radius"><h4>${i}</h4></div><br><small>${challenge.step6}</small></div> 
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${challenge.image7!=null && challenge.step7!=null}">
            <div class="step7">
                <img src="${challenge.image7}" /><div class="text"><div class="radius"><h4>${i}</h4></div><br><small>${challenge.step7}</small></div>
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${challenge.image8!=null && challenge.step8!=null}">
            <div class="step8">
                <img src="${challenge.image8}" /><div class="text"><div class="radius"><h4>${i}</h4></div><small>${challenge.step8}</small></div>
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${challenge.image9!=null && challenge.step9!=null}">
            <div class="step9">
                <img src="${challenge.image9}" /><div class="text"><div class="radius"><h4>${i}</h4></div><small>${challenge.step9}</small></div>
            </div>
            </c:if>
            <c:set var="i" value="${i+1}"></c:set>
            <c:if test="${challenge.image10!=null && challenge.step10!=null}">
            <div class="step10">
                <img src="${challenge.image10}" /><div class="text"><div class="radius"><h4 >${i}</h4></div><br><small>${challenge.step10}</small></div>
            </div>
            </c:if>
            </c:otherwise>
            </c:choose>
        </div>
</div>
<div style="margin-left:20%;">
	<h3><img alt="" src="images/pinglun.png"> </h3>
</div>
<div style="width: 60%;margin-left: 20%;position: relative;background-color:gainsboro">

	<c:forEach items="${commentList}" var="col">
		<div>
			<div style="background-color:white;">
				<h3>
					${col.user.nickname}
					:
				</h3>
			</div>
			<table>
				<tr>
					<th>
						${col.content}
						<h4>
							发表于
							${col.date}
							<%-- <fmt:formatDate value="${col.date}" /> --%>
							
						</h4>
					</th>
				</tr>
			</table>
		</div>
		</c:forEach>
</div>
<c:choose>
<c:when test="${empty CurrentUser}">
	<div style="margin-left:10%;margin-top:2%;margin-bottom:2%;">
		<a href="denglu.jsp?isplogin=4">您还未登录，请登录后再进行评价</a>
	</div>
</c:when>
<c:otherwise>
<div id="add_comment_div"
	style="margin-left: 20%;position: relative;float: left;">
	<h3>评论</h3>
	<form action="addch" method="post" >
		<input type="hidden" name="cid" value="${challenge.cid}" />
		<table>
			<tr>
				<td>
					<textarea rows="5" style="width:700px;" cols="30" name="content" ></textarea>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value=" 评 论 "
					style="border:1px solid gray;width:50px;height:50px;" />
				</td>
			</tr>
		</table>
	</form>
</div>
</c:otherwise>
</c:choose>
</body>
</html>

