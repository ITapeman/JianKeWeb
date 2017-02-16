<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN" manifest="cache.manifest">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>荐客官网</title>
</head>
<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.min.css"/>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="css/common.css"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
    <div class="top">
		    <div class="navbar-wrapper">
		        <div class="container">
		            <div class="navbar navbar-inverse">
		                <div class="navbar-inner">
		                    <a class="brand" href="#">荐客</a>
		                    <div class="nav-collapse collapse"> 
		                        <ul class="nav">
		                            <li class="active"><a href="#">首页</a></li>
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
				                        <div style="margin-left:80%;margin-top:0.5%;width:20%;height:80%;">
				                        	<img alt="" src="${CurrentUser.headicon}" style="width:30px;height:30px;float:left;">
				                        	<a href="peronalView?mid=${CurrentUser.uid}"><span style="color:white;font-size:20px;margin-left:10px;">${CurrentUser.nickname}</span>
				                          	</a>
				                          	<a href="zhuxiao.action"><span style="font-size:10px;margin-left:10px;">注销</span></a>
				                        </div>
			                        </c:otherwise>
		                        </c:choose>
		                    </div>
		                </div>
		            </div>
		        </div>
			</div>
		 </div>
        <div id="myCarousel" class="carousel slide"><!--左右图片切换滑动-->
          <div class="carousel-inner">
            <div class="item active">
              <img src="img/examples/foods.jpg" alt="">
              <div class="container">
                <div class="carousel-caption"><!--字幕-->
                  <span class="title">荐客</span>
                  <p class="lead">荐客人之所想</p>
                  <!--<a class="btn btn-large btn-primary" href="#">马上注册</a>-->
                </div>
              </div>
            </div>
            <div class="item">
              <img src="img/examples/food2.jpg" alt="">
              <div class="container">
                <div class="carousel-caption">
                  <span class="title">荐客</span>
                <p class="lead">荐客人之所须</p>
                </div>
              </div>
            </div>
            <div class="item">
              <img src="img/examples/food3.jpg" alt="">
              <div class="container">
                <div class="carousel-caption">
                  <span class="title">荐客</span>
                  <p class="lead">荐客人之所爱</p>
                </div>
              </div>
            </div>
          </div>
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
        </div>

        <div class="recipes">
            <div class="container">
            <h3>菜谱推荐</h3>
        <div class="poster-main" id="carousel" data-setting='{
							"width":1000,
							"height":300,
							"posterWidth":500,
							"posterHeight":300,
							"scale":0.8,
							"speed":1000,
							"autoPlay":true,
							"delay":3000,
							"verticalAlign":"middle"
							}'>
            <div class="poster-btn poster-prev-btn"></div>
            <ul class="poster-list">
            <c:forEach items="${initmenus}" var="isp">
                <li class="poster-item"><a href="getmenubyid.action?menuid=${isp.mid}"><img src="${isp.mimage1}" alt="" width="100%" /></a></li>
               	 </c:forEach>
            </ul>
            <div class="poster-btn poster-next-btn"></div>
        </div>
            </div>
        <script src="js/Carousel.js"></script>
        <script>
            $(function(){
                Carousel.init($("#carousel"));
                $("#carousel").init();
            });
        </script>
        </div>

        <div class="line"></div>

        <div class="special">
            <div class="container">
                <h3>店铺推荐</h3>
                <div class="arrival-grids">
                    <ul id="flexiselDemo1">
                    <c:forEach items="${initshops}" var="isp">
                        <li><a href="shopdetile.action?sid=${isp.sid}"><img src="${isp.image}" alt=""/><h4>${isp.sname}</h4></a></li>
                    </c:forEach>
                    </ul>
                    <script type="text/javascript">
                        $(window).load(function() {
                            $("#flexiselDemo1").flexisel({
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
    <div class="special">
        <div class="container">
            <h3>优惠推荐</h3>
            <div class="arrival-grids">
                <ul id="flexiselDemo2">
                	<c:forEach items="${privilegeList}" var="pll">
                    	<li><a href="privilege"><img src="${pll.images}" alt=""/><h4>${pll.name}</h4></a></li>
                    </c:forEach>
                </ul>
                <script type="text/javascript">
                    $(window).load(function() {
                        $("#flexiselDemo2").flexisel({
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




</body>
</html>
