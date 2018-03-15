package com.flowers.action;
/**
 * 用户注册手机号码验证servlet层
 * @author 阿飞
 */
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.flowers.model.Message;
import com.flowers.service.MemberRegisterService;
import com.google.gson.Gson;
@WebServlet("/redtelservlet")
public class MemberRegisterTelServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取注册框的电话号码
		String name_tel = request.getParameter("telephone");
		//实例化注册验证的服务层
		System.out.println(name_tel);
		MemberRegisterService mrs = new MemberRegisterService();
		//实例化Message
		Message message = null;
		Gson gson = new Gson(); 
		String result;
		//捕获异常
		try {
			//调用服务层
			boolean bool = mrs.memberRqueryByNameS(name_tel);
			if(!bool){
				message = new Message("350","号码已存在");
			}else{
				message = new Message("300","号码可以使用");
			}
		} catch (Exception e) {
				message = new Message("330","未知错误");
		}finally{
			//将message转成json
			
			result=gson.toJson(message);
			//响应到前台
			response.getWriter().print(result);
			response.getWriter().close();
		}
	}
}
