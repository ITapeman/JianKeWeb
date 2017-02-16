<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<jsp:include page="persontop.jsp"></jsp:include>
<div style="width:1000px;margin:auto;"  >
    <div class="container">
    <div class="grid">
    <s:if test="#attr.menuList!=null && #attr.menuList.size>0">
<s:iterator value="#attr.menuList">
        <figure class="effect-chico">
            <img src="<s:property value="mimage1"/>"/>
            <figcaption>
                <h2><s:property value="mname"/><br><span>${m.user.nickname}</span></h2>
                <p>主要食材:${m.food}</p>
                <a href="getmenubyid.action?menuid=<s:property value="mid"/>" target="_blank">View more</a>
            </figcaption>
        </figure>    
</s:iterator>
	</s:if>
	<s:else>
      	没有菜单!
    </s:else>
    </div>
    </div>
</div>
</body>
</html>
