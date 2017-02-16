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
<script type="text/javascript">
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
    /*alert("Width:"+img.width+", Height:"+img.height); */ 
}  

</script>
</head>
<body>
	<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>添加店铺</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="htaddshop.action" enctype="multipart/form-data">  
      <div class="form-group">
        <div class="label">
          <label>店铺名称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="sname" data-validate="required:请输入店铺名称" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>店铺图片：</label>
        </div>
        <div class="field">
          <img src="" id="loc_img" style="width:20%;height:20%;margin-left: 20%;background-size: 100% 100%;"/>
          <input type="file" class="button bg-blue margin-left" name="pstimg" id="pstimg" style="float:left;">
          <div class="tipss">图片尺寸：500*500</div>
        </div>
      </div>    
      <div class="form-group">
        <div class="label">
          <label>地址：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="maddress" data-validate="required:请输入地址" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>联系电话：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="mphone" data-validate="required:请输入联系电话" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>营业时间：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="mhours" data-validate="required:请输入营业时间" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>人均消费：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="mmoney" data-validate="required:请输入人均消费" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>所在城市：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="mcity" data-validate="required:请输入所在城市" />
          <div class="tips"></div>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label>是否设置为推荐：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="isrecommend" data-validate="required:请输入人均消费" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>店铺简介：</label>
        </div>
        <div class="field">
          <textarea class="input" name="mintro" style=" height:90px;"></textarea>
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
</html>