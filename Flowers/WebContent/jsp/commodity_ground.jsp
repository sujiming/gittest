<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*"  import="com.flowers.model.Product"
    import="com.managersFlowers.util.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=9" />
		<script src="/Flowers/static/js/h5.js" type="text/javascript" charset="utf-8"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0,,user-scalable=no,user-scalable=0" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
		<title>figure</title> 
		<link rel="stylesheet" type="text/css" href="/Flowers/static/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="/Flowers/static/css/details.css"/>
		<script src="/Flowers/static/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
		
		<script type="text/javascript">
		//回到顶部
			function goTop() {
				$('html,body').animate({
					'scrollTop': 0
				}, 600);
			}
		</script>
       
		<meta charset="UTF-8">
		<title></title>
	</head>
	<style type="text/css">
		* {
			margin: 0;
			padding: 0;
		}
		
		header {
			width: 100%;
			height: 200px;
			background-color: pink;
		}
		.ge{
			font-family: "微软雅黑";
			padding-left: 250px;
			padding-right: 250px;
		}
		.ge p{
			font-size: 18px;
		}
		.fe{
			font-family: "微软雅黑";
			padding-left: 250px;
			padding-right: 250px;
		}
		.ke{
			margin-left: 250px;
			width: 850px;
			height: 2px;
			background-color: black;
			
		}
		h1{
			text-align: center;
		}
		.fo{
			float: left;
			text-align: center;
		}
		.a{
			font: "微软雅黑";
			color: grey;
			text-decoration: none;
		}
		.shu{
			float: left;margin-left: 30px; width: 1px;height: 130px;background-color: black;margin-right: 30px;
		}
		.
	</style>

	<body>
		<%@ include file="jspHeader.jsp" %>
<div class="title_fen">
	<span id="leibie">
		<%=request.getParameter("caName") %>
	</span>
</div>
	<div class="rose_select">
		<a href="javascript:;" id="pay" data-flag="1" class="sort1">价格</a>

		<input class="rose_select_input sortprice" name="begin" id="minprice" min="0" placeholder="¥" type="number"/>
		<span class="rose_select_span">—</span>
		<input class="rose_select_input sortprice" name="finish" id="maxprice" min="0" placeholder="¥" type="number"/>
		<button onclick="search()" >搜索</button>
		<!-- <input  type="button" value="搜索" onclick="search()" style="background-color:#414141;color: white;width: 50px;height: 25px;"></input> -->
</div>

<style type="text/css">
	
	.small_mu{
		float: left;
		margin-left: 4%;
		margin-top: 12px;
		width: 20%;
		height: 330px;
		float: left;
		text-align:center;
	}
	.small_mu:hover{
		background-color:#E5E5E5;
	}
	.title_fen{
		
		margin-left: 4%;
		height: 95px;
		width: 92%;
		background-image: url(/Flowers/static/images/titlebeijing.jpg);
		text-align: center;
	}
	.pimg{
		width:90%;
		hight:90%;
	}
	#leibie{
		font-size: 20px;
		color: wheat;
		line-height: 95px;
	}
	.ziti{
		font-size:15px;
	}
</style>



<div id="refresh">

<!-- for循环开始   -->
	<%
	PageModel pd =(PageModel)request.getAttribute("pageModel");
	int totalPage=pd.getTotalPage();
	List list=pd.getList();
	
	%>
	<%
	for(int i=0;i<list.size();i++){
		Product product = (Product)list.get(i);
	%>
	<div class="small_mu">
		
		<a href="/Flowers/proquidservlet?productID=<%=product.getProductID()%>">
			<div><img class="pimg" src="/Flowers/static/productImg/<%=product.getPicture() %>"></div>
			<div class="ziti"><%=product.getProductName() %></div>
			<div class="ziti"><%=product.getOriginalPrice() %></div>
		</a>
	</div>
	<%} %>
</div>		
	<!-- for循环结束   -->
	
	<ul>
		<%
		for(int i=0;i<totalPage;i++){ 
			
		%>
		<li><a href="/Flowers/productshow?page="+<%=i %>+"&caname="+"<%=request.getParameter("caName") %>"></a></li>
		<%} %>
	</ul>
<!-- 尾部 -->
<script type="text/javascript">
	<% 
	if (session.getAttribute("member")!= null){
	 %>	
	 
	 			$(".login").css("display","block");
	 			$(".unlogin").css("display","none");
	 <%}else{%>
		$(".login").css("display","none");
		$(".unlogin").css("display","block");
	 <%}%>
	//当点击跳转链接后，回到页面顶部位置
	$(".go_top").click(function(){
		$('body,html').animate({scrollTop:0},200);
		return false;
	});
	
	
	function search(){
		window.location.href="/Flowers/procductSelectByPrice?min="+$('#minprice').val()+"&max="+$('#maxprice').val()
			/* $.ajax({
			  	url:'/Flowers/procductSelectByPrice',
				type:'POST',
				data:{min:$('#minprice').val(),
					  max:$('#maxprice').val()
				}
			}); */
		 
	}
</script>
		
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
                <a style="position:absolute;left:125px;top:-4px" href="http://weibo.com/u/3206773285"><img src="/Flowers/static/images/sina.png" alt="">
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
    <div class="foot-nav">
        figure项目团队做
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

</script>
	</body>
	
</html>