<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<jsp:include page="persondhang.jsp"></jsp:include>

<div style="
background-color: #f2f2f2;
text-align: center;
line-height: 38px;
font-size: 14px;
overflow: hidden;
color: #666;
-ms-user-select:none;
width:10%;
position: relative;
float: left;"
align="left">

<ul>
<li>
   <h2>账户信息</h2>
</li>
<li>   
   <a>个人信息</a>
</li>
<li>   
   <a>修改密码</a>
 </li>  
 <li>
   <a>修改头像</a>
 </li>
 <li>
   <a>个性化</a>
 </li>
</ul>  
</div>

<div  style="width:89%;height:90%;position: relative;float: left;">
                        
            <div > <h3>账户:${CurrentUser.uname} </h3></div> 
              <br>
               <form action="guanli.action "  method="post">  
                  <h3>用户名</h3>               
                  <input type="text" name="uname" id="uname" >
                  <h3>ID</h3>
                  <input type="text" name="uid"> 
                  <h3> 密码: </h3> 
                  <input type="text" name="pwd" >            
                  <h3> e-mail: </h3>
                  <input type="text" name="mail">
                  <h3> 个人昵称:</h3>
                  <input type="text" name="nickname" >
                 
                  <input type="submit" value="保存" >
              </form>
                   
                                             小提示:请不要随意修改,以防丢失.

</div>