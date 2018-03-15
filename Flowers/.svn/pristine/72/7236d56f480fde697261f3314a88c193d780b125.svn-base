<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.managersFlowers.model.Admins"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css"
	href="/Flowers/static/jquery-easyui-1/themes/black/easyui.css">
<link rel="stylesheet" type="text/css"
	href="/Flowers/static/jquery-easyui-1/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="/Flowers/static/jquery-easyui-1/themes/black/default.css">
 <script type="text/javascript"
	src="/Flowers/static/js/jquery-1.4.2.min.js"></script> 
<script type="text/javascript"
	src="/Flowers/static/js/jQuery.easyui.js"></script>
	<script type="text/javascript"
	src="/Flowers/static/js/outlook2.js"></script>
	
<script type="text/javascript">
var _menus = {"menus":[
						{"menuid":"1","icon":"icon-sys","menuname":"控制台",
							"menus":[]

						},{"menuid":"8","icon":"icon-sys","menuname":"用户管理",
							"menus":[{"menuname":"编辑用户信息","icon":"icon-nav","url":"/Flowers/member.html"}
								]
						},{"menuid":"56","icon":"icon-sys","menuname":"商品管理",
							"menus":[{"menuname":"用户订购商品分类","icon":"icon-nav","url":"/Flowers/memberEcharts.html"},
									{"menuname":"编辑商品信息","icon":"icon-nav","url":"/Flowers/product.html"}
								]
						},{"menuid":"28","icon":"icon-sys","menuname":"订单管理",
							"menus":[{"menuname":"编辑订单信息","icon":"icon-nav","url":"/Flowers/orders.html"}
								]
						}
				]};
	
</script>

</head>
<style type="text/css">
.easyui-pagination {
	position: absolute;
	left: 0;
	width: 700px;
	height: 300px;
}

.btn {
	width: 80px;
	height: 30px;
}
</style>
<body class="easyui-layout" style="font-family: '楷体';">
	<div region="north" split="true" border="false" style="overflow: hidden; height:60px;
         background-color: #F6F6F6;
        line-height: 20px;color: #fff; font-family: Verdana, 微软雅黑,黑体">
		<img alt="figure官网" src="/Flowers/static/images/logoback.png"
			width="100px" height="50px"
			style="float: left; margin-left: 20px; margin-top: 3px">
		 <%
			Admins admin = (Admins) request.getSession(false).getAttribute("login");
		%>
		<div
			style="float: right; margin-top: 35px; font-family: '楷体'; font-size: 15px; color: #414141;">
			<span><%=admin.getAdmin_name()%>，欢迎您！</span> <a
				href="/Flowers/jsp/login.jsp" style="text-decoration: none;color: #414141;">[退出]</a>
		</div> 
	</div>
	
   
	<div region="west" split="true" title="系统管理" style="width:180px;" id="west">
		<div class="easyui-accordion" fit="true" border="false">
			
		</div>
    </div>
	
	<div id="mainPanle" region="center" style="background: #eee; overflow-y:hidden">
        <div id="tabs" class="easyui-tabs"  fit="true" border="false" >
        	<div style="margin: 0;color: black;">
        		<div style="font-size: 20px;margin-top: 50px;margin-left:390px; ">上周商品销量</div>
        		<div id="main" style="height:400px;width:825px;margin-left:150px; "></div>
        	</div>
		</div>
    </div>
    
 
    
    
</body>

     <script src="/Flowers/static/js/esl.js"></script>
	<script type="text/javascript">
		require.config({
            paths:{ 
                'echarts' : '/Flowers/static/js/echarts',
               'echarts/chart/line' : '/Flowers/static/js/echarts'
            }
        });
        
        
        require(
            [
                'echarts',
                'echarts/chart/line' // 使用柱状图就加载bar模块，按需加载
            ], function (ec) {
            	var myChart = ec.init(document.getElementById('main')); 
           var option={
        		 
           	tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['鲜花玫瑰','永生玫瑰','玫瑰珠宝','','玫瑰饰品']
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    xAxis : [
        {
            type : 'category',
            boundaryGap : false,
            data : ['一月','二月','三月','四月','五月','六月','七月','八月']
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
       
        {
            name:'永生玫瑰',
            type:'line',
            stack: '总量',
            itemStyle: {normal: {areaStyle: {type: 'default'}}},
            data:[220000, 1080200, 190100, 234000, 290000, 330000, 310000,1200000]
        },
        {
            name:'玫瑰珠宝',
            type:'line',
            stack: '总量',
            itemStyle: {normal: {areaStyle: {type: 'default'}}},
            data:[250000, 930002, 580001, 388154, 555190, 330000,324532, 1303410]
        },
        {
            name:'玫瑰饰品',
            type:'line',
            stack: '总量',
            itemStyle: {normal: {areaStyle: {type: 'default'}}},
            data:[320133, 100332, 301355, 334000, 390555, 355530, 354320,1292333]
        },
        {
            name:'鲜花玫瑰',
            type:'line',
            stack: '总量',
            itemStyle: {normal: {areaStyle: {type: 'default'}}},
            data:[233820, 977932, 544901, 323934, 321290, 434330, 154320,1023324]
        }
    ]
           	
           }
        
         myChart.setOption(option); 
         }
        )
</script>

</html>