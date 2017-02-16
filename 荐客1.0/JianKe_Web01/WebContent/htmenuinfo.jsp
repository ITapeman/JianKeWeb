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
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>修改菜谱</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="htupdatemenu.action">  
      <div class="form-group">
        <div class="label">
          <label>菜单名称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="${onemenu.mname}" name="title" data-validate="required:请输入菜单名称" />
          <div class="tips"></div>
        </div>
      </div>
  		<div class="form-group">
        <div class="label">
          <label>是否为首页推荐：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="tuijian" value="${onemenu.ismrecommend}"  data-validate="0：为不推荐  1：为推荐" />
          <div class="tips"></div>
        </div>
      </div>
      <if condition="$iscid eq 1">
        <div class="form-group">
          <div class="label">
            <label>菜谱分类：</label>
          </div>
          <div class="field">
            <select name="cid" id="cid" class="input w50" >
              <option value="0">请选择分类</option>
              <option value="1">本周推荐</option>
              <option value="2">家常菜谱</option>
              <option value="3">热菜</option>
              <option value="4">早餐</option>
              <option value="5">养生保健</option>
              <option value="6">点心</option>
              <option value="7">所有菜谱</option>
            </select>
            <div class="tips"></div>
          </div>
        </div>
      </if>
      <div class="form-group">
        <div class="label">
          <label>菜谱描述：</label>
        </div>
        <div class="field">
          <textarea class="input" name="note" style=" height:90px;">${onemenu.introduce}</textarea>
          <div class="tips"></div>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label>食材：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="food" value="${onemenu.food}" />
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label>步骤一：</label>
        </div>
        <div class="field">
          <textarea class="input" name="step1" style=" height:90px;">${onemenu.mstep1}</textarea>
          <div class="tips"></div>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label>步骤二：</label>
        </div>
        <div class="field">
          <textarea class="input" name="step2" style=" height:90px;">${onemenu.mstep2}</textarea>
          <div class="tips"></div>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label>步骤三：</label>
        </div>
        <div class="field">
          <textarea class="input" name="step3" style=" height:90px;">${onemenu.mstep3}</textarea>
          <div class="tips"></div>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label>步骤四：</label>
        </div>
        <div class="field">
          <textarea class="input" name="step4" style=" height:90px;">${onemenu.mstep4}</textarea>
          <div class="tips"></div>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label>步骤五：</label>
        </div>
        <div class="field">
          <textarea class="input" name="step5" style=" height:90px;">${onemenu.mstep5}</textarea>
          <div class="tips"></div>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label>步骤六：</label>
        </div>
        <div class="field">
          <textarea class="input" name="step6" style=" height:90px;">${onemenu.mstep6}</textarea>
          <div class="tips"></div>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label>步骤七：</label>
        </div>
        <div class="field">
          <textarea class="input" name="step7" style=" height:90px;">${onemenu.mstep7}</textarea>
          <div class="tips"></div>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label>步骤八：</label>
        </div>
        <div class="field">
          <textarea class="input" name="step8" style=" height:90px;">${onemenu.mstep8}</textarea>
          <div class="tips"></div>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label>步骤九：</label>
        </div>
        <div class="field">
          <textarea class="input" name="step9" style=" height:90px;">${onemenu.mstep9}</textarea>
          <div class="tips"></div>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label>步骤十：</label>
        </div>
        <div class="field">
          <textarea class="input" name="step10" style=" height:90px;">恭喜你完成了你的菜谱</textarea>
          <div class="tips"></div>
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
</div>

</body>
<script type="text/javascript">
	document.getElementById("cid").value ="${onemenu.menu_Category.menu_cid}";
</script>
</html>