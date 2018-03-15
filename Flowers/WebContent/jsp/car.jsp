<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8" import="java.util.*" import="com.flowers.model.*"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>car</title>
<link rel="stylesheet" type="text/css" href="/Flowers/static/css/public.css"/>
<link rel="stylesheet" type="text/css" href="/Flowers/static/css/details.css"/>
<link rel="stylesheet" type="text/css" href="/Flowers/static/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="/Flowers/static/jquery-easyui-1/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="/Flowers/static/jquery-easyui-1/themes/default/easyui.css">
<script type="text/javascript" src="/Flowers/static/js/dot.min.js"></script>
<script type="text/javascript" src="/Flowers/static/js/menu_0.js"></script>
<script type="text/javascript" src="/Flowers/static/js/base.js"></script>
<script type="text/javascript" src="/Flowers/static/jquery-easyui-1/jquery.min.js"></script>
<script type="text/javascript" src="/Flowers/static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/Flowers/static/jquery-easyui-1/jquery.easyui.min.js"></script>
<script src="/Flowers/static/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css">
.shopping {
	width: 962px;
	margin:0 auto;
	font-size: 14px;
}

.shop-a {
	width: 962px;
	height: 70px;
	border-bottom: solid 1px #414141;
}

.shop-left {
	width: 400px;
	height: 70px;
	line-height: 100px;
	float: left;
	font-size: 22px;
	color: #414141
}

.shop-right {
	width: 90px;
	height: 70px;
	line-height: 100px;
	display: block;
	color: #414141;
	font-size: 14;
	float: right;
	text-align: right;
	background: url(../../images/cart01.png) no-repeat scroll 0 42px;
}

.shopping_cart {
	width: 962px;
	border-collapse: collapse;
	font-size: 16px;
	color: #414141;
	border-bottom: solid 1px #414141;
	text-align: center;
}

.shopping_cart a {
	color: #414141;
	cursor: pointer;
}

.shopping_cart_title {
	border-bottom: solid 1px #414141;
	height: 30px;
	line-height: 30px;
}

.shopping_cart_img {
	height: 100px;
	display: block;
	float: left;
	margin: 10px 15px 10px 10px;
}

.shopping_cart_name {
	display: table-cell;
	padding-top: 40px;
	text-align: left;
}

.cart_total {
	height: 40px;
    line-height: 50px;
    font-size: 20px;
    color: #414141;
    text-align: left;
    width: 260px;
    float: right;
    position: relative;
    margin-top: 15px;
}

.cart_total font {
	font-family: Adobe Caslon Pro;
}

.cart_button1 {
	width: 110px;
    height: 40px;
    display: block;
    position: absolute;
    top: 5px;
    right: 0;
    -webkit-appearance: none;
    background: #c71f2c;
    outline: none;
    border: none;
    text-align: center;
    line-height: 38px;
    color: #fff;
    font-size: 18px;
    cursor: pointer;
}

.cart_button2 {
	width: 100px;
	height: 30px;
	display: block;
	float: right;
	margin: 30px 20px 20px 0;
}

.shopping_cart_sl {
	width: 68px;
	height: 20px;
	line-height: 20px;
	text-align: center;
	border: 1px solid #414141;
	margin: 0 3px;
}

.help-right {
	width:100%; 
	font-size:12px;
}

.help-nav {
	font-size: 18px;
	line-height: 30px;
}


.help-s {
	height: 60px;
}

.jia_jian {
	cursor: pointer;
}

.zs_xqmore {
	width: 110px;
	height: 55px;
	line-height: 55px;
	font-size: 16px;
	color: #414141;
	background: url(../images/zs_xq03.png) no-repeat scroll 100% 22px;
}

.zs_xqmore_ul {
	list-style: none;
	width: 972px;
	padding: 0;
	margin: 0 auto;
	font-size: 16px;
}

.zs_xqmore_ul li {
	width: 314px;
	height: 280px;
	float: left;
	margin-right: 10px;
}

.zs_xqmore_ul li .img {
	width: 314px;
	height: 220px;
	margin-bottom: 5px;
}

.zs_xqmore_ul li .li_left {
	width: 100px;
	height: 30px;
	line-height: 32px;
	text-align: center;
	border: solid 1px #414141;
	background: #414141;
	display: block;
	float: left;
	margin-left: 42px;
	color: #fff;
}

.zs_xqmore_ul li .li_right {
	width: 100px;
	height: 30px;
	line-height: 32px;
	text-align: center;
	border: solid 1px #414141;
	background: #fff;
	display: block;
	float: right;
	margin-right: 42px;
	color: #414141;
}

.order-nav {
	height: 80px;
	line-height: 100px;
	font-size: 22px;
	font-weight: bold;
	color: #414141
}

.order-left {
	width: 700px;
	background-color: #f1f2f2;
}

.order-per {
	width: 650px;
	height: 220px;
	margin-left: 20px;
}

.per-nav {
	height: 50px;
	line-height: 50px;
	font-weight: bolder;
}

.hide {
	width: 600px;
	height: 200px;
	margin-left: 50px;
	margin-top: 20px;
	font-size: 14px;
	display: none;
}

.save {
	float: right;
	margin-top: 10px;
}

.Cancel {
	width: 110px;
	float: right;
	margin-top: 10px;
}

.order-del {
	width: 660px;
	margin-left: 20px;
	margin-top: 30px;
}

.chose {
	height: 50px;
	line-height: 50px;
	font-weight: bolder;
}

.order-font {
	height: 320px;
	background-color: #fff;
	margin-top: 30px;
	border: solid 1px #fff;
	padding-left: 20px;
	font-size: 14px;
}

.order-other {
	width: 660px;
	margin-left: 20px;
	margin-top: 30px;
	font-size: 14px;
}

.other-info {
	height: 50px;
	line-height: 50px;
	font-weight: bolder;
}

.submit {
	height: 130px;
	width: 200px;
	margin-top: 30px;
	margin-left: 250px;
}
</style>
</head>
<body>
<body>
	<div class="header">
			<div class="head">
		        <a href="/Flowers/jsp/front_primary.jsp" class="roseonly-logo" id="tag_roseonly"></a>
		        <a href="/Flowers/jsp/front_primary.jsp" class="larose-logo" id="tag_zhuanai"></a>
			<div class="logo_line"></div>
	    	<div class="right">
	    		<a href="http://192.168.50.165:8080/Flowers/jsp/member_login.jsp" class="unlogin" ><span class="h_font">登录</span><span class="h_line">|</span></a>
	    		<a href="http://192.168.50.165:8080/Flowers/jsp/member_register.jsp" class="unlogin" ><span class="h_font">注册</span><span class="h_line">|</span></a>
	    		<a style="display:none" href="http://192.168.50.165:8080/Flowers/jsp/person_information.jsp"  class="login"  ><span class="h_font">个人中心</span><span class="h_line">|</span></a>
	    		<a style="display:none" href="javascript:void(0)" id="exit2"  class="login" ><span class="h_font">退出</span><span class="h_line">|</span></a>
	    		<% Member member=(Member)session.getAttribute("member");
	    		String str;	
	    		if(member!=null){
	    				str=member.getMemberID();
	    			}else{
	    				str="";
	    			}
	    		%>
	    		<a href="/Flowers/carservlet?memberID=<%=str %>" class="right-shop" rel="nofollow"></a>
	    	</div>
	 	</div>

	<div class="logo-container">
	    <a href="http://192.168.50.165:8080/Flowers/jsp/front_primary.jsp" class="logo_nbtn">
			  <img title="figure官网" alt="figure官网" src="/Flowers/static/images/logo.png" />
	    </a>
	</div>
<script type="text/javascript">
	//判断登录
<% 
if (session.getAttribute("member")!= null){
 %>	
 
 	$(".login").css("display","block");
 	$(".unlogin").css("display","none");
<%}else{%>
	$(".login").css("display","none");
	$(".unlogin").css("display","block");
 <%}%>
$("#zhichiBtnBox").hover(function () {
	$(".mes_content").css({
		display: 'block'
	})
}, function () {
	$(".mes_content").css({
		display: 'none'
	})
});
//退出
$("#exit2").click(function(){
	//alert("sss")
	$.ajax({
        type:"post",				//后面用","很容易出错
        url:"/Flowers/exit",
        success:(function(result){
        	window.location.href="/Flowers/jsp/member_login.jsp";
        })
	})
	
})

///
	</script>
	
    <div class="container">
		<div class="nav-container" id="topmenus">
			<div class="main_view_line2"></div>
		</div>
	
		<div class="order" id="efg">
			<div class="shopping">
				<div class="shop-a">
					<div class="shop-left" style="width:800px">我的购物车</div>
					<a href="javascript:void(0);" class="shop-right"  id="cart_del_all">清空购物车</a>
				</div>
				<table id="cartable" class="shopping_cart" border="1" cellspacing="9" cellpadding="50" data-shopid="0">
				<thead>
					<tr class="shopping_cart_title" style="text-align: center;">
						<th width="50" style="text-align: center;"><input type="checkbox" >全选</th>
						<th width="150" style="text-align: center;">类别名称</th>
						<th width="110" style="text-align: center;">商品名称</th>
						<th width="100" style="text-align: center;">图片</th>
						<th width="80" style="text-align: center;">单价</th>
						<th width="80" style="text-align: center;">数量</th>
						<th width="60" style="text-align: center;">操作</td>
					</tr>
					<thead>
					<!-- 显示赠品 -->
					<tbody>
					<%
						ArrayList<Car> list=(ArrayList<Car>)request.getAttribute("car");
						if(list!=null){
						for(int i=0;i<list.size();i++){
							Car car=list.get(i);
					%>	
						<tr style="margin-top:20px">
						<td ><input id=<%=i %> class="check" carID8="<%=car.getCarID()%>" price="<%=car.getOriginalPrice()%>"  number7="<%=car.getNum()%>"  type="checkbox" >选择</td>
						<td value="caName"><%=car.getCaName() %></td> 
						<td value="productName"><%=car.getProductName() %></td> 
						<td value="picture" ><img src="/Flowers/static/productImg/<%=car.getPicture()%>" style="width: 80px;height: 90px"></td>
						<td name="price" value="<%=car.getOriginalPrice()%>">￥<%=car.getOriginalPrice()%></td>
						<td value="10">
						<a style="height: 20px;width: 20px;font-size:20px " href="#" value="减少"  class="easyui-linkbutton">-</a>
						<input name="num" style="text-align: center;width: 30px;height: 30px;" price2="<%=car.getOriginalPrice()%>"  carID1="<%=car.getCarID()%>" value="<%=car.getNum()%>" type="text" >
						<a style="height: 20px;width: 20px; " href="#"  value="增加"  class="easyui-linkbutton">+</a>
				
				<!--<div class="right_select"  style="text-align: center;">
					<input style="float:left;width: 10px" carID1="<%=car.getCarID()%>" value="<%=car.getNum()%>" type="text" >
					<div class="right_u_d">
	    				<a href="javascript:void(0);" class="right_up"></a>
	    				<a href="javascript:void(0);" class="right_down"></a>
					</div>
					<div class="clear"></div>
				</div>-->
			
						</td>
						<td> <button  type="button" value="删除" class="btn btn-default" carID=<%=car.getCarID()%>>删除</button></td>
						</tr>
						<%}} %>
						
						</tbody>
				</table>
				<div class="cart_total">合计：￥<span id="money" ></span>
					<input type="button" onclick="check7()" class="cart_button1" value="去结算"  />
					
				</div>			
			</div>
			<div class="clear"></div>
		</div>
	</div>
	 <!--尾部-->
<div class="footer">
	<div class="four_nav">
		<a  class="four_nav_a bg1">
			<div class="four_nav_div">全场包邮<span class="f14 f_wg_box">特殊礼品除外</span></div>
		</a>	
		<a  class="four_nav_a bg2">
			<div class="four_nav_div">同城速递<span class="f14 f_wg_box">支持当日送达</span></div>
		</a>
		<a   class="four_nav_a bg3">
			<div class="four_nav_div">爱的留言<span class="f14 f_wg_box">支持语音与文字，可随时查阅</span></div>
		</a>
		<a  class="four_nav_a bg4">
			<div class="four_nav_div">保养物语<span class="f14 f_wg_box">悉心保养，恒久保存爱意</span></div>
		</a>		
		<div class="clear"></div>
	</div>
    <div class="footer_box">
        <div class="new_l">
            <a href=""><img src="/Flowers/static/images/logo.png" alt="">
            </a>
            <div style="position:relative;margin-top:30px">
                <a>关注我们</a>
                <a style="position:absolute;left:80px;top:-2px" onMouseOver="showPic(this)" onMouseOut="closeShow(this)"><img src="/Flowers/static/images/weichat.jpg" alt="">
                </a>
 
            </div>
        </div>
        <ul>
            <p>新手指南</p>
            <li><a href="http://www.roseonly.com.cn/about/gouwuliucheng.html" target="_blank">购物流程</a></li>
            <li><a href="http://www.roseonly.com.cn/about/zhifufangshi.html" target="_blank">支付方式</a></li>
            <li><a href="http://www.roseonly.com.cn/about/changjianwenti.html" target="_blank">常见问题</a></li>
            <li><a href="http://www.roseonly.com.cn/about/zhiquanceliang.html" target="_blank">指圈测量</a></li>
        </ul>
        <ul>
            <p>售后服务</p>
            <li><a href="http://www.roseonly.com.cn/about/tuihuantiaoli.html" target="_blank">退款说明</a></li>
            <li><a href="/Flowers/jsp/yanghu.jsp" target="_blank">保养物语</a></li>
        </ul>
        <ul>
            <p>物流配送</p>
            <li><a href="http://www.roseonly.com.cn/about/peisongfangshi.html" target="_blank">配送方式</a></li>
            <li><a href="http://www.roseonly.com.cn/about/peisongfuwu.html" target="_blank">配送服务</a></li>
        </ul>
        <ul style="background:none">
            <p>关于我们</p>
            <li><a href="http://www.roseonly.com.cn/about/pinpaijieshao.html" target="_blank">品牌介绍</a></li>
            <li><a href="http://www.roseonly.com.cn/about/xiaoshouqudao.html" target="_blank">销售渠道</a></li>
            <li><a href="http://www.roseonly.com.cn/about/guanyuwomen.html" target="_blank">联系我们</a></li>
            <li><a href="http://www.roseonly.com.cn/about/jiaruwomen.html" target="_blank">加入我们</a></li>
        </ul>
        <div class="new_r" style="margin-left:35px;">
            <a ><img src="/Flowers/static/images/l.png" style="width:120px" alt=""></a>
				<p>figure官网</p>
        </div>  
        <div class="new_r">
            <a ><img src="/Flowers/static/images/l.png" style="width:120px" alt=""></a>
				<p>微信关注figure</p>
        </div>              
    </div>
    <div class="foot-nav" >
                    figure支持门店城市同城速递服务!
    </div>

</div>
<div id='preview' class='previewShowWindow' style="display:none;">
    <img id='pi' src='/Flowers/static/images/l.png' alt="扫描二维码" />
</div>

	<!--客服开始-->
<div id="zhichiBtnBox">
	<a id="zhichiBtn" href="javascript:;" target="_blank">
		<img  src="/Flowers/static/images/14703636967439422.svg">
	</a>
	<div class="mes_content">
		<div class="mes_icon">
			<div class="tel_sj"><img src="/Flowers/static/images/14769441969842358.png" alt="">
			</div>
			<div class="tel_icon">
				<p class="tel_txt">联系电话</p>
				<p class="tel_phone">188-2626-2183</p>
			</div>
			<div class="tel_line"></div>
			<div class="zxkf_txt">
				<a href="http://www.sobot.com/chat/pc/index.html?sysNum=1fe87079144a4587872a516c25aabd86">在线客服</a>
			</div>
		</div>
	</div>
</div>
<!--二维码开始-->
<div id="ewmBox">
	<a id="ewm" href="javascript:;" target="_blank">
		<img  src="/Flowers/static/images/erweima.svg">
	</a>
	<div class="ewm_content"><img src="/Flowers/static/images/weixin.jpg" /></div>
</div>

<!--二维码的进出-->
<script type="text/javascript">

//全选
$(document).ready(function(){
	$("table th input[type='checkbox']").change(function(){
		var bool=$(this).prop("checked");
		$("table td input[type='checkbox']").prop("checked",bool);
		$("table td input[type='checkbox']").change(function(){
			for(var i=0;i<$("table td input[type='checkbox']").length;i++){
				if($("table td input[type='checkbox']")[i].checked==true){
					$("table th input[type='checkbox']").prop("checked",false);
				}
			}
		})
});
});

//提交订单
	function check7(){
	var carlist=null;
	$(".check").each(function(){
		var bool=$(this).prop("checked");
		
		if(bool){
			if(carlist==null){
				carlist=$(this).attr("carID8")
			}else{
				carlist=carlist+","+($(this).attr("carID8"))
			}
		}
		
	})
	//alert(carlist)
	$.ajax({
	        type:"post",				//后面用","很容易出错
	        url:"/Flowers/fordaddservlet",				//删除的控制器url
	        datatype:"text",
	        data:{carids:carlist},
	        success:function(result){
	        	//alert(result)
	        	// var result = eval('('+result+')');
	        	if(result.code=='200'){
	        		window.location.href="/Flowers/getproductmes?ordersid="+result.msg+""
	        	}
	        	
	        }
	        
	        })
	}
	
	
//合计总价
	$(".check").prop("checked",false)
	var  total=0;
	
	$(".check").change(function(){
		
		//alert($(this).serialize())
		var bool=$(this).prop("checked");
		if(bool==true){
			total=parseFloat(total)+parseFloat($(this).attr("price"))*parseFloat($(this).attr("number7"))
			//alert(total)
		}else{
			total=total-$(this).attr("price")*parseFloat($(this).attr("number7"))
			//alert(total)
		}
		
		
		
		document.getElementById('money').innerHTML=total
	})
	var total2=0
//数字增加
$(document).on("click","a[value='增加']",function(){
	var carID1=($(this).prev().attr("carID1"));
	
	   /* var a=$(this).attr("id")
	    var b=a.substring(0,1);
		
		//alert($(this).next().attr("value"))
		//alert(carID1)
		//var price=($(this).prev().attr("price2"));
		*/
		var num=$(this).prev().attr("value")
		$(this).prev().attr("value",parseInt(num)+1)
		var num2=parseInt(num)+1
		//alert(num)
			$.ajax({
	        type:"get",				//后面用","很容易出错
	        url:"/Flowers/numup",				//删除的控制器url
	        
	        data:{carID1:carID1},		//做传递的参数
	        success:function(result){				//成功后执行的方法
	        	
	        	if(result.code=='200'){
	        		
	        		total2=0
	        		$(".check").each(function(){
	        			var bool=$(this).prop("checked");
	        			if(bool){
	        			total2=parseFloat(total2)+parseFloat($(this).attr("price"))*num2;
	        				
	        			}
	        			//alert(total2)
	        		})
	        		
	        		document.getElementById('money').innerHTML=total2
	        	//$('#cartable').dataTable().fnAddData(packagingdatatabledata(result),true);	//删除节点
	        	//$("#cartable").bootstrapTable('refresh');
	        	//$('#cartable').bootstrapTable('refresh');
	        	 //$("#cartable").html('return');  
	        	 //parent.location.reload();   //局部刷新
	        	 //$(this).prev().prop("value",1)
	        	 //alert($(this).prev().attr("value"))
	        	 //$("#shopping").location.reload();
	        	}else{
	        		alert("删除失败")	
	        	}
	        },
	        error:function(){//失败后执行的方法
	          
	        },
	        
	     })

	})

//数字减少
$(document).on("click","a[value='减少']",function(){
		var carID2=($(this).next().attr("carID1"));
		//alert(carID2)
		var num=$(this).next().attr("value")
		$(this).next().attr("value",parseInt(num)-1)
		
			$.ajax({
	        type:"post",					//后面用","很容易出错
	        url:"/Flowers/numdown",				//删除的控制器url       
	        data:{carID2:carID2},		//做传递的参数
	        success:function(result){				//成功后执行的方法
	        	if(result.code=='200'){
	        		total2=0
	        		$(".check").each(function(){
	        			var bool=$(this).prop("checked");
	        			if(bool){
	        			total2=parseFloat(total2)-parseFloat($(this).attr("price"))*num2;
	        				
	        			}
	        			//alert(total2)
	        		})
	        		
	        		document.getElementById('money').innerHTML=total2
	        	//$('#cartable').dataTable().fnAddData(packagingdatatabledata(result),true);	//删除节点
	        	//$("#cartable").bootstrapTable('refresh');
	        	//$('#cartable').bootstrapTable('refresh');
	        	 //$("#cartable").html('return');  
	        	 //parent.location.reload();  
	        	
	        	}else{
	        		alert("删除失败")	
	        	}
	        },
	        error:function(){//失败后执行的方法
	          
	        },
	        
	     })

	})

	
//删除商品
$(document).on("click","button[value='删除']",function(){
	var carID=($(this).attr("carID"));
	$.ajax({
        type:"post",			//后面用","很容易出错
        url:"/Flowers/removecar",				//删除的控制器url
        async:true,
        data:{carID:carID},		//做传递的参数
        success:function(result){				//成功后执行的方法
        	if(result.code=='200'){
        		
        	//$('#cartable').dataTable().fnAddData(packagingdatatabledata(result),true);	//删除节点
        	//$("#cartable").bootstrapTable('refresh');
        	//$('#cartable').bootstrapTable('refresh');
        	 //$("#cartable").html('return');  
        	 parent.location.reload();   //局部刷新
        	}else{
        		alert("删除失败")	
        	}
        },
        error:function(){//失败后执行的方法
          
        },
        
     })
})

$(document).on("click","#cart_del_all",function(){
	//alert("7777")
	$.ajax({
        type:"post",			//后面用","很容易出错
        url:"/Flowers/cleancar",				//删除的控制器url
        async:true,
        data:{memberID:<%=list.get(0).getMemberID()%>},		//做传递的参数
        success:function(result){				//成功后执行的方法
        	if(result.code=='200'){
        	 parent.location.reload();  
        	}else{
        		alert("清空失败")	
        	}
        },
        error:function(){//失败后执行的方法
          
        },
        
     
})
})


//退出
	$("#exit2").click(function(){
		//alert("sss")
		$.ajax({
	        type:"post",				//后面用","很容易出错
	        url:"/Flowers/exit",
	        success:(function(result){
	        	window.location.href="/Flowers/jsp/member_login.jsp";
	        })
		})
		
	})

</script>
	</body>
</html>
