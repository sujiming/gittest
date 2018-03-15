<%@ page language="java" 
    pageEncoding="UTF-8" import="java.util.*" import="com.flowers.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品详情</title>
<link rel="stylesheet" type="text/css" href="/Flowers/static/css/public.css"/>
<link rel="stylesheet" type="text/css" href="/Flowers/static/jquery-easyui-1/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="/Flowers/static/jquery-easyui-1/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/Flowers/static/css/details.css">	
<script type="text/javascript" src="/Flowers/static/js/dot.min.js"></script>
<script type="text/javascript" src="/Flowers/static/js/menu_0.js"></script>
<script type="text/javascript" src="/Flowers/static/js/base.js"></script>
<script type="text/javascript" src="/Flowers/static/jquery-easyui-1/jquery.min.js"></script>
<script type="text/javascript" src="/Flowers/static/jquery-easyui-1/jquery.easyui.min.js"></script>
<script src="/Flowers/static/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css">
</style>
</head>
<body>
<body>
	<!-- 头部 -->
<%@ include file="jspHeader.jsp" %>	
<%
List list=(List)request.getAttribute("data");
		String picture=null;
for(int i=0;i<list.size();i++){
	Product product=(Product)list.get(i);
	picture=product.getPicture();
%>
 <div class="container">
 	<div class="left-tu" style="float:left; width: 500px;height: 400px;margin-left: 200px;margin-top: 50px;"><img  src="/Flowers/static/productImg/<%=product.getPicture() %>"/></div>
 	<div class="right-detail" style="float:left;">
 		<div style="margin-top:100px;font-size: 20px;color: #414141;" id="name"><%=product.getProductName() %></div>
 		<div style="margin-top:15px;background:gray;width: 350px;height: 1px;"></div>
 		<span class="right_font_tit" style="margin-top:15px;">价格：</span><div id="price" style="margin-top:15px;font-size: 20px"><%=product.getOriginalPrice() %></div>
 		<div style="margin-top:15px;background:gray;width: 350px;height: 1px;"></div>
 		<div style="margin-top:15px;font-size: 20px">
	 		<div class="right_select">
				<span class="right_font_tit">数量：</span>
				<input id="num" type="text" value="1" class="right_number" maxlength="2" />
				<div class="right_u_d">
	 				<a href="javascript:void(0);" class="right_up"></a>
	 				<a href="javascript:void(0);" class="right_down"></a>
				</div>
				
				<div class="clear"></div>
			</div>
	 	</div>
 		<div style="margin-top:15px;background:gray;width: 350px;height: 1px;"></div>	
 		<div style="margin-top: 15px">
    		<input id="buy" type="button" class="button_bar1 unsold" name='for99clickToBuy' value="立即购买"></input>
			<input id="join" type="button" class="button_bar2 unsold" proid="<%=product.getProductID() %>"  name='for99clickToCar' mid="<%=str %>" value="加入购物车"></input>
   		</div>
   		<div class="right_font_tit">服务承诺：官方正品   免邮配送   同城速递</div>
   	</div>
</div>
	 <!--尾部-->
<div class="footer">
	<div style="margin:15px auto; background:#DADADA;width: 1200px;height: 1px;"></div>	
    <div class="pro_left" style="float:left; margin-left: 200px;margin-top: 30px;font-size: 20px">产品参数：</div>
    <div class="pro_middle" style="float:left;margin-left:30px; color: #414141">
    	<div style="margin-top:10px;font-size: 12px;color: #414141;">是否推荐：<%=product.getRecmmend() %></div>
    	<div style="font-size: 12px;color: #414141;">适合节日：<%=product.getFestival() %></div>
    </div>
    <div class="pro_right" style="float:left;margin-left:100px; color: #414141">
    	<div style="margin-top:10px;font-size: 12px;color: #414141;">鲜花物语：<%=product.getTalkTo() %></div>
    	<div style="font-size: 12px;color: #414141;">鲜花类别：<%=product.getCaName() %></div>
    </div>
    <div class="clear"></div>
    <div style="font-size: 12px;color: #414141;margin: 10px auto;width: 690px">鲜花描述：<%=product.getMiaoshu() %></div>
    <%} %>
    <div style="margin:30px auto; background:#DADADA;width: 1200px;height: 1px;"></div>	
    		
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

$("#buy").click(function(){
	//alert()
	window.location.href="/Flowers/buyf?productName="+$("#name").text()+"&productNum="+$("#num").val()+"&ProductPrice="+$("#price").text()+"&productPicture="+"<%=picture%>"
})

$("#zhichiBtnBox").hover(function () {
	$(".mes_content").css({
		display: 'block'
	})
}, function () {
	$(".mes_content").css({
		display: 'none'
	})
});
$("#ewmBox").hover(function () {
	$(".ewm_content").css({
		display: 'block'
	})
}, function () {
	$(".ewm_content").css({
		display: 'none'
	})
});
$("#join").click(function(){
	if($("#join").attr("mid")==""){
		window.location.href="/Flowers/jsp/member_login.jsp";
	}else{
		 $.ajax({
		        type:"post",				//后面用","很容易出错
		        url:"/Flowers/caraddqservlet",				//删除的控制器url
		        
		        data:{productid:$("#join").attr("proid"),memberid:$("#join").attr("mid"),num:$(".right_number").val()},		//做传递的参数
		        success:function(result){				//成功后执行的方法
		        	alert(result.msg)
		        },
		     })
	}
	//alert($("#join").attr("proid"))
	//alert($(".right_number").val())

})
</script>
	</body>
</html>