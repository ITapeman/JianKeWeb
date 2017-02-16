<%@ page contentType="text/html;charset=utf-8"%>


<!DOCTYPE html>
<html lang="en" class="no-js">
 <script src="js/jquery.js"></script>
		<script>
			function checkLogin(){
				var username=$("#form1 input:text").val();
				//正则表达式 /规则/参数i,g,
				//^头部的匹配，$表示尾部的匹配
				//xml dtd  \s \w \d *,?,+,{n},{n,} {n,m} []只代表一个字符
				var regName=/^[a-zA-Z]\w{2,19}$/;//用户名只能是数字字母下划线，长度6-20，必须以字母打头
				if(regName.test(username)){
					 $('form1').action=path;
					 $('form1').submit();
				}else {
					alert("用户名不符合条件");
					
				}
				return false;
			}
		</script>
    <head>

        <meta charset="utf-8">
        <title>荐客官网-登录</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel="stylesheet" href="assets/css/reset.css">
        <link rel="stylesheet" href="assets/css/supersized.css">
        <link rel="stylesheet" href="assets/css/style.css">


    </head>

    <body>

        <div class="page-container">
            <h1>荐&nbsp;&nbsp;客</h1>
            <form id="form1" action="login.action" method="post" onsubmit="return checkLogin()">
            	<input type="hidden" name="islogin" value="${islogin}">
            	<input type="hidden" name="isclogin" value="${param.isclogin}">${param.isclogin}
                <input type="text" name="uname" class="username" placeholder="请输入你的用户名">
                <input type="password" name="pwd" class="password" placeholder="请输入你的密码">
                <button type="submit">登&nbsp;&nbsp;录</button>
              <!--   <button type="button">注&nbsp;&nbsp;测</button> -->
            </form>
        </div>
		
        <!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>

    </body>

</html>

