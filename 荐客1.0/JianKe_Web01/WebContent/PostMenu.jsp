<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1"  />
<title>发布菜谱</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/postmenu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<link rel="stylesheet" href="bootstrap/bootstrap.css">
<link rel="stylesheet" href="bootstrap/bootstrap-theme.css">
<script src="bootstrap/jquery-1.10.2.js"></script>
<script src="bootstrap/bootstrap.js"></script>
</head>
<script type="text/javascript">
	
	$ (function ()
    {
	   $ ("#btnzl").click (function ()
	   {
	   	$("#depends").html($("#depends").html()+'<div><input type="text" placeholder="请填写主料名称" style="width:460px;height:40px;"/><br></div>');
	   });
    })
	
	$ (function ()
    {
	   $ ("#btnfl").click (function ()
	   {
	   	$("#div_z4_fuliaodetil").html($("#div_z4_fuliaodetil").html()+'<div><input type="text" placeholder="请填写辅料名称" style="width:460px;height:40px;"/><br></div>');
	   });
    })
	
$(function(){  
    $("#pstimg").change(function(){  
        var file = this.files[0];  
       /* alert("文件大小:"+(file.size / 1024).toFixed(1)+"kB"); */ 
        if (window.FileReader) {  
            var reader = new FileReader();  
            reader.readAsDataURL(file);  
            //监听文件读取结束后事件  
            reader.onloadend = function (e) {  
                showXY(e.target.result,file.fileName);  
            };  
        }  
    });  
});  
function showXY(source){  
    var img = document.getElementById("loc_img");  
    img.src = source;  
}  



$(function(){  
   $("#pstimg1").change(function(){  
       var file = this.files[0];  
       //alert("文件大小:"+(file.size / 1024).toFixed(1)+"kB");
        if (window.FileReader) {  
            var reader = new FileReader();  
            reader.readAsDataURL(file);  
            //监听文件读取结束后事件  
            reader.onloadend = function (e) {  
                showXY1(e.target.result,file.fileName);  
            };  
        }  
    });  
});  
function showXY1(source){  
    var img = document.getElementById("cpbzimg1");  
    img.src = source;  
    //alert("Width:"+img.width+", Height:"+img.heivght); 
} 

$(function(){  
   $("#pstimg2").change(function(){  
       var file = this.files[0];  
      // alert("文件大小:"+(file.size / 1024).toFixed(1)+"kB");
        if (window.FileReader) {  
            var reader = new FileReader();  
            reader.readAsDataURL(file);  
            //监听文件读取结束后事件  
            reader.onloadend = function (e) {  
                showXY2(e.target.result,file.fileName);  
            };  
        }  
    });  
});  
function showXY2(source){  
    var img = document.getElementById("cpbzimg2");  
    img.src = source;  
    //alert("Width:"+img.width+", Height:"+img.heivght); 
} 

$(function(){  
   $("#pstimg3").change(function(){  
       var file = this.files[0];  
       //alert("文件大小:"+(file.size / 1024).toFixed(1)+"kB");
        if (window.FileReader) {  
            var reader = new FileReader();  
            reader.readAsDataURL(file);  
            //监听文件读取结束后事件  
            reader.onloadend = function (e) {  
                showXY3(e.target.result,file.fileName);  
            };  
        }  
    });  
});  
function showXY3(source){  
    var img = document.getElementById("cpbzimg3");  
    img.src = source;  
    //alert("Width:"+img.width+", Height:"+img.heivght); 
} 

$(function(){  
   $("#pstimg4").change(function(){  
       var file = this.files[0];  
       //alert("文件大小:"+(file.size / 1024).toFixed(1)+"kB");
        if (window.FileReader) {  
            var reader = new FileReader();  
            reader.readAsDataURL(file);  
            //监听文件读取结束后事件  
            reader.onloadend = function (e) {  
                showXY4(e.target.result,file.fileName);  
            };  
        }  
    });  
});  
function showXY4(source){  
    var img = document.getElementById("cpbzimg4");  
    img.src = source;  
    //alert("Width:"+img.width+", Height:"+img.heivght); 
} 

$(function(){  
   $("#pstimg5").change(function(){  
       var file = this.files[0];  
       //alert("文件大小:"+(file.size / 1024).toFixed(1)+"kB");
        if (window.FileReader) {  
            var reader = new FileReader();  
            reader.readAsDataURL(file);  
            //监听文件读取结束后事件  
            reader.onloadend = function (e) {  
                showXY5(e.target.result,file.fileName);  
            };  
        }  
    });  
});  
function showXY5(source){  
    var img = document.getElementById("cpbzimg5");  
    img.src = source;  
    //alert("Width:"+img.width+", Height:"+img.heivght); 
} 

$(function(){  
   $("#pstimg6").change(function(){  
       var file = this.files[0];  
       //alert("文件大小:"+(file.size / 1024).toFixed(1)+"kB");
        if (window.FileReader) {  
            var reader = new FileReader();  
            reader.readAsDataURL(file);  
            //监听文件读取结束后事件  
            reader.onloadend = function (e) {  
                showXY6(e.target.result,file.fileName);  
            };  
        }  
    });  
});  
function showXY6(source){  
    var img = document.getElementById("cpbzimg6");  
    img.src = source;  
    //alert("Width:"+img.width+", Height:"+img.heivght); 
} 

$(function(){  
   $("#pstimg7").change(function(){  
       var file = this.files[0];  
       //alert("文件大小:"+(file.size / 1024).toFixed(1)+"kB");
        if (window.FileReader) {  
            var reader = new FileReader();  
            reader.readAsDataURL(file);  
            //监听文件读取结束后事件  
            reader.onloadend = function (e) {  
                showXY7(e.target.result,file.fileName);  
            };  
        }  
    });  
});  
function showXY7(source){  
    var img = document.getElementById("cpbzimg7");  
    img.src = source;  
    //alert("Width:"+img.width+", Height:"+img.heivght); 
} 

$(function(){  
   $("#pstimg8").change(function(){  
       var file = this.files[0];  
       //alert("文件大小:"+(file.size / 1024).toFixed(1)+"kB");
        if (window.FileReader) {  
            var reader = new FileReader();  
            reader.readAsDataURL(file);  
            //监听文件读取结束后事件  
            reader.onloadend = function (e) {  
                showXY8(e.target.result,file.fileName);  
            };  
        }  
    });  
});  
function showXY8(source){  
    var img = document.getElementById("cpbzimg8");  
    img.src = source;  
    //alert("Width:"+img.width+", Height:"+img.heivght); 
} 

$(function(){  
   $("#pstimg9").change(function(){  
       var file = this.files[0];  
       //alert("文件大小:"+(file.size / 1024).toFixed(1)+"kB");
        if (window.FileReader) {  
            var reader = new FileReader();  
            reader.readAsDataURL(file);  
            //监听文件读取结束后事件   
            reader.onloadend = function (e) {  
                showXY9(e.target.result,file.fileName);  
            };  
        }  
    });  
});  
function showXY9(source){  
    var img = document.getElementById("cpbzimg9");  
    img.src = source;  
    //alert("Width:"+img.width+", Height:"+img.heivght); 
} 
</script>
<body>
<div id="div_all">
	<div class="top" style="background-color: black;" >
		<a class="logo_l" href="/" title="返回首页"></a>
		<!--导航开始-->
		<div class="nav_z">
			<ul id="navul" class="cl">
				<li>
					<a href="index.html">首页</a>					
				</li>
				<li>
					<a href="menuIndex">菜谱</a>
				</li>
				<li>
					<a href="fenyeshop">找店铺</a>
				</li>
				<li>
					<a href="privilege">找优惠</a>
				</li>
				<%-- <li>
				 	<c:choose>
		                        	<c:when test="${empty CurrentUser}">
		                        	
		                        	</c:when>
					  <c:otherwise>
				                        <div style="margin-left:88%;width:20%;height:80%;">
				                        	<img alt="" src="${CurrentUser.headicon}" style="width:20%;height:4%;float:left;background-color:white;">
				                        	<a href="peronalView?mid=${CurrentUser.uid}"><span style="color:white;font-size:20px;">${CurrentUser.nickname}</span>
				                          	</a>
				                          	<a href="zhuxiao.action"><span style="font-size:10px;margin-left:10px;">注销</span></a>
				                        </div>
			                        </c:otherwise>
		                        </c:choose>
				</li> --%>
			</ul>
		</div><!--导航结束-->
		<script  type="text/javascript"> 
		$(".navbg").capacityFixed();
		</script>
	</div>
	<form action="postmenu.action" method="post" enctype="multipart/form-data">
		<div id="div_body">
			<div id="div_z1">
				<span style="font-family: '微软雅黑';font-size: 30px;">欢迎发布新菜谱，先介绍一下你的大作吧</span>
			</div>
			<div id="div_z2">
				<div id="div_z2_top">
					<a href="javascript:void" ><span style="color:red;">查看帮助>></span></a>
				</div>
				<div id="div_z2_center">
					<div id="div_z2_center_up">
						<span style="margin-left: 10%;font-size: 20px;font-family: '微软雅黑';">标题</span>
					</div>
					<div id="div_z2_center_down">
						<span style="margin-left: 10%;"><input type="text" name="mtitle" placeholder="请填写菜谱名称" style="width:50%;height: 60%;"></span>
					</div>
				</div>
				<div id="div_z2_bottom">
					<div id="div_z2_bottom_left">
						<div id="div_z2_bottom_left_up">
							<img src="" id="loc_img" style="width:50%;height:90%;margin-left: 20%;background: url(img/postm.jpg);background-size: 100% 100%;"/> 
						</div>
						<div id="div_z2_bottom_left_down">
							<span class="fileinput-button">
								<span style="color: black;background:deepskyblue;">上传</span>
								<input type="file" name="pstimg" id="pstimg">
							</span>
						</div>
					</div>
					<div id="div_z2_bottom_right">
						<textarea name="mintroduce" style="width: 60%;height:71%;" placeholder="说说这道菜背后的故事吧~"></textarea>
					</div>
				</div>
			</div>
			<div id="div_z3">
				<span style="font-family: '微软雅黑';font-size: 30px;">记录你的食材</span>
			</div>
			<div id="div_z4">
				<div id="div_z4_zhuliao">
					<span style="margin-left: 10%;font-size: 20px;font-family: '微软雅黑';">主料</span>
				</div>
				<div id="div_z4_zhuliaodetil">
					<div id="depends">
						<input  type="text" name="zhuliao1" placeholder="比如：面粉" style="width:40%;height:40px;"/><br>
						<br>
						<input type="text" name="zhuliao2" placeholder="请填写主料" style="width:40%;height:40px;"/><br>
						<br>
					</div>
						<button id="btnzl" type="button">添加一项</button>
				</div>
				<div id="div_z4_fuliao">
					<span style="margin-left: 10%;font-size: 20px;font-family: '微软雅黑';">辅料</span>
				</div>
				<div id="div_z4_fuliaodetil">
						<input type="text" name="fuliao1" placeholder="比如：食盐" style="width:40%;height:40px;"/><br>
						<br>
						<input type="text" name="fuliao2" placeholder="请填写辅料" style="width:40%;height:40px;"/><br>
						<br>
						<input type="text" name="fuliao3" placeholder="请填写辅料" style="width:40%;height:40px;"/><br>
						<br>
					<div id="fladd" style="">
					</div>
					<br>
						<button id="btnfl" type="button">添加一项</button>
				</div>
			</div>
			<div id="div_z5">
				<span style="font-family: '微软雅黑';font-size: 30px;">开始你的菜谱步骤</span>
			</div>
		</div>
		<div id="div_cpbz">
			<div id="div_cpbz_m1">
				<div id="div_cpbz_m1_left">
					<img src="img/1.png" style="width:50%;height:50%;margin-top:25%;margin-left: 25%;"/>
				</div>
				<div id="div_cpbz_m1_center">
					<img src="" id="cpbzimg1" style="width:95%;height:90%;margin-top: 5%;background: url(img/bztp.jpg);background-size: 100% 100%;"/><br>
					<span class="fileinput-button">
						<span style="color: black;background:deepskyblue;">上传</span>
						<input type="file" name="pstimg" id="pstimg1">
					</span>
				</div>
				<div id="div_cpbz_m1_right">
					<textarea name="step1" style="width:80%;height:90%;margin-left: 5%;margin-top:2%;" placeholder="请填写步骤描述-"></textarea>
				</div>
			</div>
		</div>
		
		<div id="div_cpbz">
			<div id="div_cpbz_m1">
				<div id="div_cpbz_m1_left">
					<img src="img/2.png" style="width:50%;height:50%;margin-top:25%;margin-left: 25%;"/>
				</div>
				<div id="div_cpbz_m1_center">
					<img src="" id="cpbzimg2" style="width:95%;height:90%;margin-top: 5%;background: url(img/bztp.jpg);background-size: 100% 100%;"/><br>
					<span class="fileinput-button">
						<span style="color: black;background:deepskyblue;">上传</span>
						<input type="file" name="pstimg" id="pstimg2">
					</span>
				</div>
				<div id="div_cpbz_m1_right">
					<textarea name="step2" style="width:80%;height:90%;margin-left: 5%;margin-top:2%;" placeholder="请填写步骤描述-"></textarea>
				</div>
			</div>
		</div>
		
		<div id="div_cpbz">
			<div id="div_cpbz_m1">
				<div id="div_cpbz_m1_left">
					<img src="img/3.png" style="width:50%;height:50%;margin-top:25%;margin-left: 25%;"/>
				</div>
				<div id="div_cpbz_m1_center">
					<img src="" id="cpbzimg3" style="width:95%;height:90%;margin-top: 5%;background: url(img/bztp.jpg);background-size: 100% 100%;"/><br>
					<span class="fileinput-button">
						<span style="color: black;background:deepskyblue;">上传</span>
						<input type="file" name="pstimg" id="pstimg3">
					</span>
				</div>
				<div id="div_cpbz_m1_right">
					<textarea name="step3" style="width:80%;height:90%;margin-left: 5%;margin-top:2%;" placeholder="请填写步骤描述-"></textarea>
				</div>
			</div>
		</div>
		
		<div id="div_cpbz">
			<div id="div_cpbz_m1">
				<div id="div_cpbz_m1_left">
					<img src="img/4.png" style="width:50%;height:50%;margin-top:25%;margin-left: 25%;"/>
				</div>
				<div id="div_cpbz_m1_center">
					<img src="" id="cpbzimg4" style="width:95%;height:90%;margin-top: 5%;background: url(img/bztp.jpg);background-size: 100% 100%;"/><br>
					<span class="fileinput-button">
						<span style="color: black;background:deepskyblue;">上传</span>
						<input type="file" name="pstimg" id="pstimg4">
					</span>
				</div>
				<div id="div_cpbz_m1_right">
					<textarea name="step4" style="width:80%;height:90%;margin-left: 5%;margin-top:2%;" placeholder="请填写步骤描述-"></textarea>
				</div>
			</div>
		</div>
		
		<div id="div_cpbz">
			<div id="div_cpbz_m1">
				<div id="div_cpbz_m1_left">
					<img src="img/5.png" style="width:50%;height:50%;margin-top:25%;margin-left: 25%;"/>
				</div>
				<div id="div_cpbz_m1_center">
					<img src="" id="cpbzimg5" style="width:95%;height:90%;margin-top: 5%;background: url(img/bztp.jpg);background-size: 100% 100%;"/><br>
					<span class="fileinput-button">
						<span style="color: black;background:deepskyblue;">上传</span>
						<input type="file" name="pstimg" id="pstimg5">
					</span>
				</div>
				<div id="div_cpbz_m1_right">
					<textarea name="step5" style="width:80%;height:90%;margin-left: 5%;margin-top:2%;" placeholder="请填写步骤描述-"></textarea>
				</div>
			</div>
		</div>
		
		<div id="div_cpbz">
			<div id="div_cpbz_m1">
				<div id="div_cpbz_m1_left">
					<img src="img/6.png" style="width:50%;height:50%;margin-top:25%;margin-left: 25%;"/>
				</div>
				<div id="div_cpbz_m1_center">
					<img src="" id="cpbzimg6" style="width:95%;height:90%;margin-top: 5%;background: url(img/bztp.jpg);background-size: 100% 100%;"/><br>
					<span class="fileinput-button">
						<span style="color: black;background:deepskyblue;">上传</span>
						<input type="file" name="pstimg" id="pstimg6">
					</span>
				</div>
				<div id="div_cpbz_m1_right">
					<textarea name="step6" style="width:80%;height:90%;margin-left: 5%;margin-top:2%;" placeholder="请填写步骤描述-"></textarea>
				</div>
			</div>
		</div>
		<div id="div_cpbz">
			<input type="submit" value="确认上传" style="width:10%;height:3%;margin-left: 45%;margin-top:10%;margin-bottom: 2%;"onclick="givemid()">
		</div>
	</form>
		<div id="div_bottom"></div>
</div>
<script type="text/javascript">
	function givemid(){
		alert(11);
		window.location.href="postmenu.action?mid=${CurrentUser.uid}";
	}
</script>

