<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix ="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">


</script>
</head>
<body>
	<div id="menus">
			<table width="100%" border="0" cellspacing="0" cellpadding="10%">
				<c:set var="row" value="${(fn:length(menus)+2)/3}"/>
				<c:set var="index" value="0"/>
				<c:forEach items="${menus}" var="g">
					<c:set var="column" value="${index % 3}"/>
					<c:if test="${column==0}">
						<tr>
					</c:if>
				
					
					<td width="33%">
					<a href="getmenubyid.action?menuid=${g.mid }">
						<div id="div_menus">
							<div><img src="${g.mimage1}" /></div>
						</div>
							<div id="mydetail" >
								<div>${g.mname}</div>
								<div>${g.user.nickname}</div>	
							</div>
					</a>
					</td>
				
					
					<c:if test="${column==2}">
						
					</c:if>
					
					<c:set var="index" value="${index+1}"/>
					
				</c:forEach>
			</table>
			<div style="width:100%;height:3%;text-align:center;background-color:red;">
				<s:iterator value="#session.pageBean">    
        			<tr>    
        				<td colspan="6" align="center" bgcolor="#5BA8DE">    
         					共<s:property value="#session.pageBean.allRow"/>条记录        
         					共<s:property value="#session.pageBean.totalPage"/>页        
         					当前第<s:property value="#session.pageBean.currentPage"/>页<br>    
        
         			<s:if test="%{#session.pageBean.currentPage == 1}">    
           			第一页  上一页    
         			</s:if>    
         		<!-- currentPage为当前页 -->    
         			<s:else>    
           				<a href="showmenu.action?page=1">第一页</a>    
           				<a href="showmenu.action?page=<s:property value="%{#session.pageBean.currentPage-1}"/>">上一页</a>    
        		 	</s:else>    
        
         			<s:if test="%{currentPage != totalPage}">    
         				<a href="showmenu.action?page=<s:property value="%{#session.pageBean.currentPage+1}"/>">下一页</a>    
         				<a href="showmenu.action?page=<s:property value="totalPage"/>">最后一页</a>    
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

</body>
</html>