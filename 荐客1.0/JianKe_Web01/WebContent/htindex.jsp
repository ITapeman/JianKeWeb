<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />荐客后台管理中心</h1>
  </div>
  <div class="head-l" style="float:right;"><a class="button button-little bg-green" href="htuserinfo.jsp" target="right" ><span class="icon-home"></span> ${htUser.hname}</a> <a class="button button-little bg-red" href="htlogin.jsp"><span class="icon-power-off"></span> 退出登录</a></div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>基本管理</h2>
  <ul style="display:block">
    <li><a href="htgetmenus.action?mhidden=1" target="right"><span class="icon-caret-right"></span>菜谱推荐管理</a></li>
    <li><a href="htgetshops.action?hidden=1" target="right"><span class="icon-caret-right"></span>店铺推荐管理</a></li>
    <li><a href="pall" target="right"><span class="icon-caret-right"></span>优惠推荐管理</a></li>  
  </ul>   
  <h2><span class="icon-pencil-square-o"></span>账号管理系统</h2>
  <ul>
    <li><a href="htpassword.jsp" target="right"><span class="icon-caret-right"></span>修改账号密码</a></li>
  </ul>  
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a href="htinfo.jsp" target="right" class="icon-home"> 首页</a></li>
  <li><a href="##" id="a_leader_txt">welcome</a></li>
  <li><b>当前语言：</b><span style="color:red;">中文</php></span>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0"  name="right" width="100%" height="100%"></iframe>
</div>
</body>
</html>