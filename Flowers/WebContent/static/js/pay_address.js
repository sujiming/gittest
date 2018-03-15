var mybasePath = "";
$(document).ready(function(){
	mybasePath = $("#mybasePath").text();
	
	fun_init_address();
	
	var addid = $("#address_select_id").text();
	if(addid != '') {
		fun_showAddrs(addid, '');
	}
	
	fun_card();
	
	$("#city_select_0").attr("checked", true);
	fun_select_ordertype('0');
	
	$("body:not(#address_zip_div)").bind("click",function(){
		$("#address_zip_div").hide();
	});
	
	$('#ab').show();$('#bc').hide();
	
	fun_time_init();
});

function fun_init_address() {
	var len = $("#address_mylist tr:visible").length;
	
	if(len == 1 && $("#gettype")[0]) {//没有地址
		document.getElementById("address_id_0").checked = true;
		//添加新地址
		fun_showAddr();
		//隐藏取消按钮，强制添加地址
		$("#consignee_addr .Cancel").hide();
	} else {//已有地址
		$("#consignee_addr .Cancel").show();
	}
}

function fun_init_address_cancel() {
	var len = $("#address_mylist tr:visible").length;
	if(len > 1) {
		$("#consignee_addr .Cancel").show();
	}
}
function fun_get_proids(){
	var cart_ids = $("#cart_ids").text();
	var arr = cart_ids.split(",");
	return arr;
}
function fun_get_arrivetypes(){
	var arrivetypes = $("#arrivetypes").text();
	var arr = arrivetypes.split(",");
	return arr;
}
//陆陆运输
function fun_time_init() {
	var cart_ids = $("#cart_ids").text();
	var arr = cart_ids.split(",");
	for(var i=0; i<arr.length; i++) {
		var proid = arr[i];
		if(proid != '') {
			var issend = $("#transport_"+proid).val();
			if(issend == '1') {
				$("#ctime_"+proid).hide();				
				$("#city_span_show_"+proid).hide();
				$("#day_"+proid).hide();
				$("#ctime_show_"+proid).css("width","initial").html("该产品不支持空运，不能保证送达时间，支付完成后，我们会尽快为您安排发货！");//发货日期：及时发货
				
				$("#ctime_"+proid).val(send_time_1);
			}
		}
	}
}
//设置时间的默认值，保证验证时能通过
function fun_time_init4confrim() {
	var arr = fun_get_proids();
	for(var i=0; i<arr.length; i++) {
		var proid = arr[i];
		if(proid != '') {
			var issend = $("#transport_"+proid).val();
			if(issend == '1') {
				$("#ctime_"+proid).val(send_time_1);
			}
		}
	}
}
function fun_arrivetype_click(proid,arrivetype){
	var arrivetypes = fun_get_arrivetypes();
	for(var i=0;i<arrivetypes.length;i++){
		if(arrivetypes[i]!=''){
			$("#arrivetype_"+proid+"_"+arrivetypes[i]).removeClass("arrivetype-item-selected");
		}
	}
	$("#arrivetype_"+proid+"_"+arrivetype).addClass("arrivetype-item-selected");
	$("#arrivetype_"+proid).val(arrivetype);
	var myaddid = $("#addid_"+proid).val();
	if(myaddid != '') {
		fun_address_rosetype(proid, myaddid);
	}
}
function fun_search_zip(type) {
	var tarea = $("#area").val();
			
	$.ajax({
		type:'get',
		url:mybasePath+'/userAddressinfo/search_zip_area/'+tarea,
		dataType:"json",
		success:function(_tdata){
			if(_tdata && _tdata.zip) {
				$("#zip").val(_tdata.zip);
			}else{
				$("#zip").val("");
			}
		},error:function(){
			$("#zip").val("");
		}
	});
}

function fun_zip_ceng_li(zip,address) {
	$("#address").val(address);
	$("#zip").val(zip);
	$("#address_zip_div").hide();
}

//添加新地址	
function fun_showAddr(){
	if(document.getElementById("address_id_0").checked){
		//切换为快递运输
		if(!$("#gettype")[0].checked){
			$("#gettype")[0].checked = true;
			$("#gettype").click();
		}else{
			if($('#contactname').attr("disabled") == false) {
				$("#contactname").val("");
			}
			
			fun_init_address_cancel();
			
			$("#addressid").val("");
			$('#consignee_addr').show();
			$('#mobile').val('');
			$('#address_email').val('');
			$('#zip').val('');
			$('#address').val('');
		}
	}
}


//切换运输类型时，清除地址信息
function fun_clearAddrs(){
	$("#addid").val('');
	$("#shopid").val('');
	var proids = document.getElementsByName("proid");
	for(var i=0;i<proids.length;i++){
		if(proids[i].value){
			var _id = proids[i].value;
			$("#span_address_"+_id).html('');
			$("#span_address_name_"+_id).html('');
		}
	}
}
//点击收货人地址
function fun_showAddrs(id, shopid){
	$("#address_id_"+id).attr("checked", true);
	var address_idObj = document.getElementById("address_id_"+id);
	if(address_idObj && address_idObj.checked){
		$('#consignee_addr').hide();
		
		$("#addid").val(id);
		$("#shopid").val(shopid);
		$("#addressid").val(id);
		$("#address_select_id").text(id);
		
		//切换为快递运输
		if($("#gettype")[0] && $("#gettype")[0].checked){
			$("#shop_address_show").hide();
		} 
		//切换为快递运输
		else if($("#gettype")[0] && !$("#gettype")[0].checked && !shopid){
			$("#gettype")[0].checked = true;
			$("#shop_address_show").hide();
			fun_select_ordertype('0');
		}
		//切换为实体店自提
		else if($("#gettypezt")[0] && $("#gettypezt")[0].checked){
			$("#shop_address_show").show();
		}
		
		//同步地址
		fun_select_add(id);
		
	}
}

//同步地址
function fun_select_add(id) {
	var cart_ids = $("#cart_ids").text();
	var arr = cart_ids.split(",");
	for(var i=0; i<arr.length; i++) {
		var proid = arr[i];
		if(proid != '') {
			
			var address = $("#product_address_"+id).html();
			var myarr = address.split("<i></i>");
			if(myarr.length < 2) {
				myarr = address.split("<I></I>");
			}
			
			$("#addid_"+proid).val(id);
			var mylove = $("#span_mylove").text();
			if($("#addname_a_"+proid).length > 0) {//可修改
				var shopid = $("#shopid").val();
				if(shopid != "") {//实体店
					mylove = myarr[0];
					$("#span_address_name_"+proid).text(mylove);
					$("#addname_"+proid).val(mylove);
					$("#addname_input_"+proid).val(mylove);//修改收货人姓名默认赋值
				} else {//线上
					var cname = myarr[0];
					$("#span_address_name_"+proid).text(cname);
					$("#addname_"+proid).val(cname);
					$("#addname_input_"+proid).val(cname);//修改收货人姓名默认赋值
				}
			} else {
				mylove = mylove!=""?mylove:myarr[0];
				$("#span_address_name_"+proid).text(mylove);
				$("#addname_"+proid).val(mylove);
			}
			$("#span_address_"+proid).html($.trim(myarr[1].replace("&nbsp;","")));
			
			//鲜花地址判断
			var myaddid = $("#addid_"+proid).val();
			if(myaddid != '') {
				fun_address_rosetype(proid, myaddid);
			}
			
			//更新日期,限定
			$("#ctime_"+proid).val("");
		}
	}
}

//异步地址
function fun_address_saveOrUpdate() {
	if(address_confirm()) {
		var id = $("#addressid").val();
		var contactname = $("#contactname").val();
		var mobile = $("#mobile").val();
		var email = $("#address_email").val();
		var privince = $("#privince").val();
		var city = $("#city").val();
		var area = $("#area").val();
		var zip = $("#zip").val();
		var _address = $("#address").val();
	
		var data = {id:id, contactname:contactname, mobile:mobile, email:email, privince:privince, city:city, area:area, zip:zip, address:_address};
		$.post(mybasePath+"/userAddressinfo/payAddressSaveOrUpdates.do?random="+Math.random(),data,function(datas){
			//var datas = eval('(' + data + ')');
			var msg = datas.msg;
			
			var _html = '<td width="30"><input type="radio" name="address_id" id="address_id_'+datas.id+'" data-provinceid="'+privince+'" onClick="fun_showAddrs('+datas.id+');"value="'+datas.id+'" autocomplete="off"></td>';
			_html += '<td width="730" class="cor-2"><label for="address_id_'+datas.id+'"><span id="product_address_'+datas.id+'">'+contactname+'<i></i>&nbsp;'+$("#privince").find("option[value='"+privince+"']").html()+''+$("#city").find("option[value='"+city+"']").html()+''+$("#area").find("option[value='"+area+"']").html()+'&nbsp;';
			if(_address.length>7){
				_html += _address.substr(0,7)+"*****";
			}else{
				_html += _address;
			}
			_html += '  邮编:'+zip+'  手机:'+mobile+' </span></label></td>';
			_html += '<td align="right" width="200">';
			_html += '<div class="pb3">';
			_html += '<a href="javascript:void(0);" onClick="adress_click('+datas.id+',\''+contactname+'\','+privince+','+city+','+area+',\''+_address+'\',\''+mobile+'\',\''+email+'\',\''+zip+'\')">编辑</a>';
			_html += '<a href="javascript:void(0);" onClick="show_dellayer('+datas.id+')">删除</a></div></td>';
			
			if(msg == '1') {//添加
				//$("#address_add_0").before(datas.address);
				var _mhtml='<tr id="add_'+datas.id+'">'+_html+'</tr>';
				$("#address_add_0").before(_mhtml);
				$(".mb10").before(datas.areahtml);
				
				//选中当前地址
				//document.getElementById("address_id_0").checked = false;				
				//var _selid = $.trim($("#address_select_id").text());
				if(datas.id){
					document.getElementById("address_id_"+datas.id).checked = true;					
				}
				
				$("#e_m").text("");
				
				//同步地址
				fun_select_add(datas.id);
				
				//显示选择地址
				var cart_ids = $("#cart_ids").text();
				var arr = cart_ids.split(",");
				for(var i=0; i<arr.length; i++) {
					var proid = arr[i];
					$("#select_other_address_"+proid).show();
				}
			}
			if(msg == '2') {//修改
				var myid = datas.id;
				
				$("#add_"+myid).html(_html);
				var _selid = $.trim($("#address_select_id").text());
				if(_selid == datas.id){
					document.getElementById("address_id_"+datas.id).checked = true;					
				}
				
				
				$("#e_m").text("");
				
				var cart_ids = $("#cart_ids").text();
				var arr = cart_ids.split(",");
				for(var i=0; i<arr.length; i++) {
					var proid = arr[i];
					if(proid != '') {
						var addid = $("#addid_"+proid).val();
						if(addid == id) {
							var _add = $("#product_address_"+id).html();
							var myarr = _add.split("<i></i>");
							if(myarr.length < 2) {
								myarr = _add.split("<I></I>");
							}
							
							if($("#addname_a_"+proid).length > 0) {//可修改
								$("#addname_"+proid).val(myarr[0]);
								$("#span_address_name_"+proid).text(myarr[0]);
							} 
							$("#span_address_"+proid).html($.trim(myarr[1]));
							
							//鲜花地址判断
							var myaddid = $("#addid_"+proid).val();
							if(myaddid != '') {
								fun_address_rosetype(proid, myaddid);
							}
							
							//更新日期,限定
							$("#ctime_"+proid).val("");
						}
					}
				}
			}
			$('#consignee_addr').hide();
		},"json");
	}
}

//显示删除提示框
function show_dellayer(id){
	$(".wg_add_layer").show();
	$(".btn_ok").unbind().bind("click",function(){
		del_address(id);
		$(".wg_add_layer").hide();
	});
	$(".btn_cancel").unbind().bind("click",function(){
		$(".wg_add_layer").hide();
	});
}

//异步地址
//点击删除地址
function del_address(id) {
	$.post(mybasePath+"/userAddressinfo/payAddressDels/"+id,null,function(data){
		//var datas = eval('(' + data + ')');
		var msg = data.msg;
		if(msg == '1') {//删除
			$("#add_"+id).remove();
			$("#consignee_addr").hide();
			var cart_ids = $("#cart_ids").text();
			var arr = cart_ids.split(",");
			for(var i=0; i<arr.length; i++) {
				var proid = arr[i];
				if(proid != '') {
					var addid = $("#addid_"+proid).val();
					if(addid == id) {
						$("#addid_"+proid).val("");
						$("#addname_"+proid).val("");
						$("#span_address_"+proid).text("");
						
						if($("#addname_a_"+proid).length > 0) {
							$("#span_address_name_"+proid).text("");
						}
					}
				}
			}
			fun_init_address();
		}
	}, "json");
}

//订单地址信息确认
function address_confirm() {
	$("#contactname").css("border","solid 1px #b4b4b4");
	$("#mobile").css("border","solid 1px #b4b4b4")
	$("#address_email").css("border","solid 1px #b4b4b4")
	$("#privince").css("border","solid 1px #b4b4b4")
	$("#city").css("border","solid 1px #b4b4b4")
	$("#area").css("border","solid 1px #b4b4b4")
	$("#zip").css("border","solid 1px #b4b4b4")
	$("#address").css("border","solid 1px #b4b4b4")
	
	var contactname = $("#contactname").val();
	if(!isNotNull(contactname)) {
		$("#e_m").text("请填写收货人的姓名！");
		$("#contactname").css("border","solid 1px red").focus();
		return false;
	} 
	
	var mobile = $("#mobile").val();
	if(!isNotNull(mobile)) {
		$("#e_m").text("请填写收货人的手机号！");
		$("#mobile").css("border","solid 1px red").focus();
		return false;
	}
	if(!isMobile(mobile)) {
		$("#e_m").text("您填写的手机号格式不正确！");
		$("#mobile").css("border","solid 1px red").focus();
		return false;
	}
	
	//var email = $("#address_email").val();
	//if(!isNotNull(email)) {
	//	$("#e_m").text("电子邮件必须输入！");
	//	return false;
	//}
	//if(!isEmail(email)) {
		//$("#e_m").text("您填写的电子邮件格式不正确！");
		//$("#address_email").css("border","solid 1px red").focus();
		//return false;
	//}
	
	var privince = $("#privince").val();
	if(!isSelect(privince)) {
		$("#e_m").text("请选择您的省份！");
		$("#privince").css("border","solid 1px red").focus();
		return false;
	}
	var city = $("#city").val();
	if(!isSelect(city)) {
		$("#e_m").text("请选择您的省份！");
		$("#city").css("border","solid 1px red").focus();
		return false;
	}
	var area = $("#area").val();
	if(!isSelect(area)) {
		$("#e_m").text("请选择您的省份！");
		$("#area").css("border","solid 1px red").focus();
		return false;
	}
	
	var address = $("#address").val();
	if(!isNotNull(address)) {
		$("#e_m").text("请填写您的详细地址！");
		$("#address").css("border","solid 1px red").focus();
		return false;
	}
	
	var zip = $("#zip").val();
	if(!isNotNull(zip)) {
		$("#e_m").text("请填写您的邮编！");
		$("#zip").css("border","solid 1px red").focus();
		return false;
	}
	if(!isZip(zip)) {
		$("#e_m").text("您填写的邮编格式不正确！");
		$("#zip").css("border","solid 1px red").focus();
		return false;
	}
	return true;
}

//点击修改地址
function adress_click(id,contactname,privince,city,area,address,mobile,email,zip) {
	$("#contactname").val(contactname);
	$("#addressid").val(id);
	$("#address").val(address);
	$("#mobile").val(mobile);
	$("#address_email").val(email);
	$("#zip").val(zip);
	
	fun_init_address_cancel();
	
	selectTwo('', 'privince', mybasePath+'/sysDictionary/findPayByPid/', '733', privince);
	selectTwo('privince', 'city', mybasePath+'/sysDictionary/findPayByPid/', privince, city);
	selectTwo('city', 'area', mybasePath+'/sysDictionary/findPayByPid/', city, area);
	
	//document.getElementById('address_id_'+id).checked = true;
	$('#consignee_addr').show();
}

//点击删除地址
function del_address1(id) {
	window.location = mybasePath+"/userAddressinfo/payAddressDel/"+id;
}

//付款方式
function click_paytype(type,id) {
	if(type == '0') {
		//$("#online").show();
		$("#offline").hide();
		
		$("#pay_type").text("在线支付");
		$("#paytype1").val(id);
	} else if(type == '1'){
		$("#offline").show();
		//$("#online").hide();
		
		$("#pay_type").text("银行转账");
		$("#paytype1").val(id);
	} else {
		$("#paytype1").val(id);
	}
}
//---------------------日期-------------------------
//纪念日显示、隐藏
function fun_day_show(id){
	$('#jnr_'+id).show();
	
	var li = $(".my_day_ul_"+id+" li").eq(0);
	var ctime = $("#my_day_time_"+id).text();
	exchange(li, ctime, id);
}

//纪念日点击效果
function exchange(obj, time, id){
	var a = $("#select li");
	for(var i=0;i<a.length;i++){
		$(a[i]).css("color","#83847e").removeClass("this"); 
	}
	$(obj).css("color","#FFFFFF").addClass("this");
	
	$("#my_day_"+id).text(time);
}

//点击纪念日确定
function fun_day(id) {
	var day = $("#my_day_"+id).text();
	
	$('#jnr_'+id).hide();
	$("#ctime_"+id).val(day);
	
	fun_year_day(id, '0');
}

//日期验证
function fun_year_day(id, type) {
	var myday = "";
	if(type == '0') {
		myday = $("#ctime_"+id).val();
	} 
	if(myday == "") {
		fun_order_total();
		return;
	}
	
	var cart_ids = $("#cart_ids").text();
	if(cart_ids == '') {
		alert("您的商品清单没有商品！");
		fun_order_total();
		return;
	}
	
	//实体店订单
	var waybilltype = $("#waybilltype").val();
	//if(waybilltype == '2' || waybilltype == '3' || waybilltype == '4') {
	//	return;
	//}
	
	//防止未验证就提交订单
	$("#myctime_"+id).text("1");
	var addid = $("#addid_"+id).val();
	var areaid = $("#address_select_areaid_"+addid).text();
	
	//同城
	var city = "0";
	if($("#iscity_type_"+id).attr("checked") == true) {
		city = "1";
	}
	
	//实体店id
	var shopid = $("#shopid").val();
	
	//商品个数
	var propnum = $("#product_count_"+id).text();
	
	var data = {proid:id, times:myday, areaid:areaid, iscity:city, waybilltype:waybilltype, shopid:shopid, propnum:propnum};
	$.post(mybasePath+"/userAddressinfo/myday",data,function(datas){
		//var datas = eval('(' + data + ')');
		var msg = datas.msg;
		if(msg == '1') {//可以购买
			$("#myctime_"+id).text("0");
			$("#ctime_"+id).css("border","solid 1px #b4b4b4");
			
			$("#table_day_"+id).hide();
			
			//fun_notice_time(id);
		} else {
			$("#myctime_"+id).text("1");
			$("#ctime_"+id).css("border","solid 1px red");
			alert(datas.msg_error);
			
			$("#ctime_"+id).val("");
		}
		fun_order_total();
	}, "json");
}

var notice_data = [];
function fun_notice_time(id) {
	var isExites = false;
	$.each(notice_data, function(key, val) {
		var proid = val[0];
		var interval_id = val[1];
	    if(proid == id) {
	    	isExites = true;
	    }
	});
	if(!isExites) {
		$("#span_signs_"+id).text("阁下：请您尽量避免在周末或法定节假日将送达地点填写为收货人的工作地址。")
		var interval_id = window.setInterval(function() {
			fun_notice_time_run(id);
		}, 5000);
		
		var data = [id, interval_id];
		notice_data.push(data);
	}
}

function fun_notice_time_run(id) {
	$.each(notice_data, function(key, val) {
		var proid = val[0];
		var interval_id = val[1];
	    if(proid == id) {
	    	window.clearInterval(interval_id);
			$("#span_signs_"+id).text("");
			
			notice_data.splice(key,1);
	    }
	});
}

//验证
function fun_ctime_confirm(id) {
	var ctime = $("#ctime_"+id).val();
	if(!isNotNull(ctime)) {
		$("#ctime_"+id).css("border","solid 1px red");
		$("#ctime_"+id).focus();
		return false;
	}
	return true;
}
//-----------------------日期------------------------------

//-----------------------祝福语---------------------------------
//祝福语显示、隐藏
function fun_bless_show(id, type) {
	if(type == '1' && !$("#table_bless_"+id).is(":hidden")) {
		return;
	}
	if(type == '0' && $("#table_bless_"+id).is(":hidden")) {
		return;
	}
	
	if($("#table_bless_"+id).is(":hidden")) {
		$("#table_bless_"+id).show();
	} else {
		$("#table_bless_"+id).hide();
	}
}

//验证爱的留言
function fun_bless_confirm(id) {
	var signs = $("#signs_"+id).val();
	var bless = $("#bless_"+id).val();
	if(!isNotNull(signs)) {
		$("#signs_"+id).css("border","solid 1px red").focus();
		return false;
	}else if(!checkString(signs)) {
		$("#signs_"+id).css("border","solid 1px red").focus();
		return false;
	}else if(!isNotNull(bless)) {
		$("#bless_"+id).css("border","solid 1px red").focus();
		return false;
	}else if(!checkString(bless)) {
		$("#bless_"+id).css("border","solid 1px red").focus();
		return false;
	}else{
		return true;		
	}
}
//验证签名
function fun_signs_blur(id) {
	$("#signs_"+id).css("border","solid 1px #b4b4b4");
	var signs = $("#signs_"+id).val();
	if(!checkString(signs)) {
		$("#signs_"+id).css("border","solid 1px red").focus();
		return false;
	}
}
//验证爱的留言
function fun_bless_blur(id) {
	$("#bless_"+id).css("border","solid 1px #b4b4b4");
	
	var bless = $("#bless_"+id).val();
	if(!isNotNull(bless)) {
		$("#bless_"+id).css("border","solid 1px red").focus();
		return false;
	}
	
	if(!checkString(bless)) {
		$("#bless_"+id).css("border","solid 1px red").focus();
		return false;
	}
}
//-----------------------祝福语---------------------------------

//-----------------------备注---------------------------------
//备注语显示、隐藏
function fun_remark_show(id, type) {
	if(type == '0' && $("#table_bless_"+id).is(":hidden")) {
		return;
	}
	
	if($("#table_remark_"+id).is(":hidden")) {
		$("#table_remark_"+id).show();
	} else {
		$("#table_remark_"+id).hide();
	}
}

//验证留言
function fun_remark_confirm(id) {
	var remark = $("#bless_"+id).val();
	if(!checkString(remark)) {
		alert("请填写您的备注有非法字符！");
		$("#bless_"+id).css("border","solid 1px red").focus();
		$("#bless_"+id).show();
		return false;
	} 
	return true;
}

function fun_remark_blur(id) {
	$("#bless_"+id).css("border","solid 1px #b4b4b4");
	var remark = $("#bless_"+id).val();
	if(!checkString(remark)) {
		alert("请填写您的备注有非法字符！");
		$("#bless_"+id).css("border","solid 1px red").focus();
		$("#bless_"+id).show();
		return false;
	} 
}
//-----------------------备注---------------------------------

//-----------------------收货人---------------------------------
//更改收货人
function fun_update_name(id) {
	$("#addname_span_"+id).hide();
	$("#addname_a_"+id).hide();
	$("#addname_input_"+id).show();
}

//收货人变化更新
function fun_onchange_name(id) {
	$("#addname_"+id).val($("#addname_input_"+id).val());
}

//显示地址层
function fun_ceng_address_show(id,name) {
	if($("#address_ceng_"+id).is(":hidden")) {
		$.post(mybasePath+"/userAddressinfo/payAddressCeng/"+id,{name:name},function(data){
			var msg = data.msg;
			if(msg == '1') {//删除
				$(".select_address_ceng_"+id).empty(); 
				
				var myaddress = "";
				var adddata = data.data;
				for(var i=0; i<adddata.length; i++) {
					myaddress += '<li id="ceng_address_'+adddata[i].proid+'_'+adddata[i].addid+'" onClick="fun_ceng_address_click(\''+adddata[i].proid+'\',\''+adddata[i].addid+'\',\''+adddata[i].myname+'\')">'+adddata[i].addressmsg+'</li><span id="ceng_address_issend_'+adddata[i].proid+'_'+adddata[i].addid+'" style="display:none">'+adddata[i].issend+'</span>';
				}
				$(".select_address_ceng_"+id).append(myaddress);
				
				//选中第一
				for(var i=0; i<adddata.length; i++) {
					if(i == 0) {
						fun_ceng_address_click(adddata[i].proid, adddata[i].addid, adddata[i].myname);
					}
				}
				
				$("#address_ceng_"+id).show();
			}
		}, "json");
	} else {
		$("#address_ceng_"+id).hide();
	}
}

//点击地址
function fun_ceng_address_click(proid, addid, name) {
	var a = $(".select_address_ceng_"+proid+" li");
	for(var i=0;i<a.length;i++){
		$(a[i]).css("color","#83847e").removeClass("this"); 
	}
	$("#ceng_address_"+proid+"_"+addid).css("color","#FFFFFF").addClass("this");
	
	$("#my_address_"+proid).text(addid);
	$("#my_address_name_"+proid).text(name);
}

function fun_ceng_address_init(id, i) {
	var txt = $("#product_address_"+id).text();
	$("#ceng_address_"+id).text(i+". "+txt);
}

//确认地址
function fun_ceng_address_confirm(proid,id_up) {
	$('#address_ceng_'+proid).hide();
	
	var myaddid = $("#my_address_"+proid).text();
	$("#addid_"+proid).val(myaddid);
	
	var name = $("#my_address_name_"+proid).text();
	$("#span_address_name_"+proid).text(name);
	$("#addname_input_"+proid).val(name);
	$("#addname_"+proid).val(name);
	
	if(id_up) {
		var address = $.trim($("#span_address_"+id_up).text());
		$("#span_address_"+proid).text(address);
	} else {
		var addid = $("#my_address_"+proid).text();
		var address = $("#ceng_address_"+proid+"_"+addid).html();
		var arr = address.split("<i></i>");
		if(arr.length < 2) {
			arr = address.split("<I></I>");
		}
		$("#span_address_"+proid).html($.trim(arr[1]));
		
	}
	
	//鲜花地址判断
	fun_address_rosetype(proid, myaddid);
}

//验证
function fun_address_confirm(id) {
	var addid = $("#addid_"+id).val();
	var addtxt = $("#span_address_"+id).text();
	if(!isNotNull(addid) || !isNotNull(addtxt)) {
		alert("请选择收货人地址！");
		$("#span_address_name_"+id).html("");
		return false;
	}else{
		return true;
	}
}
//-----------------------收货人---------------------------------

//-----------------------鲜花地址判断---------------------------------
var rule_city_start = "";
var rule_city_end = "";
var date_rule = [];
function fun_address_rosetype(proid, addid) {
	$("#myaddress_"+proid).text("0");
	var shopid = $("#shopid").val();
	var arrivetype = $("#arrivetype_"+proid).val();
	$.post(mybasePath+"/userAddressinfo/isAddressByRosetype/"+proid+"/"+addid+"?shopid="+shopid+"&arrivetype="+arrivetype,null,function(datas){
		var msg = datas.msg;
		
		if(typeof msg == 'undefined') return;
		
		if(msg == '0') {//验证失败，地址不匹配
			$("#span_address_"+proid).html("<font color='red'>"+datas.msgError+"</font>");
			
			$("#myaddress_"+proid).text("1");
			$("#ctime_"+proid).val("");
			return;
		} else {
			$("#myaddress_"+proid).text("0");
		}
		var rule = datas.rule;
		if(rule != '') {
			$("#myctime_day_"+proid).text(datas.rule);
		}
		var ctime_show = datas.ctime_show;
		if(ctime_show!=''){
			$("#arrivetype_ctime_show_"+proid).html("下单并支付完成后，预计"+ctime_show+"首次送达！");
			$("#ctime_"+proid).val(ctime_show);
		}else{
			$("#arrivetype_ctime_show_"+proid).html("");
		}
		var isExite = false;
		$.each(date_rule, function(key, val) {
		    var proid_ = val.proid;
			if(proid_ ==  proid) {
				isExite = true;
				date_rule[key] = datas.date;
			}
		});
		if(!isExite && typeof datas.date != 'undefined') {
			date_rule.push(datas.date);
		}
		
		//同城判断
		var issend = $("#transport_"+proid).val();
		var iscity = datas.iscity;
		var shopid = $("#shopid").val();
		if(iscity == '1' && shopid == '' && issend != '1') {
			var iscity_show = "2";//$("#iscity_show_"+proid).text();
			//自提不能同城
			var isziti = $("#gettypezt")[0].checked;
			if((iscity_show == '2' && !isziti) || proid == '-249' || proid == '-12') {//永生可同城
				$("#iscity_type_"+proid).parent("span").show();
			
				var city_rule = datas.city_rule;
				rule_city_start = city_rule.substring(1,city_rule.indexOf("&"));
				rule_city_end = city_rule.substring(city_rule.indexOf("&")+1);
				
				//快递价格
				$("#city_price_"+proid).text(datas.city_price);
			} else {
				$("#iscity_type_"+proid).parent("span").hide();
				$("#iscity_type_"+proid).attr("checked", false);
				$("#iscity_"+proid).val("0");
			}
		} else {
			$("#iscity_type_"+proid).parent("span").hide();
			$("#iscity_type_"+proid).attr("checked", false);
			$("#iscity_"+proid).val("0");
		}
		
		//地址确定，期望到达日期更新判断
		var ctime = $("#ctime_"+proid).val();
		if(isNotNull(ctime)) {
			fun_year_day(proid, '0');
		}
		
		fun_order_total();
	}, "json");
}
//-----------------------鲜花地址判断---------------------------------

function checkString(str){
		 var flag = true;
		 var arr = new Array("#","$","%","^","&","*","|","/","<",">","http","//","\\");
		 for(var i=0;i<arr.length;i++){
		 	if(str.indexOf(arr[i]) >= 0){
		 		alert("您输入的文字中有特殊字符！");
		 		flag = false;
		 		break;
		 	}
		 }
	 return flag;
}


//同上
function fun_up(id) {
	var cart_ids = $("#cart_ids").text();
	var arr = cart_ids.split(",");
	for(var i=0; i<arr.length; i++) {
		var id_ = arr[i];
		if(i > 0 && parseInt(id_) == parseInt(id)) {
			var id_up = arr[i-1];
			$("#signs_"+id).val($("#signs_"+id_up).val());
			$("#bless_"+id).val($("#bless_"+id_up).val());
		}
	}
}

//订单其他信息确认
function other_confirm() {
	$("#pay_submit_btn")[0].disabled = true;
	var ischeck = true;
	
	var cart_ids = $("#cart_ids").text();
	if(cart_ids == '') {
		alert("您的购物车没有产品！");
		ischeck = false;
	}else if(cart_ids.indexOf("4241,")>-1 && cart_ids.split(",").length<3){
		alert("一生一世-嫣红-尊享版-小型方形 不提供单独购买");
		ischeck = false;
	}
	
	//自提
	var waybilltype = $("#waybilltype").val();
	if(waybilltype == '2') {
		if(!fun_shop_mymobile_change()) {
			ischeck = false;
		}
	}
	//重置一下时间，把默认值加回来，dugang增加
	fun_time_init4confrim();
	var arr = cart_ids.split(",");
	for(var i=0; i<arr.length; i++) {
		var id = arr[i];
		if(id != '') {
			$("#ctime_"+id).css("border","solid 1px #b4b4b4");
			$("#signs_"+id).css("border","solid 1px #b4b4b4");
			$("#bless_"+id).css("border","solid 1px #b4b4b4");
			$("#remark_"+id).css("border","solid 1px #b4b4b4");
			
			//鲜花地址判断
			var myaddress = $("#myaddress_"+id).text();
			if(myaddress == '1') {
				var addid = $("#addid_"+id).val();
				fun_address_rosetype(id, addid);
				ischeck = false;
			} 
			
			var myctime = $("#myctime_"+id).text();
			if(myctime == '1') {
				$("#ctime_"+id).css("border","solid 1px red");
				ischeck = false;
			} else {
				if(!fun_address_confirm(id)) {
					ischeck = false;
				}
				if(!fun_ctime_confirm(id)) {
					ischeck = false;
				} 
				//if(!fun_bless_confirm(id)) {
				//	return false;
				//} 
				if(!fun_remark_confirm(id)) {
					ischeck = false;
				}
			}
			
			var isctiy = $("#iscity_"+id).val();
			if(isctiy == '1') {
				if($("#iscity_type_"+id).attr("checked") == false) {
					$("#iscity_"+id).val("0");
				} 
			}
		}
	}
	
	for(var i=0; i<arr.length; i++) {
		var id = arr[i];
		if(id != '') {
			var signs = $("#signs_"+id).val();
			var remark = $("#remark_"+id).val();
			if(!isNotNull(signs)) {
				$("#signs_"+id).val(" ");
			}
			if(!isNotNull(remark)) {
				$("#remark_"+id).val(" ");
			}
		}
	}
	
	//用户信息验证
	var mylove = $("#mylove").val();
	if(isCartRoseonly == '1' && mylove == '') {
		checkUserInfo();
	}
	
	//支付密码验证
	if($("#my_use_card").attr("checked")) {
		var pay_type = $("#pay_password_type").text();
		if(pay_type != "1") {
			var password = $("#pay_password").val();
			if(password == "") {
				$("#span_pay_password").html("请输入您的支付密码！");
			} else {
				alert($("#span_pay_password").html());
			}
			ischeck = false;
		}
	}
	
	if(ischeck){
		$("#pay_submit_btn").hide();
		var div = document.getElementById('pay_submit_div');
		var div1 = document.createElement("div");
		div1.className = "button_submit_div";
		div1.innerHTML = '正在提交订单，请稍后！';
		div.appendChild(div1);
		return true;
	}else{
		$("#pay_submit_btn")[0].disabled = false;
		return false;
	}
}

//代金卷
function show_orderCoupon() {
	document.getElementById('div_coupon').style.display='block';
	var bodyTop = 0;
	if (typeof window.pageYOffset != 'undefined') {
		bodyTop = window.pageYOffset
	} else if (typeof document.compatMode != 'undefined' && document.compatMode != 'BackCompat') {
		bodyTop = document.documentElement.scrollTop
	} else if (typeof document.body != 'undefined') {
		bodyTop = document.body.scrollTop
	}
	var top = 180 + bodyTop;
	$(".bdWrap").css("top",top);
	document.getElementById("bank_hei_div").style.height=document.body.scrollHeight+15+"px";
	$("#coupon_msg").text("");
}

function close_orderCoupon(){
	document.getElementById('div_coupon').style.display='none';
} 

 /**
异步读取用户使用的优惠券
*/
var myCouponPrice = 0;
function searchOrderCoupon(value){
	if(value.length > 0){ 
		var data = {cardnum:value};
		$.post(mybasePath+"/userAddressinfo/myCoupon",data,function(datas){
			//var datas = eval('(' + data + ')');
			var msg = datas.msg; 
			if(msg == '0'){
				$("#coupon_msg").html(datas.error);
			}else{
				var price = datas.price;
				var couponid = datas.id;
				
				//$("#div_coupon").hide();
				$("#couponno").val("");
				$("#coupon_msg").text("");
				$("#mycoupon").text("（优惠券：￥"+price+"）");
				var selectCouponnoObjs = document.getElementsByName('selectCouponno');
				for(var i=0;i<selectCouponnoObjs.length;i++){
					selectCouponnoObjs[i].checked = false;
				}
				$("#coupon_area_select").hide();
				$("#coupon_area_use").show();
				var tempHTML = '&nbsp;&nbsp;已使用优惠券，折合人民币<font color="red">￥'+price+'元</font> <span onclick="javascript:cancelUseCoupon();" style="cursor:pointer;color:#3995ae;">取消使用</span>';
				$("#coupon_area_use").html(tempHTML);
				$("#couponid").val(couponid);
				myCouponPrice = parseFloat(price);
				//有2016母亲节特殊产品
				if(document.getElementById('product_price_3550')){
					$("#product_price_3550").html("￥599");
					var my_total = parseFloat($("#my_total").text());
					my_total+=79;
					$("#my_total").html(my_total);
				}
				
				fun_order_total();
			}
		}, "json");
	}else{
		document.getElementById("coupon_msg").innerHTML = "请输入优惠券号码！";
	}
} 
function onSelectCouponnoClick(index,obj){
	var selectCouponnoObjs = document.getElementsByName('selectCouponno');
	for(var i=0;i<selectCouponnoObjs.length;i++){
		if(i!=index){
			selectCouponnoObjs[i].checked = false;
		}
	}
	if(obj.checked==true){
		$("#couponno").val(obj.value);
		$('#button_btn').click();
	}else{
		$("#couponno").val("");
	}	
}
function cancelUseCoupon(){
	$("#couponid").val("");
	myCouponPrice = 0;
	$("#coupon_area_select").show();
	$("#coupon_area_use").hide();
	$("#coupon_area_use").html('');
	if(document.getElementById('product_price_3550')){
		$("#product_price_3550").html('￥520');
		var my_total = parseFloat($("#my_total").text());
		my_total-=79;
		$("#my_total").html(my_total);
	}
	fun_order_total();
}
/**
用户输入时进行数字相减
*/
function add_font_num(){
	var maxLen = 200;
	var font_num = $("#font_num").html();
	var bless = $.trim($("#bless").val());
	if(bless.length > maxLen){//当用户输入超过200时截取到200
		var str = bless.substring(0,maxLen);
		$("#bless").val(str);
		$("#font_num").html("0");
	}else{
		$("#font_num").html(maxLen-bless.length);
	}
}

//-----------------礼品---------------------
function addProProductsNum(id,num,pronumber) {
	if(parseInt(pronumber) < 1) {
		alert("您选择的礼品已经赠送完了！");
		return;
	}
	var cart_num = $("#cart_num").text();
	var obj = $(".gift");
	var mynum = 0;
	for(var i=0; i<obj.length; i++) {
		mynum += parseInt($(obj[i]).text());
	}
	mynum = parseInt(mynum) + parseInt(num); 
	if(parseInt(mynum) > parseInt(cart_num)){
		alert("您只能选择"+cart_num+"件礼品！");
		return;
	}
	
	var sum = $("#liping_num_"+id).text();
	if(parseInt(sum) >= parseInt(pronumber)){
		alert("您选择的礼品数量已经达到上限！");
		return;
	}
	var num1 = parseInt(sum) + parseInt(num);
	if(num1 < 0) {
		return;
	}
	$("#liping_num_"+id).text(num1);
}

function fun_gift() {
	var obj = $(".gift");
	var gift = "";
	var gift_html = "";
	for(var i=0; i<obj.length; i++) {
		var num = parseInt($(obj[i]).text());
		if(parseInt(num) > 0) {
			var proid = $(obj[i]).attr("alt");
			gift += ""+proid+"#"+num+"@";
			
			var title = $(obj[i]).attr("title");
			var data = title.split("_");
			gift_html += '<tr class="gift_class">' +
							'<td height="60" bgcolor="#f7f8f8" align="center">'+ proid +'</td>' +
							'<td height="60" bgcolor="#f7f8f8" align="center">'+ data[0] +'<font color="red">(礼品)</font></td>' +
							'<td height="60" bgcolor="#f7f8f8" align="center">￥'+ data[1] +'</td>' +
							'<td height="60" bgcolor="#f7f8f8" align="center">'+ num +'</td>' +
							'<td height="60" bgcolor="#f7f8f8" align="center"></td>' +
						'</tr>';
		}
	}
	//alert(gift_html);
	$(".gift_class").remove();
	$("#gift_ids").val(gift);
	$("#gift_list").before(gift_html);
	
	$("#cancel_order").hide();
}

//取消订单弹出层
function cancel_order_info(){
	var bodyTop = 0;
       if (typeof window.pageYOffset != 'undefined') {
           bodyTop = window.pageYOffset
       } else if (typeof document.compatMode != 'undefined' && document.compatMode != 'BackCompat') {
           bodyTop = document.documentElement.scrollTop
       } else if (typeof document.body != 'undefined') {
           bodyTop = document.body.scrollTop
       }
	var top = 180 + bodyTop;
       $(".bdWrap").css("top",top);
	document.getElementById("set_cancel_order").style.height=document.body.scrollHeight+"px";
	
	$("#cancel_order").show();
}

//关闭层
function close_cancel_order(){
	$("#cancel_order").hide();
}	
//-----------------礼品---------------------

//---------------使用购物卡支付---------------
function fun_card() {
	var isShow = true;//如果购买的是购物卡，就不显示余额支付
	var cart_ids = $("#cart_ids").text();
	var arr = cart_ids.split(",");
	for(var i=0; i<arr.length; i++) {
		var proid = arr[i];
		if(proid != '') {
			var card_id = $("#card_id").val();
			if(proid == card_id) {
				isShow = false;
				
				$("#a_coupon").hide();
				//不显示在线与自提
				//$("#order_buy_type").hide();
				break;
			}
		}
	}
	
	if(isShow) {
		var cardBalance = $("#cardBalance").text();
		if(parseFloat(cardBalance) > 0) {
			cancel_card_info();
		}
	}
}
//取消订单弹出层
function cancel_card_info(){
	var bodyTop = 0;
       if (typeof window.pageYOffset != 'undefined') {
           bodyTop = window.pageYOffset
       } else if (typeof document.compatMode != 'undefined' && document.compatMode != 'BackCompat') {
           bodyTop = document.documentElement.scrollTop
       } else if (typeof document.body != 'undefined') {
           bodyTop = document.body.scrollTop
       }
	var top = 180 + bodyTop;
       $(".bdWrap").css("top",top);
	document.getElementById("set_cancel_card").style.height=document.body.scrollHeight+"px";
	
	$("#cancel_card").show();
}

//关闭层
function close_cancel_card(type){
	$("#cancel_card").hide();
	
	//判断是否使用余额支付,如果选中，roseonly产品的“收货人”可选择
	if(type == '1') {
		//使用余额支付
		$("#isbalance").val("1");
		
		var cart_ids = $("#cart_ids").text();
		var arr = cart_ids.split(",");
		for(var i=0; i<arr.length; i++) {
			var proid = arr[i];
			if(proid != '') {
				if($("#addname_select_"+proid).length > 0) {//如果存在，说明是roseonly产品
					$("#addname_span_"+proid).hide();
					$("#addname_select_"+proid).show();
				}
			}
		}
		
		$("#my_use_card").attr("checked", true);
		$("#pay_password_span").show();
	} else {
		$("#isbalance").val("0");
		
		var cart_ids = $("#cart_ids").text();
		var arr = cart_ids.split(",");
		for(var i=0; i<arr.length; i++) {
			var proid = arr[i];
			if(proid != '') {
				if($("#addname_select_"+proid).length > 0) {//如果存在，说明是roseonly产品
					$("#addname_span_"+proid).show();
					$("#addname_select_"+proid).hide();
				}
			}
		}
		
		$("#my_use_card").attr("checked", false);
	}
	fun_order_total();
}

function fun_select_mylove(proid) {
	var mylove = $("#select_address_name_"+proid).val();
	$("#addname_"+proid).val(mylove);
}

function fun_use_card(obj) {
	if(obj.checked) {
		close_cancel_card('1');
		
		$("#pay_password_span").show();
	} else {
		close_cancel_card('0');
		
		$("#pay_password_span").hide();
	}
}
//---------------使用购物卡支付---------------

function gbcount(id, max) { 
	//var max; 
	//max = 500; 
	if ($("#"+id).val().length > parseInt(max)) { 
		var con = $("#"+id).val().substring(0,parseInt(max)); 
		$("#"+id).val(con);
		alert("祝福语不能超过"+max+"个字!"); 
	} else { 
		var remain = max - $("#"+id).val().length;
		$("#span_"+id+"1").text(remain); 
	} 
} 



//--------------------隔天到达------------------------
function fun_ctime_day_check(day, proid) {
	var issend = $("#myctime_day_"+proid).text();
	
	var myadd = $("#myaddress_"+proid).text();
	if(myadd == '1') {
		alert("请确认您的地址信息！");
		return;
	}
	
	//实体店自提
	var waybilltype = $("#waybilltype").val();
	if(waybilltype == '2') {
		fun_ctime_show(proid, "0");
		return;
	}

	if(issend == '') {
		fun_ctime_show(proid,day);
	} else {
		fun_ctime_show(proid,issend);
	}
}

function fun_ctime_show(proid,day) {
	var disabledate = [];
	var datetwo = [];
	$.each(date_rule, function(key, val) {
	    var proid_ = val.proid;
		
		if(proid_ == proid) {
			disabledate = val.disabledate;
			datetwo =  val.datetwo;
		}
	});
	
	//同城订单
	var iscity = $("#iscity_"+proid).val();
	if(iscity == '1') {
		//WdatePicker({minDate:rule_city_start,maxDate:rule_city_end,disabledDates:disabledate});
		WdatePicker({minDate:rule_city_start,maxDate:rule_city_end});
		return;
	}
	
	
	//自提
	//console.log('ziti');
	var get_type_fot_timeshou = $('input[name="gettype"]:checked ').val();
		//console.log(get_type_fot_timeshou);
	
	if(get_type_fot_timeshou=='1'){
		WdatePicker({minDate:'%y-%M-#{%d}'});
		return;
	}
	
	if(day == '0') {
		//WdatePicker({minDate:'%y-%M-%d'});
		if(datetwo.length == 2) {
			if(datetwo[0] == '0000-00-00') {
				//WdatePicker({minDate:datetwo[0],maxDate:datetwo[1],disabledDates:[]});
				alert("该产品已经售罄！");
			} else {
				if(disabledate.length > 0) {
					WdatePicker({minDate:datetwo[0],maxDate:datetwo[1],disabledDates:disabledate});
				} else {
					WdatePicker({minDate:datetwo[0],maxDate:datetwo[1]});
				}
			}
		} else {
			WdatePicker({minDate:'%y-%M-%d'});
		}
	}
	if(day != '0') {
		if(datetwo.length == 2) {
			if(datetwo[0] == '0000-00-00') {
				//WdatePicker({minDate:datetwo[0],maxDate:datetwo[1],disabledDates:[]});
				alert("该产品已经售罄！");
			} else {
				if(disabledate.length > 0) {
					WdatePicker({minDate:datetwo[0],maxDate:datetwo[1],disabledDates:disabledate});
				} else {
					WdatePicker({minDate:datetwo[0],maxDate:datetwo[1]});
				}
			}
		} else {
			if(disabledate.length > 0) {
				WdatePicker({minDate:'%y-%M-#{%d+'+day+'}',disabledDates:disabledate});
			} else {
				WdatePicker({minDate:'%y-%M-#{%d+'+day+'}'});
			}
		}
	}
}
//--------------------隔天到达------------------------

//2014.4.16
//选择在线与自提，type[0：在线，1：自提] qiehuan[点击收货地址切换为快递运输]
function fun_select_ordertype(type,qiehuan) {
	date_rule = [];
	fun_clearAddrs();
	if(type == '0') {	
		//实体店显示收货人
		$(".wg_sname").show();
		
		$(".ctime_ziti").text("送达日期");		
		$("#address_mylist_2").hide();
		$("#shop_address_show").hide();		
		$(".commodity-list-select").show();		
		$("#waybilltype").val("");
		
		//var addid = $("#address_select_id").text();
		//if(addid != '' && qiehuan != 1) {
		//	fun_showAddrs(addid, '');
		//}
		//切换为快递运输 收货地址切换为用户收货地址
		var _aid = $("input[name='address_id']:checked").attr("id");
		if(_aid && qiehuan != 1){
			var _id = _aid.replace("address_id_","");
			fun_showAddrs(_id, '');
		}else if(!_aid && $("#gettype")[0]){
			fun_showAddr();
		}
		
		click_paytype('0', '922');
		
		
		//实体店id初始化
		$("#shopid").val($("#card_shop_id").text());
		$("#adress_reg_mobile2").val("");
		fun_address_shop_mymobile();
		$("#shopbuymobile").val("");
		
		$("#adress_reg_mobile2").css("border","solid 1px #83847E");
		$("#span_adress_reg_mobile2").text("");
		
		if($("#txt_onlyziti").val() && $("#txt_onlyziti").val() == "3"){
			$(".iscity_show").hide();
		}else{
			$(".iscity_show").show();
		}
		
	} else {		
		//实体店隐藏收货人
		$(".wg_sname").hide();
		//隐藏添加收货地址
		$("#consignee_addr").hide();
		
		$(".ctime_ziti").text("自提日期");		
		$("#address_mylist_2").show();
		$("#shop_address_show").show();		
		$(".commodity-list-select").hide();		
		$("#waybilltype").val("2");
		
		//实体店id初始化
		var shop_addressid = $("#address_select_shop_id").text();
		var shopid = $("#shop_address_"+shop_addressid).text();
		$("#shopid").val(shopid);
		
		var addid = $("#address_select_shop_id").text();
		if(addid != '') {
			$("#addid").val(addid);
			$("#addressid").val(addid);
			$("#address_select_id").text(addid);
			$("#shopid").val(shopid);
			$("#address_id_"+addid)[0].checked = true;
			fun_select_add(addid);
		}
		
		click_paytype('2', '922');
		
		//自提，取消同城
		var cart_ids = $("#cart_ids").text();
		var arr = cart_ids.split(",");
		for(var i=0; i<arr.length; i++) {
			var proid = arr[i];
			if(proid != '') {
				$("#iscity_type_"+proid).parent("span").hide();
				$("#iscity_type_"+proid).attr("checked", false);
				$("#iscity_"+proid).val("0");
			}
		}
		$(".iscity_show").hide();
	}
	fun_order_total();
}

function fun_address_shop_mymobile() {
	$(".address_shop_mymobile").text($("#adress_reg_mobile2").val());
	$("#shopbuymobile").val($("#adress_reg_mobile2").val());
}

function fun_shop_mymobile_change() {
	$("#adress_reg_mobile2").css("border","solid 1px #83847E");
	$("#span_adress_reg_mobile2").text("");
	fun_address_shop_mymobile();
	var adress_reg_mobile2 = $("#adress_reg_mobile2").val();
	if(!isNotNull(adress_reg_mobile2)) {
		$("#span_adress_reg_mobile2").text("请填写收礼人的手机号！");
		$("#adress_reg_mobile2").css("border","solid 1px red").focus();
		return false;
	} 
	if(!isMobile(adress_reg_mobile2)) {
		$("#span_adress_reg_mobile2").text("您填写的收礼人的手机号格式不正确！");
		$("#adress_reg_mobile2").css("border","solid 1px red").focus();
		return false;
	}
	
	return true;
}

function fun_select_iscity(proid) {
	$("#ctime_"+proid).val("");
	if($("#iscity_type_"+proid).attr("checked") == true) {
		$("#iscity_"+proid).val("1");
	} else {
		$("#iscity_"+proid).val("0");
	}
	
	fun_order_total();
	
	//时间校验
	fun_year_day(proid, '0');
}

//myCouponPrice：优惠劵价格
function fun_order_total() {
	var my_total = parseFloat($("#my_total").text());
	var my_total_text = "￥" + my_total;// + "-" + "(余额)￥" + total + "=￥0"
	
	//同城
	var proid_addid = "#";
	var total_city_price = 0;
	var cart_ids = $("#cart_ids").text();
	var arr = cart_ids.split(",");
	var _zdyf = 0;
	for(var i=0; i<arr.length; i++) {
		var proid = arr[i];
		if(proid != '') {
			//指定商品运费
			var _freightprice = Number($("#city_price_"+proid).attr("data-freight"));
			var addid = $.trim($("#addid_"+proid).val());			
			if($("#iscity_type_"+proid).attr("checked") == true) {
				var city_price = parseFloat($("#city_price_"+proid).text());				
				var myday = $("#ctime_"+proid).val();
				var key = addid+"_"+myday;
				if(proid_addid.indexOf("#"+key+"#") == -1) {
					total_city_price += city_price;
					if(city_price<1){
						_zdyf += _freightprice;
						total_city_price += _freightprice;
					}
					proid_addid += key + "#";
				}
			}else{
				var _provinceid = $("#address_id_"+addid).attr("data-provinceid");
				if(_provinceid == "33" || _provinceid == "34"){
					_zdyf += 50;
					total_city_price += 50;	
				}else{
					_zdyf += _freightprice;
					total_city_price += _freightprice;						
				}							
			} 
		}
	}
	if(total_city_price > 0) {		
		my_total += total_city_price;//指定商品加运输费
		my_total_text += "+(快递)￥" + total_city_price;
		
		$("#city_kuaidi_price").html("￥"+total_city_price+" <span style='color:#d80000;'>(同城运费）</span>");
		$("#span_city_kuaidi_price").text(total_city_price);
	} else {
		//指定商品加运输费		
		if(_zdyf>0){
			my_total += _zdyf;
			my_total_text += "+(快递)￥" + _zdyf;
		}
		$("#city_kuaidi_price").html("￥0.00 <span style='color:#d80000;'><!--(免运费）--></span>");
		$("#span_city_kuaidi_price").text("0.00");
	}
	
	//使用优惠劵
	var couponid = $("#couponid").val();
	if(couponid != '' && isNumber(couponid)) {
		my_total -= myCouponPrice;
		my_total_text += "-(优惠劵)￥" + myCouponPrice;
	}
	
	//使用余额支付
	var myUsecardBalance = 0;
	var isbalance = $("#isbalance").val();
	if(isbalance == '1') {
		if(my_total > 0) {
			var mycardBalance = parseFloat($("#mycardBalance").val());
			
			if(mycardBalance >= my_total) {
				my_total_text += "-(卡余额)￥" + my_total;
				myUsecardBalance = my_total;
			} else {
				my_total_text += "-(卡余额)￥" + mycardBalance;
				myUsecardBalance = mycardBalance;
			}
			my_total -= mycardBalance;
		}
	}
	if(myUsecardBalance > 0) {
		$("#myUsecardBalance").text("使用余额：￥"+myUsecardBalance);
	} else {
		$("#myUsecardBalance").text("");
	}
	
	if(parseFloat($("#my_total").text()) == my_total && my_total_text=="￥" + my_total) {
		$("#totalPrices").text(my_total_text);
		return;
	}
	
	if(my_total > 0) {
		my_total_text += "=￥"+my_total;
	} else {
		my_total_text += "=￥0";
	}
	$("#totalPrices").text(my_total_text);
}

function fun_save_payget() {
	var gettype = $('input:radio[name="gettype"]:checked').val();
	
	if(gettype == '0') {
		$("#gettype_show").text("快递运输");
		
		$("#address_mylist_2").hide();
		
		$("#adress_reg_mobile2").css("border","solid 1px #83847E");
		$("#span_adress_reg_mobile2").text("");
	} else {
		$("#gettype_show").text("实体店自提");
		
		
		var id = $('input:radio[name="address_shop_id"]:checked').val();
		var address = $("#product_address_"+id).html();
		var myarr = address.split("<i></i>");
		if(myarr.length < 2) {
			myarr = address.split("<I></I>");
		}
		$("#address_mylist_2").show();
			
		$("#city_kuaidi_price").html(myarr[1]);
		
		if(!fun_shop_mymobile_change()) {
			return;
		}
	}
	
	$('#bc').show();
	$('#ab').hide();
	$('#span_ziti').hide();
	
}

function fun_blanace() {
	var password = $("#pay_password").val();
	var dataval = {
		password:password
	};
	$.post(mybasePath+"/userAddressinfo/checkBalancePay",dataval,function(data){
		var status = data.status;
		if(status == '1') {
			$("#pay_password_type").text("1");
			$("#span_pay_password").html("");
			$("#pay_password").css("border","solid 1px #b4b4b4");
			$("#pay_password").css("border","solid 0px #83847E");
		}
		if(status == '0') {
			$("#pay_password_type").text("0");
			$("#span_pay_password").html(data.error);
			$("#pay_password").css("border","solid 1px red");
		}
	},"json");
}