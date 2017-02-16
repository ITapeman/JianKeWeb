<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<script type="text/javascript" src="util.js"></script>
<script type="text/javascript">
	window.onload = function(){
		document.getElementById("mpass").onblur = function(){
			//得到xhr对象
			var xhr = getXHR();
			//注册状态变化监听器
			xhr.onreadystatechange = function(){
				if(xhr.readyState == 4){
					if(xhr.status == 200){
						document.getElementById("msg").innerHTML=xhr.responseText;
					}
				}
			}
			//建立与服务器的链接
			xhr.open("GET","htxgpwd?time="+new Date().getTime());
			
			//向服务器发出请求
			xhr.send(null);
		}
	}
	
</script>
<script type="text/javascript">
window.onload = function(){
	document.getElementById("renewpass").onblur = function(){
		var opass = document.getElementById("newpass").value;
		var rpass = document.getElementById("renewpass").value;
		if(opass != rpass){
			alert("两个输入的密码不匹配");
			return ;
		}
}
}
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 修改您的密码</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="htxgpwd.action">
      <div class="form-group">
        <div class="label">
          <label for="sitename">管理员帐号：</label>
        </div>
        <div class="field">
          <label style="line-height:33px;">
           ${htUser.hname}
          </label>
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">原始密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" id="mpass" name="mpass" size="50" placeholder="请输入原始密码" data-validate="required:请输入原始密码" />       
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">新密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" id="newpass" name="newpass" size="50" placeholder="请输入新密码" data-validate="required:请输入新密码,length#>=5:新密码不能小于5位" />         
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">确认新密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" id="renewpass" name="renewpass" size="50" placeholder="请再次输入新密码" data-validate="required:请再次输入新密码,repeat#newpass:两次输入的密码不一致" />          
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
</html>