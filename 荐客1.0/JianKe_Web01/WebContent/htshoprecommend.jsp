<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix ="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">店铺内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom" style="float:right;">
      <ul class="search" style="padding-left:10px;">
        <li style="float:left;"> <a class="button border-main icon-plus-square-o" href="htaddshops.jsp"> 添加内容</a> </li>
        <li>
          <input type="text" placeholder="请输入搜索关键字（如：杭州）" id="keywords" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block;" />
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">店铺ID</th>
        <th width="10%">是否是首页推荐</th>
        <th>店铺图片</th>
        <th>店铺名称</th>
        <th>属性</th>
        <th>所在城市</th>
        <th width="10%">更新时间</th>
        <th width="310">操作</th>
      </tr>
      	<c:choose>
      		<c:when test="${empty shops}">
  				<tr>
  					<td>
  						暂时没有该城市下店铺
  					</td>
  				</tr>
      		</c:when>
      		<c:otherwise>
      			<c:forEach items="${shops}" var="ss">
      			<tr>
	          		<td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" />${ss.sid}</td>
	          		<td><input type="text" name="sort[1]" value="${ss.isrecommend}" style="width:50px; text-align:center; border:1px solid #ddd; padding:7px 0;" /></td>
		          	<td width="10%"><img src="${ss.image}" alt="" width="70" height="50" /></td>
		          	<td>${ss.sname}</td>
		         	<td><font color="#00CC99">首页</font></td>
		          	<td>${ss.city.cname}</td>
		         	<td>2016-10-27</td>
		          	<td>
		          		<div class="button-group"> 
		          			<a class="button border-main" href="htbeforeadd.action?sid=${ss.sid}"><span class="icon-edit"></span>修改</a> 
		          			<a class="button border-red" href="#" onclick="del(${ss.sid})"><span class="icon-trash-o"></span> 删除</a> 
		          		</div>
		          	</td>
        		</tr>
        		</c:forEach>
      		</c:otherwise>
        </c:choose>
        <s:iterator value="#session.pageBean">  
      <tr>
        <td colspan="8">
        	<div class="pagelist"> 
       			<s:if test="%{#session.pageBean.currentPage == 1}">    
           			第一页  上一页    
       			</s:if>    
       			<s:else>  
       				<c:choose>  
	       				<c:when test="${empty currtshi}">
	         				<a href="htgetshops.action?page=1">第一页</a>    
	         				<a href="htgetshops.action?page=<s:property value="%{#session.pageBean.currentPage-1}"/>">上一页</a> 
	         			</c:when>   
	         			<c:otherwise>
	         				<a href="htgetshops.action?page=1&shi=${currtshi}">第一页</a>    
	         				<a href="htgetshops.action?page=<s:property value="%{#session.pageBean.currentPage-1}"/>&shi=${currtshi}">上一页</a>
	         			</c:otherwise>
         			</c:choose>
      		 	</s:else>    
      
       			<s:if test="%{currentPage != totalPage}">   
       			<c:choose>  
	       				<c:when test="${empty currtshi}"> 
		       				<a href="htgetshops.action?page=<s:property value="%{#session.pageBean.currentPage+1}"/>">下一页</a>    
		       				<a href="htgetshops.action?page=<s:property value="totalPage"/>">最后一页</a> 
       					</c:when>
       					<c:otherwise>
       						<a href="htgetshops.action?page=<s:property value="%{#session.pageBean.currentPage+1}"/>&shi=${currtshi}">下一页</a>    
		       				<a href="htgetshops.action?page=<s:property value="totalPage"/>&shi=${currtshi}">最后一页</a> 
       					</c:otherwise>   
       			</c:choose>
       			</s:if>  
       			<s:else>    
         			下一页  最后一页    
         		</s:else>    
        	</div>
        </td>
      </tr>
      </s:iterator>
    </table>
  </div>
</form>
<script type="text/javascript">

//搜索
function changesearch(){	
	var key = document.getElementById("keywords").value;
	alert(key);
	window.location.href="htgetshops?shi="+key;
	
}

//单个删除
function del(id){
	alert(id);
	if(confirm("您确定要删除吗?")){
		window.location.href="htdelshop?sid="+id;
	}
}

//批量排序
function sorts(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		return false;
	}
}

//批量首页显示
function changeishome(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}

//批量推荐
function changeisvouch(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");	
		
		return false;
	}
}
</script>
</body>
</html>