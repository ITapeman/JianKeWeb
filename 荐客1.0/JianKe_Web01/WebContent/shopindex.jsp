<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix ="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.min.css"/>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="css/common.css"/>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript"  src="js/nav.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/buttons.css">
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="js/buttons.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	cities = new Object(); 
	cities['台湾']=new Array('台北','台南','其他'); 
	cities['马来西亚']=new Array('Malaysia'); 
	cities['北京']=new Array('北京'); 
	cities['上海']=new Array('上海'); 
	cities['天津']=new Array('天津'); 
	cities['重庆']=new Array('重庆'); 
	cities['河北省']=new Array('石家庄', '张家口', '承德', '秦皇岛', '唐山', '廊坊', '保定', '沧州', '衡水', '邢台', '邯郸'); 
	cities['山西省']=new Array('太原', '大同', '朔州', '阳泉', '长治', '晋城', '忻州', '吕梁', '晋中', '临汾', '运城'); 
	cities['辽宁省']=new Array('沈阳', '朝阳', '阜新', '铁岭', '抚顺', '本溪', '辽阳', '鞍山', '丹东', '大连', '营口', '盘锦', '锦州', '葫芦岛'); 
	cities['吉林省']=new Array('长春', '白城', '松原', '吉林', '四平', '辽源', '通化', '白山', '延边'); 
	cities['黑龙江省']=new Array('哈尔滨', '齐齐哈尔', '黑河', '大庆', '伊春', '鹤岗', '佳木斯', '双鸭山', '七台河', '鸡西', '牡丹江', '绥化', '大兴安'); 
	cities['江苏省']=new Array('南京', '徐州', '连云港', '宿迁', '淮阴', '盐城', '扬州', '泰州', '南通', '镇江', '常州', '无锡', '苏州'); 
	cities['浙江省']=new Array('杭州', '湖州', '嘉兴', '舟山', '宁波', '绍兴', '金华', '台州', '温州', '丽水'); 
	cities['安徽省']=new Array('合肥', '宿州', '淮北', '阜阳', '蚌埠', '淮南', '滁州', '马鞍山', '芜湖', '铜陵', '安庆', '黄山', '六安', '巢湖', '池州', '宣城'); 
	cities['福建省']=new Array('福州', '南平', '三明', '莆田', '泉州', '厦门', '漳州', '龙岩', '宁德'); 
	cities['江西省']=new Array('南昌', '九江', '景德镇', '鹰潭', '新余', '萍乡', '赣州', '上饶', '抚州', '宜春', '吉安'); 
	cities['山东省']=new Array('济南', '聊城', '德州', '东营', '淄博', '潍坊', '烟台', '威海', '青岛', '日照', '临沂', '枣庄', '济宁', '泰安', '莱芜', '滨州', '菏泽'); 
	cities['河南省']=new Array('郑州', '三门峡', '洛阳', '焦作', '新乡', '鹤壁', '安阳', '濮阳', '开封', '商丘', '许昌', '漯河', '平顶山', '南阳', '信阳', '周口', '驻马店'); 
	cities['湖北省']=new Array('武汉', '十堰', '襄攀', '荆门', '孝感', '黄冈', '鄂州', '黄石', '咸宁', '荆州', '宜昌', '恩施', '襄樊'); 
	cities['湖南省']=new Array('长沙', '张家界', '常德', '益阳', '岳阳', '株洲', '湘潭', '衡阳', '郴州', '永州', '邵阳', '怀化', '娄底', '湘西'); 
	cities['广东省']=new Array('广州', '清远', '韶关', '河源', '梅州', '潮州', '汕头', '揭阳', '汕尾', '惠州', '东莞', '深圳', '珠海', '江门', '佛山', '肇庆', '云浮', '阳江', '茂名', '湛江'); 
	cities['海南省']=new Array('海口', '三亚'); 
	cities['四川省']=new Array('成都', '广元', '绵阳', '德阳', '南充', '广安', '遂宁', '内江', '乐山', '自贡', '泸州', '宜宾', '攀枝花', '巴中', '达川', '资阳', '眉山', '雅安', '阿坝', '甘孜', '凉山'); 
	cities['贵州省']=new Array('贵阳', '六盘水', '遵义', '毕节', '铜仁', '安顺', '黔东南', '黔南', '黔西南'); 
	cities['云南省']=new Array('昆明', '曲靖', '玉溪', '丽江', '昭通', '思茅', '临沧', '保山', '德宏', '怒江', '迪庆', '大理', '楚雄', '红河', '文山', '西双版纳'); 
	cities['陕西省']=new Array('西安', '延安', '铜川', '渭南', '咸阳', '宝鸡', '汉中', '榆林', '商洛', '安康'); 
	cities['甘肃省']=new Array('兰州', '嘉峪关', '金昌', '白银', '天水', '酒泉', '张掖', '武威', '庆阳', '平凉', '定西', '陇南', '临夏', '甘南'); 
	cities['青海省']=new Array('西宁', '海东', '西宁', '海北', '海南', '黄南', '果洛', '玉树', '海西'); 
	cities['内蒙古']=new Array('呼和浩特', '包头', '乌海', '赤峰', '呼伦贝尔盟', '兴安盟', '哲里木盟', '锡林郭勒盟', '乌兰察布盟', '鄂尔多斯', '巴彦淖尔盟', '阿拉善盟'); 
	cities['广西']=new Array('南宁', '桂林', '柳州', '梧州', '贵港', '玉林', '钦州', '北海', '防城港', '南宁', '百色', '河池', '柳州', '贺州'); 
	cities['西藏']=new Array('拉萨', '那曲', '昌都', '林芝', '山南', '日喀则', '阿里'); 
	cities['宁夏']=new Array('银川', '石嘴山', '吴忠', '固原'); 
	cities['新疆']=new Array('乌鲁木齐', '克拉玛依', '喀什', '阿克苏', '和田', '吐鲁番', '哈密', '博尔塔拉', '昌吉', '巴音郭楞', '伊犁', '塔城', '阿勒泰'); 
	cities['香港']=new Array('香港'); 
	cities['澳门']=new Array('澳门'); 
	function set_city(province, city){ 
		var pv, cv; 
		var i, ii; 
		pv=province.value; 
		cv=city.value; 
		city.length=1; 
		if(pv=='0') return; 
		if(typeof(cities[pv])=='undefined') return; 
		for(i=0; i<cities[pv].length; i++){ 
			ii = i+1; 
			city.options[ii] = new Option(); 
			city.options[ii].text = cities[pv][i]; 
			city.options[ii].value = cities[pv][i]; 
		} 
}
	
	
</script> 

<style type="text/css">
	#div_head{
		width:100%;
		height:5%;
		background-color:black; 
	}

	#div_daohanglan{
		width:80%;
		height:8%;
		background-color:lemonchiffon;
		margin-left:10%;
	}
	#div_body{
		width:80%;
		height:150%;
		margin-left:10%;
	}
		
	body{
		margin:0px;
		font-family:Microsoft YaHei ! important;
	}
	div{
		position:relative;
		float:left;
	} 
		
	#div_title{
		width: 100%;
		height: 5%;
	}
		
	#div_find{
		width:100%;
		height:5%;
		margin-top:2%;
	}
		
	#div_pro{
		width:40%;
		height:100%;
	}
	
	#div_city{
		width:40%;
		height:100%;
	}
	
	#div_btnf{
		width:20%;
		height:100%;
	}
	
	#div_shopcontent{
		width:100%;
		height:120%;
	}
	
	ul,li{
		list-style:none;
		float:left;
		text-align:center;
		display:block;
	}	
	
	A:link{text-decoration:none;}
	
	#div_head_space{
		width:10%;
		height:90%;
	}
	
	#div_head_title{
		width:30%;
		height:90%;
	}
	
	#div_head_find{
		width:20%;
		height:90%;
	}
	
	#div_head_btn{
		width:10%;
		height:90%;
	}
	
	#div_position{
		width:100%;
		height:2%;
	}
	
	#div_p1{
		width:10%;
		height:100%;
		margin-top:0.5%;
	}
	
	#div_p3{
		margin-top:0.5%;
		width:90%;
		height:100%;
	}
	
	#div_shops{
		width:80%;
		height:90%;	
		margin-left:10%;
	}
	
	#div_right{
		width:20%;
		height:90%;
		background-color:#FFCC66;
	}
	
	#div_bottom{
		width:100%;
		height:10%;
		background-color:red;
	}
	
	#div_shopstitle{
		width:100%;
		height:3%;
		
	}
	
	#div_shopsbody{
		width:100%;
		height:93%;
 	}
	#div_shoptitleimg{
		width:50%;
		height:100%;
	}
	
	#div_li1{
		width:1100px;
		height:15%;
		border:1px solid white;
	}
	
	#div_li1imag{
		width:30%;
		height:100%;
	}
	#div_li1title{
		width:20%;
		height:30%;
		margin-top:2%;
	}
	
	#div_li1tuijian{
		width:30%;
		height:100%;
	}
	body,html{font-size：14px}
	
	.l1{background:#FFFFFF}
 	.l2{background:#F4F4F4}
</style>
<script type="text/javascript">
 
 function initUl(){
 	var a = document.getElementById("uul");
  	var v=document.getElementById("uul").getElementsByTagName('li');
   	var ii=1;
  		for(j in v){
     if (ii++%2==0){
      v[j].className="l2";
     }
    else{
     /* v[j].className="l1"; */
    }
   }
  }

    addEvent = function(){
      var _li=document.getElementById("uul").getElementsByTagName('li');
        for(var i=0;i<_li.length;i++)
        {
            _li[i].onmouseover = function(){
                chColor(this ,"powderblue");
            };
            _li[i].onmouseout = function(){  
     if(this.className == "l1"){
      chColor(this ,"#FFFFFF"); 
     }else{
      chColor(this ,"#F4F4F4");
     }
     
            };
        }
    };
    chColor = function(obj ,color){
        obj.style.background = color;
    };
    window.onload = function(){
  		initUl();
        addEvent();

    };
</script>
</head>
<body>
<div class="bs-docs-example" style="float:none">
            <div style="position: static;float:none" class="navbar navbar-inverse navbar-fixed-top" >
              <div class="navbar-inner" style="float:none" >
                <div class="container" style="float:none">
                  <a data-target=".navbar-inverse-collapse" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <a href="index" class="brand" >荐客</a>
                  <div class="nav-collapse collapse navbar-inverse-collapse" style="float:none">
                    <ul class="nav">
                      <li class="active"><a href="index">首页</a></li>
                      <li><a href="menuIndex">菜谱</a></li>
                      <li><a href="fenyeshop">找店铺</a></li>
                      <li><a href="#">找优惠</a></li>
                      
                    </ul>
                   
                          <c:choose>
		                        	<c:when test="${empty CurrentUser}">
			                        <%-- 	<div  class="btn-group pull-right" style="margin-top: 10px;float:none"">
				                            <a href="#" class="btn btn-primary"><i class="icon-user icon-white"></i> User</a>
				                            <a href="#" data-toggle="dropdown" class="btn btn-primary dropdown-toggle"><span class="caret"></span></a>
				                            <ul class="dropdown-menu">
				                                <li id="example"><a href="denglu.jsp"><i class="icon-pencil"></i> 登录</a></li>
				                                <li><a href="register.html"><i class="icon-trash"></i> 注册</a></li>
				                                <li class="divider"></li>
				                                <li><a href="#"><i class="i"></i> Make admin</a></li>
				                            </ul>
				                        </div> --%>
			                        </c:when>
			                        <c:otherwise>
				                        <div style="margin-left:88%;width:20%;float:none">
				                        	<img alt="" src="${CurrentUser.headicon}" style="width:20%;height:4%;float:left;background-color:white;">
				                        	<a href="peronalView?mid=${CurrentUser.uid}"><span style="color:white;font-size:20px;">${CurrentUser.nickname}</span>
				                          	</a>
				                          	<a href="zhuxiao.action"><span style="font-size:10px;margin-left:10px;">注销</span></a>
				                        </div>
			                        </c:otherwise>
		                        </c:choose> 
                   
                  </div><!-- /.nav-collapse -->
                </div>
              </div><!-- /navbar-inner -->
            </div><!-- /navbar -->
          </div>


	
	<div style="width:100%;height:40%;background-color:red;"><img alt="" src="images/tzz/shopnew1.jpg" style="width:100%;height:100%; "></div>
	<!-- 导航栏以下 -->
	<div id="div_body">
		<div id="div_position">
			<div id="div_p1">
				<div style="width:30%;height:100%;">
					<img alt="" src="./images/home.png" style="height:100%;">
				</div>
				<div style="width:60%;height:100%;">
					<span style="font-size:14px;">当前位置:</span>
				</div>
				<hr>
			</div>
			<div id="div_p3">
				<a href="#">${shi}</a>
			</div>
		</div>
		
		<div id="div_find">
			<form action="fenyeshop" method="post">
				<div id="div_pro">
					<span style="font-size:14px;">请选择你要查询的省份</span>
					<SELECT name="sheng" id="to_cn" onchange="set_city(this, document.getElementById('city')); WYL();" class=login_text_input > 
						<option value=0>请选择</option> 
						<option value=台湾>台湾</option> 
						<option value=马来西亚>马来西亚</option> 
						<option value=北京>北京</option> 
						<option value=上海>上海</option> 
						<option value=天津>天津</option> 
						<option value=重庆>重庆</option> 
						<option value=河北省>河北省</option> 
						<option value=山西省>山西省</option> 
						<option value=辽宁省>辽宁省</option> 
						<option value=吉林省>吉林省</option> 
						<option value=黑龙江省>黑龙江省</option> 
						<option value=江苏省>江苏省</option> 
						<option value=浙江省>浙江省</option> 
						<option value=安徽省>安徽省</option> 
						<option value=福建省>福建省</option> 
						<option value=江西省>江西省</option> 
						<option value=山东省>山东省</option> 
						<option value=河南省>河南省</option> 
						<option value=湖北省>湖北省</option> 
						<option value=湖南省>湖南省</option> 
						<option value=广东省>广东省</option> 
						<option value=海南省>海南省</option> 
						<option value=四川省>四川省</option> 
						<option value=贵州省>贵州省</option> 
						<option value=云南省>云南省</option> 
						<option value=陕西省>陕西省</option> 
						<option value=甘肃省>甘肃省</option> 
						<option value=青海省>青海省</option> 
						<option value=内蒙古>内蒙古</option> 
						<option value=广西>广西</option> 
						<option value=西藏>西藏</option> 
						<option value=宁夏>宁夏</option> 
						<option value=新疆>新疆</option> 
						<option value=香港>香港</option> 
						<option value=澳门>澳门</option> 
					</SELECT>  
					<hr>
				</div>
				<div id="div_city">
					<span style="font-size:14px;">请选择该省分下的市区</span>
					<select id="city" class=login_text_input name="shi"> 
						<option value=0>请选择</option> 
					</select> 
						<hr>
				</div>
				<div id="div_btnf">
					<input type="submit" class="button button-primary button-pill button-small" value="搜索" />
				</div>
			</form>
		</div>
		<div id="div_shopcontent">
			<div id="div_shops">
				<div id="div_shopstitle">
					<div id="div_shoptitleimg">
					<div style="height:80%;width:20%;"><img alt="" src="images/ud.png" style="height:80%;"></div>
					<div style="height:80%;width:80%;"><img alt="" src="images/shoptitle.jpg" style="height:80%;"></div>
						<hr/>
					</div>
				</div>	
				<div id="div_shopsbody">
					<ul id="uul">
					<c:choose >
						<c:when test="${empty shops}">
							<span style="font-size:24px;">对不起，该城市还没有店铺信息！</span>
						</c:when>
					<c:otherwise>
						<c:forEach items="${shops}" var="s">
								<li id="lli">
									<div id="div_li1">
										<div id="div_li1imag">
											<a href="shopdetile.action?sid=${s.sid}"><img alt="" src="${s.image}" style="height:80%;width:80%;margin-top:7%;margin-left:7%;"></a>
										</div>
										<div style="width:5%;height:100%;"></div>
										<div id="div_li1title">
											<a href="shopdetile.action?sid=${s.sid}"><span style="font-size:24px;">${s.sname}</span></a><br/>
											<p>
												<img alt="" src="images/address.png" style="width:10%;height:20%;">${s.address}
											</p>
											<p>
												<img alt="" src="images/phone.png" style="width:10%;height:20%;">${s.tel}
											</p>
										</div>
										<div id="div_li1tuijian">
											<div style="width:10%;height:100%;"></div>
											<div style="width:80%;height:80%;">
												<div style="width:100%;height:100%;background-color:powderblue;margin-top:20px;">
													店铺简介：
													<p> ${s.introduce}</p>
												</div>
											</div>
										</div>
									</div>
									<hr/>
								</li>
								<div style="width:100%;height:1%;"></div>
							</c:forEach>
						</c:otherwise>
						</c:choose>
					</ul>
				</div>	
				<div style="width:100%;height:3%;text-align:center;">
				<s:iterator value="#session.pageBean">    
        			<tr>    
        				<td colspan="6" align="center" bgcolor="#5BA8DE">    
         					共<s:property value="#session.pageBean.allRow"/>条记录        
         					共<s:property value="#session.pageBean.totalPage"/>页        
         					当前第<s:property value="#session.pageBean.currentPage"/>页<br>    
        
         			<s:if test="%{#session.pageBean.currentPage == 1}">    
           			第一页  上一页    
         			</s:if>    
         			<s:else>    
           				<a href="fenyeshop.action?page=1">第一页</a>    
           				<a href="fenyeshop.action?page=<s:property value="%{#session.pageBean.currentPage-1}"/>">上一页</a>    
        		 	</s:else>    
        
         			<s:if test="%{currentPage != totalPage}">    
         				<a href="fenyeshop.action?page=<s:property value="%{#session.pageBean.currentPage+1}"/>">下一页</a>    
         				<a href="fenyeshop.action?page=<s:property value="totalPage"/>">最后一页</a>    
         			</s:if>    
        
        			 <s:else>    
         			下一页  最后一页    
         			</s:else>    
        					</td>    
        				</tr>    
					</s:iterator>    
				</div>
			</div>
			
		<!-- 版权区	<div id="div_bottom"></div> -->
		</div>
	</div>
</body>
</html>