<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*" import="com.flowers.model.Product"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="/Flowers/static/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="/Flowers/static/css/details.css"/>
</head>
<body>
<%@ include file="jspHeader.jsp" %>


<div class="rose_select">
		<a href="javascript:;" id="pay" data-flag="1" class="sort1">价格</a>

		<input class="rose_select_input sortprice" value="" id="minprice" min="0" placeholder="¥" type="number"/>
		<span class="rose_select_span">—</span>
		<input class="rose_select_input sortprice" value="" id="maxprice" min="0" placeholder="¥" type="number"/>
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

	<!-- for循环开始   -->
	<div id="refresh">
	<%
	List list = (List)request.getAttribute("products2");
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
	
	<!-- for循环结束   -->
</body>
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
<script type="text/javascript">
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
</html>