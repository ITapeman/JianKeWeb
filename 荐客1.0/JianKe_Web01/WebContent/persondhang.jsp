<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<title>person</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript"  src="js/nav.js"></script>
<style type="text/css">
   img.img_dh{
          width:200px;
          height:200px;'
         }
         img.imgmenu{
         width: 300px;
         height: 300px;
         }
         img.imgm{
         width: 70%;     
         }
.person{
height:20%;
width: 100%; 
border: 2px grey solid;
position: relative;
}
.person1{
height :100%;
width:15%;
margin-left: 5%;
border: 1px grey solid;
float: left;
}
.person2{
width:10%;
border: 2px greysolid;
float: left;
}
.person3{
width:10%;
float:right;
width:80px;height:40px;


}
.personmain{
margin-top: 1%; margin-left:5%;height: 60%;width:90%;
}

.personview{
width:100%;
height:5%;
margin-top: 5px;

} 
#view li{

float:left;width:150px;height:40px;position:relative;text-align:center;line-height:40px;
}
/* .m1{
border: 1px blue solid;
width:100%;
height: 20px;

}
 */
</style>
</head>
<body>
<div  >
	<div class="top" style="background-color: black;" >
		<a class="logo_l" href="/" title="返回首页"></a>
		<!--导航开始-->
		<div class="nav_z">
			<ul id="navul" class="cl">
				<li>
					<a href="index.jsp">首页</a>					
				</li>
				<li>
					<a href="#">菜谱</a>
					<ul>
						 <li><a href="#">菜谱首页</a></li>
                         <li><a href="#">美食秘籍</a></li>
                         <li><a href="#">健康膳食</a></li>
					</ul>
				</li>
				<li>
					<a href="#">找店铺</a>
					
				</li>
				<li>
					<a href="#">找优惠</a>
					
				</li>
				<li>
					<a href="#">联系我们</a>
					
				</li>
				<li>
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
				</li>
			</ul>
		</div><!--导航结束-->
		<script  type="text/javascript"> 
		$(".navbg").capacityFixed();
		</script>
	</div>
</div>
    </body>
       
    

     
