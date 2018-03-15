#figure花店商城
***
>这是在学校期间的团队小组做的一个花店商城的项目。
###**简介**
><br/>这个花店商城可以用来进行花店商品的交易，该商城主要运用了JSP+servlet的架构使用传统的JDBC进行数据库增删改查的操作，该商城遵循[MVC](https://baike.baidu.com/item/MVC%E6%A1%86%E6%9E%B6/9241230?fr=aladdin&fromid=85990&fromtitle=MVC/)模式，实现了一些具体且实用的功能。

###**功能介绍**
* 注册	
>具体展示
>>前端页面展示



![前端页面](//img-blog.csdn.net/20180315131509541?watermark/2/text/Ly9ibG9nLmNzZG4ubmV0L21pbmdqaXN1/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

>>							
		<input type="username" class="form-control" name="name" id="exampleInputname" placeholder="请输入用户名">
		<span id="spanname" class="spanzi"></span>
		<input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="请输入密码(6-16位)"></br >
		<span id="spanpassword1" class="spanzi"></span>
		<input type="password" class="form-control" id="exampleInputPassword2" placeholder="确认密码"></br >
		<span id="spanpassword" class="spanzi"></span>
		<input type="telephone" name="telephone"class="form-control" value="" id="exampleInputTelphone" placeholder="请输入手机号"></br >
		<input class="yanzheng" style="top: 255px;margin-left: 235px;" type="button" onclick="hua()" value="发送验证码">
		<span id="spanmobile" class="spanzi"></span>
		<input type="text" class="form-control" id="yanzheng" placeholder="手机验证码"></br >
						
***
* 登录
>具体展示
>>登录页面展示


![登录页面展示](//img-blog.csdn.net/20180315131648190?watermark/2/text/Ly9ibG9nLmNzZG4ubmV0L21pbmdqaXN1/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

>>							
		<div class="form-group">
		<p style="font-size: 25px;" >账号登录</p>
	  	</div>
		<p style="font-size: 15px;float: right; margin-top:-15px ;margin-right: 35px;">没有账户?&nbsp;|&nbsp;<a href="/Flowers/jsp/member_register.jsp" style="text-decoration: none; color: red;" >去注册</a></p>
	  	<div class="form-group">
		<input type="username"  name="name" class="form-control_login" id="exampleInputname" placeholder="请输入用户名或者手机号">
	  	</div>
		<div class="form-group">
		<input type="password" name="password"class="form-control_login" id="exampleInputPassword1" placeholder="请输入密码">
		</div>
						
***

<form>
<table>
	<tr>
		<td>
			nihao
		</td>
		<td>
			nihao
		</td>
	</tr>
	<tr>
		<td>
			nihao
		</td>
		<td>
			nihao
		</td>
	</tr>
</table>
</form>

***
* 浏览商品
***
* 购物车
***
* 生成订单
***
* 订单结算
***
* 订单支付
***
* 查看订单
***
* 个人信息管理
