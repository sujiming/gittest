<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.flowers.model.Member"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

	
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	
	<link rel="stylesheet" type="text/css" href="/Flowers/static/css/public.css"/>
	<link rel="stylesheet" type="text/css" href="/Flowers/static/css/style_userinfo.css"/>
	<link rel="stylesheet" type="text/css" href="/Flowers/static/css/bootstrap.min.css"/>
	<script src="/Flowers/static/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="/Flowers/static/js/district.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="/Flowers/static/js/bootstrap.min.js"></script>
<title>我的信息-基本信息</title>
<script src="/Flowers/static/js/jquery.select.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	function checkInfo(){
		var nickname = $.trim($('#username').val());
		var mobile = $.trim($('#mobile').val());
		var birthday = $.trim($('#birthday').val());
		var email = $.trim($('#email').val());
		if(nickname.length <= 0){
			//$('#info_msg').html('请输入您的姓名！');
			//return false;
		}
		$('#info_msg').html('');
		if(mobile.length <= 0){
			//$('#info_msg').html('请输入您的手机号！');
			//return false;
		}
		if(!isMobile(mobile)) {
			$("#span_mobile").html("您填写的手机号码格式不正确！");
			return false;
		} 
		if(email.length>0){
			if(!App.util.checkMail(email)){
				$("#span_email").html("您填写的邮箱格式不正确！");
				return false;
			}
		}
		if($('#subscribe1').checked){
			if(!App.util.isEmpty(email)){
				$("#span_email").html("接收订阅的邮箱不能为空！");
				return false;
			}
		}
		
		
		$('#info_msg').html('');
		if(birthday.length <= 0){
			//$('#info_msg').html('请输入您的生日！');
			//return false;
		}
		$('#info_msg').html('');
		
		return true;
	}
	
	
	function validatenow(){
		var ele = $("#smscode");
		if(ele.val().length==4){
			$("#actival").show();
			$("#getSms").hide();
		}else{
			$("#actival").hide();
			$("#getSms").show();
		}
	}
	function active(){
		$("#qy_form").submit();
	}
	
	$(function(){
		$("body").select({
			key:"province|city|area",     //下拉列表联动id
			value:"||",                         //下拉列表联动value
			path:"http://orders.roseonly.com.cn/sysDictionary/findJsonListByPid/|http://orders.roseonly.com.cn/sysDictionary/findJsonListByPid/"  //下拉列表联动数据获取
		});	
	});
	

	//实时计算完成度
	function calculate_complete(){
		//原完成度
		var init_complete = $("#init_complete").html();
		//新完成度
		var calculate = 0;
		var complet_mylove = $('#mylove').val();
		if($.trim(complet_mylove)!=''){
			calculate+=10;
		}
		var complet_username = $('#username').val();
		if($.trim(complet_username)!=''){
			calculate+=10;
		}
		var complet_lovemobile = $('#lovemobile').val();
		if($.trim(complet_lovemobile)!=''){
			calculate+=10;
		}
		var complet_mobile = $('#mobile').val();
		if($.trim(complet_mobile)!=''){
			calculate+=10;
		}
		var complet_birthday = $('#birthday').val();
		if($.trim(complet_birthday)!=''){
			calculate+=10;
		}
		var complet_marriage = $("#marriage").val();
		if(complet_marriage!=''){
			calculate+=10;
		}
		var complet_area = $("#area").val();
		if(complet_area!=''){
			calculate+=10;
		}
		//性别radio
		var complet_babysex=$('input[name="babysex"]:checked ').val();
		if(complet_babysex=='m'||complet_babysex=='n'){
			calculate+=10;
		}
		
		if(calculate==80){
			var complet_address = $("#address").val();
			var complet_industry = $("#industry").val();
			var complet_education = $("#education").val();
			var complet_income = $("#income").val();
			var complet_email = $("#email").val();
			if($.trim(complet_address)!=''&&$.trim(complet_email)!=''&&complet_industry!=''&&complet_education!=''&&complet_income!=''){
				calculate = 100;
			}
		}
		//显示新完成度
		if(calculate!=init_complete){
			$("#init_complete").html(calculate);
		}
	}
</script>
</head>

<!--头部start--> 
<a name="top" id="top"></a>
<!--头部start-->
<span id="header_user_id" style="display:none"></span>	
<div class="header">

<!-- 头部 -->

	<div class="header">

			<div class="head">
		        <a href="/Flowers/jsp/front_primary.jsp" class="roseonly-logo" id="tag_roseonly"></a>
		        <a href="http://www.roseonly.com.cn/loveroseonly/list/loveall.html" class="larose-logo" id="tag_zhuanai"></a>
			<div class="logo_line"></div>
	    	<div class="right">
	    		<a href="/Flowers/jsp/member_login.jsp" class="unlogin" rel="nofollow"><span class="h_font">登录</span><span class="h_line">|</span></a>
	    		<a href="/Flowers/jsp/member_register.jsp" class="unlogin" rel="nofollow"><span class="h_font">注册</span><span class="h_line">|</span></a>
	    		<a style="display:none" href="#"  class="login" target="_blank" rel="nofollow"><span class="h_font">个人中心</span><span class="h_line">|</span></a>
	    		<a style="display:none" href="javascript:void(0)" id="exit2"  class="login" ><span class="h_font">退出</span><span class="h_line">|</span></a>|</span></a>
	    		<a href="/Flowers/carservlet" class="right-shop" rel="nofollow"></a>
	    	</div>
	 	</div>

<div class="logo-container">
    <a href="http://#" class="logo_nbtn">
		  <img title="figure官网" alt="figure官网" src="/Flowers/static/images/logo.png" />
    </a>
	
</div>
 
<input type="hidden" id="bp" value="/Flowers/static/jsp/from_primary.jsp"/>

<!--头部end-->	

	<!--内容部分开始--> 
	<div class="container">
		<div>
			<div class="nav-container">
				<div class="main_view_line2"></div>
			</div>
		</div>
		<div class="order">
			<!--导航 开始-->

<ul class="order_nav">
	<li><a  onclick="my_order()">我的订单</a></li>
	
	<li class="order_add"><a  style="color:#fff;" onclick="my_information()">我的信息</a></li>
	
	<li><a onclick="take_addre">收货地址</a></li>
	
</ul>
<div style="clear:both;"></div>
<!--导航 结束-->
			<!--内容 开始-->
<div class="manage-right" style="display: block;">


		
		<table id="con_wdxx_2" style="height: 220px; font-size: 14px; width:100%; border:solid 3px #f1f2f2; margin-bottom:80px;">
				<%
				Member member=(Member)session.getAttribute("member");
				String name=null;
				String phone=null;
				String qq=null;
				String email=null;
				
	    		if(member!=null){
	    				
	    				name=member.getMemberName();
	    				if(name==null){
	    					name="";
	    				}
	    				phone=member.getTelephone();
	    				if(phone==null){
	    					phone="";
	    				}
	    				qq=member.getQq();
	    				if(qq==null){
	    					qq="";
	    				}
	    				email=member.getEmail();
	    				if(email==null){
	    					email="";
	    				}
	    				
	    			}else{
	    				name="";
	    				phone="";
	    				qq="";
	    				email="";
	    			}
				%>	
			<tr>
				<td class="txtr1"><span></span></td>
				<td width="120"></td>
				<td class="txtr"><span></span>姓名</td>
				<td><input id="username" name="nickname" onkeyup="calculate_complete()" value="<%=name %>" class="wdxx_txt_date" type="text"  maxlength="15"/></td>
			</tr>
					
			<tr>
				<td class="txtr1"><span></span></td>
				<td width="120"></td>
				<td class="txtr"><span></span>手机</td>
				<td>
				<!--cursor: pointer;指针变手样式-->
				<input id="mobile" name="phone" value="<%=phone %>" class="Wdates" readonly="readonly" type="text" maxlength="11"/></td>
				<td><span style="color: red" id="span_mobile"></span></td>
			</tr>
							
			<tr>
				<td class="txtr1"><span></span></td>
				<td width="120"></td>
				<td class="txtr"><span></span>性别</td>
				<td>
					<input id="babysex1" name="babysex" onclick="calculate_complete()" type="radio" value="男" checked="checked"/><label for="nan">男</label>
					<input id="babysex2" name="babysex" onclick="calculate_complete()" type="radio" value="女"/><label for="nv">女</label>
				</td>
				<td></td>
			</tr>
			<tr>
				<td class="txtr1"><span></span></td>
				<td width="120"></td>
				<td class="txtr"><span></span>地址</td>
				<td>
				    <select id="selProvince" name="province" style="width:80px; height:30px; line-height:30px; 
						border:solid 1px #ededed;">
						<option >请选择</option>
					</select>
					<select  id="selCity" name="city" style="width:80px; height:30px; line-height:30px; 
						border:solid 1px #ededed;">
						<option >请选择</option>
					</select>
					<select id="selArea" name="area" style="width:80px; height:30px; line-height:30px; 
						border:solid 1px #ededed;" onchange="calculate_complete()">
						<option >请选择</option>
					</select>
				</td>
				<td> 
					<input id="address" name="address" onkeyup="calculate_complete()" style="width:230px;" placeholder="请输入详细地址" class="wdxx_txt_date" type="text" value="" maxlength="200"/>
				</td>
				<script type="text/javascript">
					$(document).ready(function() {  
						var myDistrict = new district();                            //声明district对象  
						myDistrict.init("#selProvince", "#selCity", "#selArea");    //初始化下拉框   
						myDistrict.bind("安徽省", "安庆市", "太湖县");         
					}); 
				</script>
			</tr>
				
			<tr>
				<td class="txtr1"><span></span></td>
				<td width="120"></td>
				<td class="txtr"><span></span>Q&nbsp;Q</td>
				<td><input id="QQ" name="qq" onkeyup="calculate_complete()" class="wdxx_txt_date" type="text" value="<%=qq %>" maxlength="13"/></td>
			</tr>
							
			<tr>
				<td class="txtr1"><span></span></td>
				<td width="120"></td>
				<td class="txtr"><span></span>邮箱</td>
				<td><input id="email" name="email" onkeyup="calculate_complete()" class="wdxx_txt_date" type="text" value="<%=email %>" maxlength="50"/></td>
				<td><span style="color: red" id="span_email"></span></td>
			</tr>
							
			<tr>
				<td class="txtr1"><span></span></td>
				<td width="120"></td>
				<td class="txtr"><span></span></td>
				<td>&nbsp;				
				<!-- //提交按钮 -->
					<input type="image" src="/Flowers/static/images/butto.gif" id="button_img" onclick="submi()" />
				</td>
				<td></td>
			</tr>
			
		</table>
	
	<div class="photo_up">
		
		<div class="person_photo">
			<form action="" id="formdata">
				<img id="ima" src="<%=member.getHeaderphoto()%>" style=" width:135px;height:170px;" />
				<input id="input-4" name="input4[]" type="file" multiple class="file-loading">
			</form>
		</div>
		
		<div class="put_refer" style="margin-top:10px">
			
			
		</div>
	</div>
</div>
	<!--内容  结束-->
	<!--footer start-->
<script type="text/javascript" src="/Flowers/static/js/fdj.js"></script>
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
            <li><a href="" target="_blank">购物流程</a></li>
            <li><a href="" target="_blank">支付方式</a></li>
            <li><a href="" target="_blank">常见问题</a></li>
            <li><a href="" target="_blank">指圈测量</a></li>
        </ul>
        <ul>
            <p>售后服务</p>
            <li><a href="" target="_blank">退款说明</a></li>
            <li><a href="/Flowers/jsp/yanghu.jsp" target="_blank">保养物语</a></li>
        </ul>
        <ul>
            <p>物流配送</p>
            <li><a href="" target="_blank">配送方式</a></li>
            <li><a href="" target="_blank">配送服务</a></li>
        </ul>
        <ul style="background:none">
            <p>关于我们</p>
            <li><a href="" target="_blank">品牌介绍</a></li>
            <li><a href="" target="_blank">销售渠道</a></li>
            <li><a href="" target="_blank">联系我们</a></li>
            <li><a href="" target="_blank">加入我们</a></li>
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

	function submi(){
		var memberid=<%=member.getMemberID()%>
		var name=$("#username").val();
		var email=$("#email").val();
		var address=$("#selProvince").val()+$("#selCity").val()+$("#selArea").val()+$("#address").val();
		var qq=$("#QQ").val();
		var sex=$('input:radio:checked').val();
		//alert(memberid)
		$.ajax({
	        type:"post",				//后面用","很容易出错
	        url:"/Flowers/memberdetail",
	        data:{memberID:memberid,realname:name,email:email,address:address,qq:qq,sex:sex},
	        success:(function(result){
	        	if(result.code=='200'){
	        		alert("修改成功")
	        	}else{
	        		alert("修改失败")
	        	}
	        })
		})
		
	}


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
//上传头像
$(function() { 
	$('#input-4').change(function() { 
	var formdata = new FormData(); 
	var v_this = $(this); 
	var fileObj = v_this.get(0).files; 
	url = "/Flowers/upload.jhtml"; 
	//var fileObj=document.getElementById("fileToUpload").files; 
	formdata.append("info", fileObj[0]); 
	jQuery.ajax({ 
	url : url, 
	type : 'post', 
	data : formdata, 
	cache : false, 
	contentType : false, 
	processData : false, 
	dataType : "json", 
	success : function(json) { 
	
	$("#ima").attr("src", json.url); 
	//$("#img").attr("src",data.url);
	//alert("7777")
	 
	} 
	}); 
	
	return false; 
	}); 
	}); //


</script>

<!--footer end-->

<script type="text/javascript">
var _mvq = _mvq || [];
_mvq.push(['$setAccount', 'm-23932-1']);
_mvq.push(['$logConversion']);
(function() {
	var mvl = document.createElement('script');
	mvl.type = 'text/javascript'; mvl.async = true;
	mvl.src = ('https:' == document.location.protocol ? 'https://static-ssl.mediav.com/mvl.js' : 'http://static.mediav.com/mvl.js');
	var s = document.getElementsByTagName('script')[0];
	s.parentNode.insertBefore(mvl, s); 
})();

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
<script type="text/javascript" src="/Flowers/static/js/base.js"></script>
</body>
</html>
