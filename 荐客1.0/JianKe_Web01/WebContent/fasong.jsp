<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
	<head>
		<meta charset="utf-8">
		<style type="text/css">
			.div1{ 
			   border:1px solid red;
			   width:650px;  
			   height:400px;  
			   position:absolute;  
			   left:50%;  
			   top:50%;  
			   margin:-200px 0 0 -325px ;
			} 
			.div_lefttop{
				width:400px;
				height:150px;
				float:left;
			}
			.div_leftbottom{
				width:400px;
				height:250px;
				float:left;	
			}
			.div_right{
				width:250px;
				height:400px;
				float:right;
				
			}
			.div_img{
				text-align:center;
				padding-top:125px;
			}
			.title{
				line-height:30px;
				font-size:22px;
			}
			.desc{
				color:#666;
				line-height:26px;
				font-size:15px;
			}
			.date{
				color:#999;
				line-height:21px;
				font-size:15px;
			}
		</style>
	</head>
	<body>
		<div class="div1">
			<s:if test="#attr.fasong!=null">
				<div class="div_lefttop">
					<p class="title">${fasong.name }</p>
					<p class="desc">${fasong.introduce }</p>
					<p class="date">有效期:${fasong.date }</p>
				</div>
			
				<div class="div_right">
					<div class="div_img">
						<img src="${fasong.images }"/>
					</div>
				</div>
				
				<div class="div_leftbottom">
					<form action="login_do.jsp" method="post">
						<br/><br/><br/>
						<a href="#"><img src="${fasong.pri_img }"/></a><br/><br/>
						<input type="button" value="获取优惠"/>
						<input type="button" value="取消"/>
					</form>
				</div>
			</s:if>
		</div>
	</body>
</html>

