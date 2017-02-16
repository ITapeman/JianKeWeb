<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<%@ taglib uri="/struts-tags" prefix="s" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<jsp:include page="persontop.jsp"></jsp:include>

      	
<div style="width:1000px;margin:auto;"  >
    <div class="container">
    <div class="grid">
    <s:if test="#attr.cMenus!=null && #attr.cMenus.size>0">
<s:iterator value="#attr.cMenus">
        <figure class="effect-chico">
            <img src="<s:property value="mimage1"/>"/>
            <figcaption>
                <h2><s:property value="mname"/><br></h2>
             
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
      	