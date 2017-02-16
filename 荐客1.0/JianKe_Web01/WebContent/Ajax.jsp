<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix ="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/menulist.css">
<link rel="stylesheet" type="text/css" href="css/menu.css">
<link rel="stylesheet" type="text/css" href="css/pagination.css" />
<script src="js/jquery.pagination.js"></script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div id="menus" style="width:940px; margin:auto;" >
	<div id="container">
    <div class="grid">
<c:forEach items="${menus}" var="m" >
        <figure class="effect-chico">
            <img src="${m.mimage1}"/>
            <figcaption>
                <h2>${m.mname}<br><span>${m.user.nickname}</span></h2>
                <p>主要食材:${m.food}</p>
                <a href="" target="_blank">View more</a>
            </figcaption>
        </figure>
        <c:set var="i" value="${i+1 }"></c:set>
</c:forEach>
    </div>
    </div>
    </div>
</body>
</html>