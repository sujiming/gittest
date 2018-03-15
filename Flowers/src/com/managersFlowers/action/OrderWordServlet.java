package com.managersFlowers.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Message;
import com.google.gson.Gson;
import com.managersFlowers.model.OrdersConnet;
import com.managersFlowers.service.OrderConnectService;
import com.managersFlowers.service.OrderRemoveService;

/**
 *  后台订单首次加载servlet层
 * @author yue
 *
 */
@WebServlet("/ordwordservlet")
public class OrderWordServlet  extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取要查询订单留言的ID
		String ID = request.getParameter("ID");
		//封装一个message结果返回
		Message message = null;
		OrderConnectService ocs = new OrderConnectService();		
		String result = null;
		Gson gson = new Gson();							
		//捕获异常
		try {
			//调用服务层
			String word = ocs.orderWordS(ID);
			System.out.println(word);
			message = new Message(word,word);
			result = gson.toJson(message);
		} catch (Exception e) {
			message = new Message("250","未知错误");
			result = gson.toJson(message);
		}finally{
			//响应前台
			response.getWriter().print(result);
			response.getWriter().close();
		}
	}
}
