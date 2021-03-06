﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>product</title>
<link rel="stylesheet" type="text/css"
	href="/Flowers/static/jquery-easyui-1/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="/Flowers/static/jquery-easyui-1/themes/icon.css">
<script type="text/javascript"
	src="/Flowers/static/jquery-easyui-1/jquery.min.js"></script>
<script type="text/javascript"
	src="/Flowers/static/jquery-easyui-1/jquery.easyui.min.js"></script>
<script src="/Flowers/static/layer/layer.js" type="text/javascript" charset="utf-8"></script>

<style type="text/css">
 .easyui-datagrid {
	width: 100%;
	height: 500px;
} 
</style>
</head>
<body>
	<div id="toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="newUser()">添加</a> <a
			href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editUser()">修改</a> <a
			href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="destroyUser()">删除</a><a
			href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-reload" plain="true" onclick="reloadUser()">刷新</a>
	</div>
	<table id="dg" class="easyui-datagrid"  style="margin: 50px auto;"
					data-options="pagination:true,singleSelect:false,url:'/Flowers/queryPageServlet',method:'get',toolbar:'#tb'">
	
		<thead>
			<tr>
				<th data-options="field:'ck',checkbox:true"></th>
				<th data-options="field:'productID'" width="30">商品编号</th>
				<th data-options="field:'productName'" width="80">商品名称</th>
				<th data-options="field:'caName',align:'right'" width="120">类别</th>
 				<th data-options="field:'picture',width:70,align:'center',formatter:imgFormatter">图片预览</th>  
				<th data-options="field:'talkTo'" width="80">花语</th>
				<th data-options="field:'originalprice'" width="80">市场价</th>
				<th data-options="field:'festival'" width="80">适用节日</th>
				<th data-options="field:'recmmend'" width="50">是否推荐</th>
				<th data-options="field:'miaoshu'" width="480">描述</th>
			</tr>
		</thead>
	</table>
	<div id="dlg" class="easyui-dialog" style="width: 400px" closed="true"
		buttons="#dlg-buttons">
		<form id="fm" method="post" novalidate
			style="margin: 0; padding: 20px 50px" onsubmit="return ">
			<div
				style="margin-bottom: 20px; font-size: 14px; border-bottom: 1px solid #ccc">
				Product Information</div>

			<div style="margin-bottom: 10px">
				<input name="productName" class="easyui-textbox" required="true"
					label="商品名称:" style="width: 100%">
			</div>
			<div style="margin-bottom: 10px">
				<input name="caName" class="easyui-textbox" required="true"
					label="类别:" style="width: 100%">
			</div>
			<div style="margin-bottom: 10px">
				<input  type="image" id="headerimg" src="/supermarket/img/banner.png"  width="52" height="52">
					<input name="picture" id="headerimg1"  type="hidden"
						label="图片：" style="width: 100%"  >
					<input type="file"  name="选择"  id="uploadFile" style="padding-left: 20px">
					<input id="btnr" type="button"  name="update" value="确认上传">
				</div> 
			<div style="margin-bottom: 10px">
				<input name="talkTo" class="easyui-textbox" required="true"
					label="花语:" style="width: 100%">
			</div>
			<div style="margin-bottom: 10px">
				<input name="originalprice" class="easyui-textbox" required="true"
					label="市场价:" style="width: 100%">
			</div>
			<div style="margin-bottom: 10px">
				<input name="festival" class="easyui-textbox" required="true"
					label="适用节日:" style="width: 100%">
			</div>
			<div style="margin-bottom: 10px">
				<input name="miaoshu" class="easyui-textbox" required="true"
					label="描述:" style="width: 100%">
			</div>
			<div style="margin-bottom: 10px; float: left">
				是否推荐： <input type="radio" name="recmmend" id="radio1" value="是"
					style="margin-left: 35px" />是 <input type="radio" name="recmmend"
					checked="checked" id="radio2" value="否" />否
			</div>
		</form>
		<div id="dlg-buttons">
			<a href="javascript:void(0)" class="easyui-linkbutton c6"
				iconCls="icon-ok" onclick="saveuser()" style="width: 90px">Save</a>
			<a href="javascript:void(0)" class="easyui-linkbutton"
				iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')"
				style="width: 90px">Cancel</a>
		</div>
	</div>
</body>
<script type="text/javascript">
	//图片添加路径  
	function imgFormatter(value){  
	    var rvalue ="";            
	    rvalue = "<img  style='width:60px; height:60px;margin-left:3px;' src='/Flowers/static/productImg/" + value + "' title='点击查看图片'/>";  
	    return  rvalue;        
	}  
	  
	var ee;
	//弹出新增商品窗口
	function newUser() {
		$('#dlg').dialog('open').dialog('center')
				.dialog('setTitle', 'New User');
		$('#fm').form('clear');
		ee = '/Flowers/proaddservlet';
	}
	//刷新表
	function reloadUser() {
		$('#dg').datagrid('reload');
	}
	//弹出修改商品窗口
	function editUser() {

		var row = $('#dg').datagrid('getSelected');

		if (row) {
			$('#dlg').dialog('open').dialog('center').dialog('setTitle',
					'Edit User');
			if (row.member_sex == '男') {
				$("#radio1").attr("checked", true);
			} else {
				$("#radio2").attr("checked", true);
			}
			$('#fm').form('load', row);
			ee = '/Flowers/proeditservlet?productID=' + row.productID;
		}

	}

	//保存商品
	function saveuser() {
		$('#fm').form('submit', {
			url : ee,
			onSubmit : function() {

				return $(this).form('validate');
			},
			success : function(result) {

				var result = eval('(' + result + ')');
				if (result.code > 0) {
					$('#dlg').dialog('close');
					$('#dg').datagrid('reload')
					layer.msg(result.msg, {
				        time: 3000, //3s后自动关闭
				    });
					
				} else {
					layer.msg(result.msg, {
				        time: 3000, //3s后自动关闭
				    });
					$('#dlg').dialog('close'); // close the dialog
					$('#dg').datagrid('reload'); // reload the user data
				}
			}
		});
	}
	//删除商品
	function destroyUser() {
		var row = $('#dg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('提示', '确认删除这个商品？', function(r) {
				if (r) {
					$.post('/Flowers/proremovesevlet', {
						productID : row.productID
					}, function(result) {
						layer.msg(result.msg, {
					        time: 3000, //3s后自动关闭
					    });
					}, 'json');
					$('#dg').datagrid('reload');
				}
			});
		}
	}
</script>
</html>