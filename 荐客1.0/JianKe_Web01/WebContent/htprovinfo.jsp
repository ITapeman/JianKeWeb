<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>修改优惠</strong></div>
  <div class="body-content">
    
    <form method="post" class="form-x" action="updatepro.action">  
    <input name="pid" value="${param.pid}" style="display:none" >
      <div class="form-group">
        <div class="label">
          <label>优惠活动：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="name" data-validate="required:请输入活动名称" />
          <div class="tips"></div>
        </div>
      </div>
  		<div class="form-group">
        <div class="label">
          <label>是否为首页推荐：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="isrecommend" placeholder="0：为不推荐  1：为推荐"  />
          <div class="tips"></div>
        </div>
        </div>
 
      <div class="form-group">
        <div class="label">
          <label>活动介绍：</label>
        </div>
        <div class="field">
          <textarea class="input" name="introduce" style=" height:90px;"></textarea>
          <div class="tips"></div>
        </div>
      </div>
      
      
       <div class="form-group">
        <div class="label">
          <label>日期：</label>
        </div>
        <div class="field"  >
          <input type="text" class="input" name="date" placeholder="格式:16-10-31" />
        </div>
      </div>
      
        <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    
    </form>
</div>

</body>

</html>