<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix ="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 菜单内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom" style="float: right;">
    <form method="post" action="" id="listform">
      <ul class="search" style="padding-left:10px;">
        <li>搜索：</li>
          <li>
            <select name="cid" id="cchoose" class="input" style="width:200px; line-height:17px;" onchange="changesearch()">
              <option value="0">请选择分类</option>
              <option value="1">本周推荐</option>
              <option value="2">家常菜谱</option>
              <option value="3">热菜</option>
              <option value="4">早餐</option>
              <option value="5">养生保健</option>
              <option value="6">点心</option>
              <option value="7">所有菜谱</option>
            </select>
          </li>
      </ul>
      </form>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">菜谱ID</th>
        <th width="10%">是否为首页推荐</th>
        <th>菜谱名称</th> 	
        <th>菜谱图片</th>
        <th>食材</th>
        <th>所在位置</th>
        <th>分类名称</th>
        <th width="10%">更新时间</th>
        <th width="310">操作</th>
      </tr>
      <c:choose>
      <c:when test="${empty listmenus}">
      	暂无菜谱信息
      </c:when>
      <c:otherwise>
      	<c:forEach items="${listmenus}" var="ms">
	        <tr>
	          <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" />${ms.mid}</td>
	         <%--  <td><input type="text" name="sort[1]" value="${ms.ismrecommend}" style="width:50px;  text-align:center; border:1px solid #ddd; padding:7px 0;" /></td> --%>
	          <td>${ms.ismrecommend}</td>
	          <td>${ms.mname}</td>
	          <td width="10%"><img src="${ms.mimage1}" alt="" width="70" height="50" /></td>
	           <td>${ms.food}</td>
	          <td><font color="#00CC99">首页</font></td> 
	          <td>${ms.menu_Category.cname}</td>
	          <td>2016-10-29</td>
	          <td>
	          	<div class="button-group"> 
	          		<a class="button border-main" href="htbeforupmenu.action?mid=${ms.mid}"><span class="icon-edit"></span> 修改</a> 
	          		<a class="button border-red" href="javascript:void(0)" onclick="del(${ms.mid})"><span class="icon-trash-o"></span> 删除</a> 
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
	       			<c:when test="${empty menu_cid}">
	       				<a href="htgetmenus.action?page=1">第一页</a>    
	       				<a href="htgetmenus.action?page=<s:property value="%{#session.pageBean.currentPage-1}"/>">上一页</a> 
	      		 	</c:when>
	      		 	<c:otherwise>
	      		 		<a href="htgetmenus.action?page=1&menu_cid=${menu_cid}">第一页</a>    
	       				<a href="htgetmenus.action?page=<s:property value="%{#session.pageBean.currentPage-1}"/>&menu_cid=${menu_cid}">上一页</a> 
	      		 	</c:otherwise>
      		 	</c:choose> 
      		 	</s:else>    
       			<s:if test="%{currentPage != totalPage}">   
     			<c:choose>
	       			<c:when test="${empty menu_cid}">
	       				<a href="htgetmenus.action?page=<s:property value="%{#session.pageBean.currentPage+1}"/>">下一页</a>    
	       				<a href="htgetmenus.action?page=<s:property value="totalPage"/>">最后一页</a> 
		       		</c:when>
		       		<c:otherwise>
		       			<a href="htgetmenus.action?page=<s:property value="%{#session.pageBean.currentPage+1}"/>&menu_cid=${menu_cid}">下一页</a>    
	       				<a href="htgetmenus.action?page=<s:property value="totalPage"/>&menu_cid=${menu_cid}">最后一页</a>
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
<script type="text/javascript">

//搜索
function changesearch(){	
	var cc = document.getElementById("cchoose").value;
	alert(cc);
	window.location.href="htchoosemenu?menu_cid="+cc;
}

//单个删除
function del(mid){
	if(confirm("您确定要删除吗?")){
		window.location.href="htdelmenu.action?mid="+mid;
	}
}

</script>
</body>
</html>