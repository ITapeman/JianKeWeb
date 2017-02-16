 <%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="zh-CN" manifest="cache.manifest">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>荐客官网</title>
<style>
.div1 {
	margin-top: 70px;
}

.div1 a {
	display: inline-block;
	margin-left: 16px;
}

.zhong li {
	display: inline;
	margin-left: 100px;
}

.div2 {
	width: 100%;
	height: 257px;
}

.div2 .div2a {
	float: left;
}

.div2a {
	width: 201px;
	height: 270px;
	margin-left: 25px;
	margin-top: 10px;
}

.title{
	font-size:23px;
	margin-top:10px;
	overflow:hidden;
	text-overflow:ellipsis;
	white-space:nowrap;
}

.desc{
	font-size:15px;
	margin-top:10px;
	overflow:hidden;
	text-overflow:ellipsis;
	white-space:nowrap;
}

.date{
	font-size:10px;
	margin-top:10px;
}

</style>
</head>
<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/nav.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<link type="text/css" rel="stylesheet" href="css/style2.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>

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
		<div style="width:100%;height: 200px;background-color: #e5e5e5;margin-top:50px;">
			<img alt="" src="img/zyhimg.jpg" style="width:100%;height:100%;float:right;">
		</div>
		<div class="container">
			<div>
				<div class="div1" style="width: 100%">
					<a href="privilege_type?type=1"><img alt="图片1" src="img/01.png"> </a> 
					<a href="privilege_type?type=2"><img alt="图片2" src="img/02.png"> </a> 
					<a href="privilege_type?type=3"><img alt="图片3" src="img/03.png"> </a>
				</div>
				<hr>
				<div style="height: 900px;background: #F7F7F7;margin-top:10px;">
					<div class="div2">
					
					<s:if test="#attr.privileges!=null&&#attr.privileges.size>0">
						<s:iterator value="#attr.privileges" var="prv">
						<div class="div2a">
							<%-- <c:choose>
								<c:when test="${empty fasong}"> --%>
									<a href="fasong?pid=${prv.pid}" ><img src="${prv.images}" /> </a>
								<%-- </c:when>
								<c:when test="${fasong.pid} == ${prv.pid}">
									<a href="#" class="tc"><img src="${prv.images}"/> </a>
								</c:when>
								<c:otherwise>
									<a href="#" class="tc"><img src="${prv.images}"/> </a>
								</c:otherwise>
							</c:choose> --%>
							<a href="#" id="title" class="tc">${prv.name}</a>
							<p class="desc">${prv.introduce}</p>
							<p class="date">有效期:${prv.date}</p>
						</div>
						</s:iterator>
					</s:if>		
					</div>				
				</div>
			</div>
	</div>
<div id="gray"></div>

<div class="popup" id="popup">

	<div class="top_nav" id='top_nav'>
		<div align="center">
			<i></i>
			<span>获取优惠</span>
			<a class="guanbi"></a>
		</div>
	</div>
	
	<div class="min">
	
		<div class="tc_login">
		
			<div class="left">
				<h4 align="center">手机扫描获取优惠</h4>
				<a href="#"><img src="${fasong.pri_img }"/></a><br/><br/>
			</div>  
		
			<div class="right">
				<p class="title">${fasong.name}</p>
				<p class="desc">${fasong.introduce }</p>
				<p class="date">有效期:${fasong.date }</p>
			<div class="div_right">
				<div class="div_img">
					<img src="${fasong.images }"/>
				</div>
			</div>
			</div>
		
		</div>
	
	</div>

</div>

  
<script type="text/javascript">
//窗口效果
//点击登录class为tc 显示
$(".tc").click(function(){
	$("#gray").show();
	$("#popup").show();//查找ID为popup的DIV show()显示#gray
	tc_center();
});
//点击关闭按钮
$("a.guanbi").click(function(){
	$("#gray").hide();
	$("#popup").hide();//查找ID为popup的DIV hide()隐藏
})

//窗口水平居中
$(window).resize(function(){
	tc_center();
});

function tc_center(){
	var _top=($(window).height()-$(".popup").height())/2;
	var _left=($(window).width()-$(".popup").width())/2;
	
	$(".popup").css({top:_top,left:_left});
}	
</script>

<script type="text/javascript">
$(document).ready(function(){ 

	$(".top_nav").mousedown(function(e){ 
		$(this).css("cursor","move");//改变鼠标指针的形状 
		var offset = $(this).offset();//DIV在页面的位置 
		var x = e.pageX - offset.left;//获得鼠标指针离DIV元素左边界的距离 
		var y = e.pageY - offset.top;//获得鼠标指针离DIV元素上边界的距离 
		$(document).bind("mousemove",function(ev){ //绑定鼠标的移动事件，因为光标在DIV元素外面也要有效果，所以要用doucment的事件，而不用DIV元素的事件 
		
			$(".popup").stop();//加上这个之后 
			
			var _x = ev.pageX - x;//获得X轴方向移动的值 
			var _y = ev.pageY - y;//获得Y轴方向移动的值 
		
			$(".popup").animate({left:_x+"px",top:_y+"px"},10); 
		}); 

	}); 

	$(document).mouseup(function() { 
		$(".popup").css("cursor","default"); 
		$(this).unbind("mousemove"); 
	});
}) 
</script>
</body>
</html>

