<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<jsp:include page="persontop.jsp"></jsp:include>
<%@ taglib uri="/struts-tags" prefix="s" %>

<div style="width:1000px;margin:auto;"  >
    <div class="container">
    <div class="grid">
    <s:if test="#attr.challengeList!=null && #attr.challengeList.size>0">
<s:iterator value="#attr.challengeList">
        <figure class="effect-chico">
            <img src="<s:property value="image1"/>"/>
            <figcaption>
                <h2><s:property value="name"/><br><span>${m.user.nickname}</span></h2>
                <p>主要食材:${m.food}</p>
                <a href="changeview1.action?cid= <s:property value="cid"/>" target="_blank">View more</a>
            </figcaption>
        </figure>    
</s:iterator>
	</s:if>
	<s:else>
      	没有挑战菜单!
    </s:else>
    </div>
    </div>
</div>