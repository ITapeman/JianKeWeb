<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1"  />
<title>person</title>
<link href="css/style.css" rel="stylesheet" type="text/css" /> 
<link type="text/css" rel="stylesheet" href="css/style2.css" />
<link href="css/shopdetile.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript"  src="js/nav.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	function delnumber(){
		var content = document.getElementById("content").value;
		if(content > 1){
			document.getElementById("content").value = content-1;
		}else{
			alert("没有了，别继续减了");
		}
	}
	
	function addnumber(){
		var content = document.getElementById("content").value;
		if(content < 50){
			content++;
			document.getElementById("content").value = content
		}
	}
	
</script>
</head>
<body>
<div class="bs-docs-example" style="float:none">
            <div style="position: static;float:none" class="navbar navbar-inverse navbar-fixed-top" >
              <div class="navbar-inner" style="float:none" >
                <div class="container" style="float:none">
                  <a data-target=".navbar-inverse-collapse" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <a href="index" class="brand" >荐客</a>
                  <div class="nav-collapse collapse navbar-inverse-collapse" style="float:none">
                    <ul class="nav">
                      <li class="active"><a href="index">首页</a></li>
                      <li><a href="menuIndex">菜谱</a></li>
                      <li><a href="fenyeshop">找店铺</a></li>
                      <li><a href="">找优惠</a></li>
                    </ul>
                          <c:choose>
		                        	<c:when test="${empty CurrentUser}">
			                        	<div class="btn-group pull-right" style="margin-top: 10px;float:none;padding-left:50%">
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
				                        <div style="margin-left:88%;width:20%;float:none">
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

<div  id="div_all">

<div class="popup" id="popup">
	<div class="top_nav" id='top_nav'>
		<div align="center">
			<i></i>
			<span></span>
			<a class="guanbi">X</a>
		</div>
	</div>
	<div class="min">
		<div class="tc_login">
			<div class="left">
				<h4 align="center">手机扫一扫向我付款</h4> 
				<div align="center"><img src="images/zfb_2yuan.jpg" width="150" height="150" /></div>
			</div>  
			<div class="right">
				<form method="POST" name="form_login" target="_top">
					<div align="center">
						<h3><p>您一共预定的座位数：</p></h3>
						<p><input type="text" id="counts" value="0" disabled="disabled"/></p>
						<h3><p>需要付款：</p></h3>
						<p><input type="text" id="pay" value="0" disabled="disabled"/></p>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
					</div>
					<div align="center">
						<input type="submit" class="button" title="Sign In" value="确认支付" onclick="paysure()">
					</div>
				</form>   
				<dd>
					<div align="center"><a href="#" target="_blank">还没有支付宝？</a></div>
				</dd>
			</div>
		</div>
	</div>
</div>

	<div id="div_body">
		<div id="div_shopintro">
			<div id="div_shopintro_left"><img alt="" src="${shop.image}" style="width:100%;height:100%;"> </div>
			<div id="div_shopintro_right">
				<span style="font-size:25px;font-weight:bold;">${shop.sname}</span>
				<p>&nbsp;</p>
				<p>${shop.address}</p>
				<p>${shop.tel}</p>	
			</div>
		</div>
		<hr>
		<div id="div_shopmenu" >
			<div id="div_shopmenu_title">
				<span style="font-size:24px">特色菜展示</span><span style="float:right;"><a href="postchallenge.action?sid=${shop.sid}">挑战本店特色菜</a></span>
			</div>
			<div id="div_shopmenu_detil" style="background-color:#F7F7F7">
				<ul class="vmcarousel-centered vmc-centered">
					<c:choose>
						<c:when test="${empty goods}" >
							<h3>对不起，该店铺没有特色菜！</h3>
						</c:when>
						<c:otherwise>
							<c:forEach items="${goods}" var="g">
								<li>
									<div id="div_shopmenu_detil_image1">
										<div id="div_shopmenu_detil_image1_1"><img alt="" src="${g.images}" style="width:90%;height:90%;margin-top:5%;"> </div>
										<div id="div_shopmenu_detil_image1_2">${g.gname}</div>
									</div>
								</li>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
		<div id="div_shopyuding">
		<hr>
			<div id="div_shopyuding_title">
				<span style="font-size:24px;">座位预定</span>
			</div>
			<div id="div_shopyuding_detil" style="background-color:#F7F7F7">
				<div id="div_shopyuding_detil_img1"><img alt="" src="images/tzz/yuding1.gif" style="width:50%;height:100%;"></div>
				<div id="div_shopyuding_detil_left"><img alt="" src="images/tzz/yuding.jpg" style="width:90%;height:90%;margin-top:5%;"></div>
				<div id="div_shopyuding_detil_right">
					<p><span style="font-size:20px;">请选择你要约定的位置数量</span></p>
					<p>&nbsp;</p>
					<form action="" method="post">
						<p>	
							<input type="button" id="delbtn" value="-" style="width:30px;height:30px;" onclick="delnumber()">
							<input type="text" id="content" style="width:90px;height:30px;text-align:center;" value="1">
							<input type="button" id="addbtn" value="+" style="width:30px;height:30px;" onclick="addnumber()">
						</p>
						<p>&nbsp;</p>
						<p>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="#" class="tc" onclick="yuding()" >确认预定位置</a>
						</p>
					</form>
				</div>
				<div id="div_shopyuding_detil_img2"><img alt="" src="images/tzz/yuding2.gif" style="width:50%;height:100%;"></div>
			</div>
		</div>
		<div id="div_shopcz">
		<hr>
			<div id="div_shopcz_title">
				<span style="font-size:24px;">挑战特色菜</span>
			</div>
			<div id="div_shopcz_body" style="background-color:#F7F7F7">	
				<div style="width:10%;height:100%;"></div>
				<div id="div_shopcz_body_middle">
					<div style="width:100%;heigth:80%;">
						<ul>
						<c:choose>
							<c:when test="${empty challengesMenuList}" >
								<h3>对不起，该店铺还没有人挑战！</h3>
							</c:when>
							<c:otherwise>
								<c:forEach items="${challengesMenuList}" var="cml">
									<li>
										<div id="div_shopcz_body_middle_img">
											<div style="width:50%;height:100%;"></div>
											<div id="div_shopcz_body_middle_img_head"><a href="peronalView?mid=${cml.user.uid}"><img alt="" src="${cml.user.headicon}" style="width:50%;height:100%;"></a></div>
											<div id="div_shopcz_body_middle_img_author">
												<a href="peronalView?mid=${cml.user.uid}"><span>${cml.user.uname}</span></a>
											</div>
										</div>
										<div id="div_shopcz_body_middle_text">
											<span style="font-size:20px;"><a href="peronalView?mid=${cml.user.uid}"><span style="color:red;">${cml.user.uname}</span></a>挑战了本店 的一道招牌菜：<a href="changeview?cid=${cml.cid}"><span style="color:red;">${cml.name}</span></a></span>
										</div>
									</li>
								</c:forEach>
							</c:otherwise>
						</c:choose>
						</ul>
					</div>
					<div style="width:100%;height:10%;margin-top:2%;text-align:center;">
						<s:iterator value="#session.pageBean">    
        			<tr>    
        				<td colspan="6" align="center" bgcolor="#5BA8DE">    
         					共<span style="color:red;"><s:property value="#session.pageBean.allRow"/></span>条记录        
         					共<span style="color:red;"><s:property value="#session.pageBean.totalPage"/></span>页        
         					当前第<span style="color:red;"><s:property value="#session.pageBean.currentPage"/></span>页<br>    
        
         			<s:if test="%{#session.pageBean.currentPage == 1}">    
           			第一页  上一页    
         			</s:if>    
         		<!-- currentPage为当前页 -->    
         			<s:else>    
           				<a href="shopdetile.action?page=1">第一页</a>    
           				<a href="shopdetile.action?page=<s:property value="%{#session.pageBean.currentPage-1}"/>">上一页</a>    
        		 	</s:else>    
        
         			<s:if test="%{currentPage != totalPage}">    
         				<a href="shopdetile.action?page=<s:property value="%{#session.pageBean.currentPage+1}"/>">下一页</a>    
         				<a href="shopdetile.action?page=<s:property value="totalPage"/>">最后一页</a>    
         			</s:if>    
        
        			 <s:else>    
         			下一页  最后一页    
         			</s:else>    
        					</td>    
        				</tr>    
					</s:iterator> 
					</div>
				</div>
				<div style="width:10%;height:100%;"></div>
			</div>
		</div>
		<hr>
		<div id="div_shoppj" style="background-color:#F7F7F7;">
			<div id="div_shoppj_title">
				<span style="font-size:24px;">消费评价</span>
			</div>
			<div id="div_shoppj_body">
				<div id="div_shoppj_body_top">
					<ul>
						<c:choose>
							<c:when test="${empty evaluates}">
								<h3>对不起，该店铺还没有人评论！</h3>
							</c:when>
							<c:otherwise>
								<c:forEach items="${evaluates}" var="ev">
									<li>
										<div style="margin-top:20px;background-color:inactivecaption;">
											<div id="div_shoppj_body_top_left">
												<div id="div_shoppj_body_top_left_img">
													<img alt="" src="${ev.user.headicon}" style="width:60%;height:90%;margin-left:20%;">
												</div>
												<div id="div_shoppj_body_top_left_text">
													<span>${ev.user.nickname}<span style="color:red;">VIP</span></span>
												</div>
											</div>
											<div id="div_shoppj_body_top_right">
												<div style="width:100%;height:75%;">
													<span>${ev.content}</span>
												</div>
												<div style="width:100%;height:25%;">
													<div style="width:60%;height:100%;"></div>
													<div style="width:30%;height:100%;text-align:right;">${ev.date}</div>
												</div>
											</div>
										</div>
									</li>
									<li style="height:10px;">&nbsp;</li>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
				<div id="div_shoppj_body_fenye" style="text-align:center;">
						<s:iterator value="#session.pageBean2">    
        			<tr>    
        				<td colspan="6" align="center" bgcolor="#5BA8DE">    
         					共<span style="color:red;"><s:property value="#session.pageBean2.allRow"/></span>条记录        
         					共<span style="color:red;"><s:property value="#session.pageBean2.totalPage"/></span>页        
         					当前第<span style="color:red;"><s:property value="#session.pageBean2.currentPage"/></span>页<br>    
        
         			<s:if test="%{#session.pageBean2.currentPage == 1}">    
           			第一页  上一页    
         			</s:if>    
         		<!-- currentPage为当前页 -->    
         			<s:else>    
           				<a href="shopdetile.action?page=1">第一页</a>    
           				<a href="shopdetile.action?page=<s:property value="%{#session.pageBean2.currentPage-1}"/>">上一页</a>    
        		 	</s:else>    
        
         			<s:if test="%{currentPage != totalPage}">    
         				<a href="shopdetile.action?page=<s:property value="%{#session.pageBean2.currentPage+1}"/>">下一页</a>    
         				<a href="shopdetile.action?page=<s:property value="totalPage"/>">最后一页</a>    
         			</s:if>    
        
        			 <s:else>    
         			下一页  最后一页    
         			</s:else>    
        					</td>    
        				</tr>    
					</s:iterator> 
				</div>
			</div>
		</div>
	</div>
</div>
</html>
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
<script type="text/javascript">
function yuding(){
	var content = document.getElementById("content").value;
	alert(content);
	document.getElementById("counts").value = content;
	document.getElementById("pay").value = content * 20 ;
	
}

function paysure(){
	alert(12345);
	//window.location.href="https://auth.alipay.com/login/index.htm";
	window.open('https://auth.alipay.com/login/index.htm');
}
</script>
