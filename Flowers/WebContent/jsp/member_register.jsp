<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!--
	作者：汪葛
	时间：2017-08-26
	描述：小可爱啊嘤嘤嘤
-->
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=9" />
    <meta name="format-detection" content="telephone=no" />
    <script src="/Flowers/static/js/h5.js" type="text/javascript" charset="utf-8"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title >figure</title>
    <meta content="all" name="robots" />
    <link rel="stylesheet" type="text/css" href="/Flowers/static/css/public.css"/>
    <link rel="stylesheet" type="text/css" href="/Flowers/static/css/re.css"/>
    <script src="/Flowers/static/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="/Flowers/static/js/targetDensitydpi.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>
    <div class="header">
        <div class="head">
	    	<div class="logo_line2"></div>
   	    	<div id="a" style="height: 35px;width: 100%;">
				<a href="/Flowers/jsp/front_primary.jsp" class="roseonly-logo" id="tag_roseonly"></a>
           		<a href="http://www.roseonly.com.cn/loveroseonly/list/loveall.html" class="larose-logo" id="tag_zhuanai"></a>
			</div>
           <div class="logo_line"></div>
           
	    </div>
    </div>   
    
    <div class="logo-container">
        <a href="/Flower/jsp/front_primary.jsp" class="logo_nbtn">
        <img title="figure 官网" alt="figure 官网" src="/Flowers/static/images/logo.png" />
        </a>
      
    </div>
    <div class="logo_f_cur">
    	<!--logo浮动  点击跳转主页面-->
	    <a href="/Flower/jsp/front_primary.jsp"></a>
	</div>
    <!--内容部分开始-->
    <div class="nav-container" id="topmenus"></div>
    <style>
       body {
            background: #fff;
        }
        
        .container {
            height: 650px;
            width: 100%;
            max-width: 1920px;
        }
        /*主中央大图片*/
        .login_bj {
            background: url(http://www.roseonly.com.cn/upload/syspic_new/15020849380129744.jpg) no-repeat center;
            height: 673px;
            width: 100%;
            position: relative;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
            background-size: cover;
           
        }
        
        .zc_cur_bj {
            width: 1220px;
            height: 673px;
            position: absolute;
            top: 0;
            left: 50%;
            margin-left: -610px;
        }
         .qixi_tz {
            display: block;
            position: absolute;
            left: 0;
            width: 815px;
            height: 613px;
        }
        select {
			  border: solid 1px #b3b3b3;
			  appearance:none;
			  -moz-appearance:none;
			  -webkit-appearance:none;
			  border-radius: 0;
			-webkit-border-radius: 0;
			-moz-border-radius: 0;
			-khtml-border-radius: 0;
			background: url(/Flowers/static/images/14836910765083806.png) no-repeat scroll 265px center #fff;
			}
		select::-ms-expand { display: none; }
		option{
		 		border: solid 1px #b3b3b3;
			  appearance:none;
			  -moz-appearance:none;
			  -webkit-appearance:none;
			  border-radius: 0;
				-webkit-border-radius: 0;
				-moz-border-radius: 0;
				-khtml-border-radius: 0;
				background:#fff;
		}     
		@media only screen and (min-device-width: 768px) and (max-device-width: 1240px) and (orientation: landscape) {
        .login_bj{
            width: 1240px;;
        }

    }
     /*ipad竖屏************/
    @media all and (orientation : portrait){
        .series,.ul{  width:980px  }
        .head,.container,.menus2,.footer_box{width:980px}
        .logo-container,.footer,.nav-container{min-width: 980px}
        #nav li{margin:0 0px;width: 130px}
        #nav .topmenu_1{font-size: 12px;}
        .li_img img{width: 192px;height:192px;  }
        .li_img{width: 192px;height: 180px;margin: 24px auto;}
        .menus2 .number1{width:80px}
        .menus_pic{width:480px;height:198px;right:220px}
        .menus{width:990px}
        .menus_pic img{width:100%;height:100%}
        .new_con1 div img{width:100%}
        .previewShowWindow{width:300px;height:300px;border:none}
        .previewShowWindow img{width:300px;height:300px}
        .footer_box ul {padding: 0 30px}
        .footer_box ul p{font-size: 14px;}
        .footer_box ul li a{font-size: 12px;}
        .new_r a img{width: 100px;height: 100px}
        .rose_select a{margin:0 10px}
        .rose_select_input{width:160px}
        .menus2 span{font-size: 12px;}
        #nav{width:980px}
        .login_bj{
            width: 980px;
        }
        .register{
            right:140px
        }
    } 
  
    </style>
    <div class="container">

        <!--导航 开始-->
			<script src="/Flowers/static/js/dot.min.js" type="text/javascript" charset="utf-8"></script>
			<script src="/Flowers/static/js/menu_0.js" type="text/javascript" charset="utf-8"></script>
			<script src="/Flowers/static/js/base.js" type="text/javascript" charset="utf-8"></script>
			<script src="/Flowers/static/js/Validform_v5.3.2_min.js" type="text/javascript" charset="utf-8"></script>
			<!-- 左半边图片 -->
      	<div class="login_bj">
       		<div class="zc_cur_bj">
       			<!--跳转主页面-->
       			<a href="/Flower/jsp/front_primary.jsp" class="qixi_tz"></a>  
        	 	<div class="register_from">
        	 		<form id="ff" method="post" action= "/Flowers/regservlet" style="background-color: #FAFAFA" >
			        	<div class="form-group">
			        		<p style="font-size: 15px;float: left;margin-left: 35px;">注册</p>
			        		<p style="font-size: 15px; float: right;margin-right: 35px;">已有账户?&nbsp;|&nbsp;<a href="/Flowers/jsp/member_login.jsp" style="text-decoration: none; color: red;" >请登录</a></p>
	  					</div>
			        	
	  					<div class="form-group">
						    <input type="username" class="form-control" name="name" id="exampleInputname" placeholder="请输入用户名"></br >
						    <span id="spanname" class="spanzi"></span>
	  						<!--<select id="suffix" name="sex" class="yanzheng" style="top: 75px;margin-left: 235px;font-size:15px ;"onchange="">
		                        <option value="1">我是帅哥</option>
		                        <option value="2">我是美女</option>
		                        <option value="3" selected >--请选择-<p style="font-size: 50px;color: red;">∨</p>-</option>
                			</select>-->
                			
	  					</div>
						<div class="form-group">
						    <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="请输入密码(6-16位)"></br >
						    <span id="spanpassword1" class="spanzi"></span>
						</div>
						<div class="form-group">
						    <input type="password" class="form-control" id="exampleInputPassword2" placeholder="确认密码"></br >
						    <span id="spanpassword" class="spanzi"></span>
						</div>
						<div class="form-group">
							
						    <input type="telephone" name="telephone"class="form-control" value="" id="exampleInputTelphone" placeholder="请输入手机号"></br >
						    <input class="yanzheng" style="top: 255px;margin-left: 235px;" type="button" onclick="hua()" value="发送验证码">
						    <span id="spanmobile" class="spanzi"></span>
						</div>
						<div class="form-group">
						    <input type="text" class="form-control" id="yanzheng" placeholder="手机验证码"></br >
						   <!-- <span id="spanname" style="float:left;margin-left:45px;color:red;font-size:14px;top:-10px;"></span> --> 
						</div>
						<%
							String str=(String)request.getAttribute("mes");
							if(str==null){
								str="";
							}
						%>
						<span class="spanzi"><%=str %></span>
						 <input  class="btn-default" type="submit" onclick="regist()" value="创建账户">
	  					
	  					<div class="foot-nav">
		                    figure项目团队做
		                </div>
					</form>
        	 	</div>
        	 	
        	</div>
        </div>
        <!--<div class="main_view_line2"></div>-->
    </div>
		<!--内容结束-->
		<!--footer start-->
    

<!-- /index/include/footer1.jsp -->


<div class="footer">
	<div class="four_nav">
		<a class="four_nav_a bg1">
			<div class="four_nav_div">全场包邮<span class="f14 f_wg_box">特殊礼品除外</span></div>
		</a>	
		<a class="four_nav_a bg2">
			<div class="four_nav_div">同城速递<span class="f14 f_wg_box">支持当日送达</span></div>
		</a>
		<a class="four_nav_a bg3">
			<div class="four_nav_div">爱的留言<span class="f14 f_wg_box">支持语音与文字，可随时查阅</span></div>
		</a>
		<a class="four_nav_a bg4">
			<div class="four_nav_div">保养物语<span class="f14 f_wg_box">悉心保养，恒久保存爱意</span></div>
		</a>		
		<div class="clear"></div>
	</div>
    <div class="footer_box">
        <div class="new_l">
            <a href="" ><img  src="/Flowers/static/images/logo.png" style="height: 80px; width: 150px;"/>
            </a>
            <div style="position:relative;margin-top:30px">
                <a>关注我们</a>
                <a style="position:absolute;left:80px;top:-2px" onMouseOver="showPic(this)" onMouseOut="closeShow(this)"><img src="/Flowers/static/images/weichat.jpg" alt="">
                </a>
                <a style="position:absolute;left:125px;top:-4px" href=""http://weibo.com/u/3206773285><img src="/Flowers/static/images/sina.png" alt="">
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
				<p>美女客服私信</p>
        </div>  
        <div class="new_r">
			<a ><img src="/Flowers/static/images/l.png" style="width:120px" alt=""></a>
				<p>figure美女客服</p>
        </div>   
    </div>
	<div class="foot-nav">
		蓝桥软件学院合1706&nbsp;<a style="color: #B31CDB; font-size: large;">figure</a>项目组<a style="color:#B31CDB ;font-size: large;">涛哥指导</a>联合开发！！！（小装逼一下）
	</div>
</div>
<div id='preview' class='previewShowWindow' style="display:none;">
    <img id='pi' src='/Flowers/static/images/l.png' alt="扫描二维码" />
</div>
	<!--客服开始-->
<div id="zhichiBtnBox">
	<a id="zhichiBtn" href="javascript:;" target="_blank">
		<img  src="http://www.roseonly.com.cn/upload/syspic_new/14703636967439422.svg">
	</a>
	<div class="mes_content">
		<div class="mes_icon">
			<div class="tel_sj"><img src="/Flowers/static/images/14769441969842358.png" alt="">
			</div>
			<div class="tel_icon">
				<p class="tel_txt">联系电话</p>
				<p class="tel_phone">182-2626-2183</p>
			</div>
			<div class="tel_line"></div>
			<div class="zxkf_txt">
				<!--客服链接-->
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
<script type="text/javascript">

$("#ewmBox").hover(function () {
	$(".ewm_content").css({
		display: 'block'
	})
}, function () {
	$(".ewm_content").css({
		display: 'none'
	})
});

//密码验证
$("#exampleInputPassword1").blur(function(){
	
	var regex=/^[a-zA-Z0-9~!@#$%^&*()<>,.?\[\]{}]{6,16}$/;
	var password=$("#exampleInputPassword1").val();
	//alert(password)
	var b=regex.test(password);
	if(!b){
		document.getElementById("spanpassword1").innerHTML="密码格式不正确";
	}else{
		document.getElementById("spanpassword1").innerHTML="验证通过";
		bool=true;
	}
});
$("#exampleInputPassword2").blur(function(){
	var bool=false;
	if($("#exampleInputPassword2").val()!=$("#exampleInputPassword1").val()){
		document.getElementById("spanpassword").innerHTML="两次密码不一致";
	}else{
		document.getElementById("spanpassword").innerHTML="验证通过";
		bool=true;
	}
	return bool;
});
//用户名验证
$("#exampleInputname").blur(function(){
	var regex= /^.*[a-zA-Z]+.*$/
	var name=$("#exampleInputname").val();
	var b=regex.test(name);		
		if(b){
			$.ajax({
			url:"/Flowers/regnameservlet",
			data:{name:$("#exampleInputname").val()},
			dataType:"json",
			success: function(result){
			//var result = eval('('+result+')');
		
			
			if(result.code=='250'){
				
				document.getElementById("spanname").innerHTML="用户名已被注册";
			}if(result.code=='200'){
				document.getElementById("spanname").innerHTML="验证通过";
			}
			}
			});
		}else{
			document.getElementById("spanname").innerHTML="用户名不合法"					
		}
});
//手机号验证
	$("#exampleInputTelphone").blur(function(){
	var regex= /^1[3,4,5,7,8]\d{9}$/
	var name=$("#exampleInputTelphone").val();
	var b=regex.test(name);	
		if(b){
			$.ajax({
			url:"/Flowers/redtelservlet",
			data:{telephone:$("#exampleInputTelphone").val()},
			dataType:"json",
			success: function(result){
			//var result = eval('('+result+')');
			//alert(result.code)
			if(result.code=='350'){
				//alert(result.msg)
				document.getElementById("spanmobile").innerHTML="手机号已被注册"
			}if(result.code=='300'){
				document.getElementById("spanmobile").innerHTML="验证通过"
			}
			}
			});
		}else{
			document.getElementById("spanmobile").innerHTML="手机号不合法"					
		}
		
});
//发送验证码
	function hua(){
		
		var mobile=($("#exampleInputTelphone").val())
		//alert(mobile)
		$.ajax({
			url:"/Flowers/catchma",
			type:"post",
			data:{telephone:mobile},
			dataType:"json",
			success: function(result){
			var result = eval('('+result+')');
			if(result.code=='250'){
				alert("未知错误")
			}
			}
			});
	}
	
	//点击注册 并验证验证码
	function regist(){
		var mobile=($("#exampleInputTelphone").val())
		//alert(mobile)
		$.ajax({
			url:"/Flowers/checkmes",
			data:{telephone:mobile,code:$("#yanzheng").val()},
			dataType:"json",
			success: function(result){
			
			if(result.code=='200'){				//验证成功
			
			}
			if(result.code=='230'){
				alert("验证码错误")
			}else{
				alert("未知错误")
			}
			}
			});
       
    }	

</script>

	<noscript><img src="//stats.ipinyou.com/adv.gif?a=t5s..QA4PSdkyvq6N0CHHXwj6f0&e=" style="display: none;" /></noscript>

	</body>
</html>