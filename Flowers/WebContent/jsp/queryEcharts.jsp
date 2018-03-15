<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
<script type="text/javascript" src="/Flowers/static/js/themes/echarts.js"></script>
<script type="text/javascript" src="/Flowers/static/js/esl.js" ></script>
 <script type="text/javascript" charset="utf-8" src="/Flowers/static/js/jquery-3.2.1.min.js"></script>
	</head>

	<body>
 <div id="main" style="height:400px;width:700px;margin: 100px auto"></div>
    <script type="text/javascript">
        // 路径配置
        require.config({
            paths:{ 
                'echarts' : '/Flowers/static/js/echarts',
                'echarts/chart/line': '/Flowers/static/js/themes/echarts',
                'echarts/chart/bar' : '/Flowers/static/js/themes/echarts'
            }
        });
        // 使用
        require(
            [
                'echarts',
                'echarts/chart/line',
                'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
            ],
            drewEcharts
        );
         function drewEcharts(ec) {
                // 基于准备好的dom，初始化echarts图表
                myChart = ec.init(document.getElementById('main')); 
                var option = {
                    tooltip: {
                        show: true
                    },
                    legend: {
                        data:['电话号码']
                    },
                    xAxis : [
                        {
                            type : 'category',
                            data : (function(){
                                    var arr=[];
                                        $.ajax({
                                        type : "post",
                                        async : false, //同步执行
                                        url : "/Flowers/QueryEchatsServlet",
                                        data : {},
                                        dataType : "json", //返回数据形式为json
                                        success : function(result) {
                                        if (result) {
                                               for(var i=0;i<result.length;i++){
                                                  console.log(result[i].name);
                                                  arr.push(result[i].name);
                                                }    
                                        }
                                        
                                    },
                                    error : function(errorMsg) {
                                        alert("不好意思，大爷，图表请求数据失败啦!");
                                        myChart.hideLoading();
                                    }
                                   })
                                   return arr;
                                })() 
                        }
                    ],
                    yAxis : [
                        {
                            type : 'value'
                        }
                    ],
                    series : [
                        {
                            "name":"电话号码",
                            "type":"bar",
                            "data":(function(){
                                        var arr=[];
                                        $.ajax({
                                        type : "post",
                                        async : false, //同步执行
                                        url : "/Flowers/QueryEchatsServlet",
                                        data : {},
                                        dataType : "json", //返回数据形式为json
                                        success : function(result) {
                                        if (result) {
                                               for(var i=0;i<result.length;i++){
                                                  console.log(result[i].num);
                                                  arr.push(result[i].num);
                                                }  
                                        }
                                    },
                                    error : function(errorMsg) {
                                        alert("不好意思，大爷，图表请求数据失败啦!");
                                        myChart.hideLoading();
                                    }
                                   })
                                  return arr;
                            })()
                            
                        }
                    ]
                };               
                // 为echarts对象加载数据 
                myChart.setOption(option);
            }
    </script>
</body>

</html>