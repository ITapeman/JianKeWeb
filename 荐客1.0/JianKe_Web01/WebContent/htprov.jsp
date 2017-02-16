<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="/struts-tags" prefix="s"%>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<script type="text/javascript">
function delpro(pid){

		var result = confirm("是否确认删除？");
		if(result){
			window.location.href="delpro.action?pid="+pid;
		}
	}
function updatepro(pid,date){
        var r=confirm("是否确认修改");
        if(r){
        window.location.href="htprovinfo.jsp?pid="+pid+"&date="+date;
        }
   
}
//搜索
function changesearch(){	
		
		var key= document.getElementById("keywords").value();
		alert(key);
		window.location.href="menuall.action?cid="+key;
}

//单个删除
function del(id,mid,iscid){
	if(confirm("您确定要删除吗?")){
		
	}
}
</script>
</head>
<body>
<form method="post" action="" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="addpro.jsp"> 添加内容</a> </li>
  <!--       <li>搜索：</li>
          </li>
        </if>
    
          
            <li>
          <input type="text" placeholder="请输入搜索关键字（如：1）" id="keywords" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block;" />
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a>
            </li>
           -->

    
    </div>
    <div style=" position: relative;float: left;"align="left">
             
     </div>
    
    <table class="table table-hover text-center">
    
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">序号</th>
        <th width="10%">优惠活动</th>
        <th>介绍</th>
        <th>日期</th>
    
        <th width="10%">操作</th>
      </tr>
      <volist name="list" id="vo">
      <s:iterator value="#attr.pallList">
     
        <tr>
          <td width="8%">
             <s:property value="pid"/>
           
           </td>
          <td width="5%">
                 <s:property value="name"/>
          </td>
          <td width="10%"> 
          <s:property value="introduce"/>
             </td>
          <td width="12%">
           <s:property value="date"/>
          </td >
        	<%-- <td width="10%">
               ${Shop.sname}
        	</td>
         --%>
         <td>
         <div > 
        <a>
                  
	   <button type="button" onclick="delpro(${pid})">删除</button>
	  <button type="button" onclick="updatepro('${pid}','${date}',this)">修改</button>
		</a>
          </div>
         
         </td>
        </tr>
         
        </s:iterator>
   		 
      <tr>
        
      <tr>
        <td colspan="8"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
      </tr>
    </table>
  </div>
</form>

</body>
</html>



