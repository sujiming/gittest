<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.flowers.model.Member"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!--
	作者：汪葛
	时间：2017-08-26
	描述：头尾
-->
<!DOCTYPE html> 	
<html>
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=9" />
		<title>figure</title> 
		<link rel="stylesheet" type="text/css" href="/Flowers/static/css/public.css"/>
		<script src="/Flowers/static/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
		<meta charset="UTF-8">
		<title></title>
	</head>

	<body>
		<div class="header">
			<div class="head">
		        <a href="/Flowers/jsp/front_primary.jsp" class="roseonly-logo" id="tag_roseonly"></a>
		        <a href="/Flowers/jsp/front_primary.jsp" class="larose-logo" id="tag_zhuanai"></a>
			<div class="logo_line"></div>
	    	<div class="right">
	    		<a href="/Flowers/jsp/member_login.jsp" class="unlogin" ><span class="h_font">登录</span><span class="h_line">|</span></a>
	    		<a href="/Flowers/jsp/member_register.jsp" class="unlogin" ><span class="h_font">注册</span><span class="h_line">|</span></a>
	    		<a style="display:none" href="/Flowers/jsp/person_information.jsp"  class="login"  ><span class="h_font">个人中心</span><span class="h_line">|</span></a>
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
	    		<span id="cartNum" class="cartNum">(0)</span>
	    	</div>
	 	</div>

	<div class="logo-container">
	    <a href="/Flowers/jsp/front_primary.jsp" class="logo_nbtn">
			  <img title="figure官网" alt="figure官网" src="/Flowers/static/images/logo.png" />
	    </a>
	</div>
	<div class="logo_f_cur">
	    <a href=""></a>
	</div> <!--面包屑，筛选-->
	<!--导航 开始-->
	<div class="nav-container" id="topmenus"></div>
	<script type="text/javascript" src="/Flowers/static/js/dot.min.js"></script>
	<script type="text/javascript" src="/Flowers/static/js/menu_0.js"></script>
	<script type="text/javascript" src="/Flowers/static/js/base.js"></script>

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
</body>
	
</html>