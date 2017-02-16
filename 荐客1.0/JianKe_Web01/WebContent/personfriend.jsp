<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<jsp:include page="persontop.jsp"></jsp:include>
    
<div align="center" style="width: 1000px;margin:auto " >
    <ul><h3>粉丝列表</h3></ul>  
            
         <ul style="margin-right: 60%" >  
         <% int i=1;%>
			<s:iterator value="#attr.oneuser.friends" var="friend">
				
				<!-- <img align="center" alt="1" src="./images/rightsanjiao.png"> -->
    <div style="position: relative;float: left;margin-left:10px;width:30%;height:20%;margin-top: 20px ">
    
      <a style="text-decoration:none;" href="peronalView.action?mid=${friend.uid}" >
        <img src="${friend.headicon}" style="height: 80%;width: 80%;border-radius:50px;"><br> ${friend.nickname}   
     </a>
	</div>		
			</s:iterator>
		</ul>
</div>
