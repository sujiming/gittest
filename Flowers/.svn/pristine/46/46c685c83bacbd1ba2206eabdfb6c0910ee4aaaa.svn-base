package com.managersFlowers.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Message;
import com.flowers.model.Orders;
import com.google.gson.Gson;
import com.managersFlowers.service.OrderService;

/**
 *  后台订单首次加载servlet层
 * @author 阿飞
 *
 */
@WebServlet("/ordservlet")
public class OrderServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OrderService os = new OrderService();
		//Message分装信息
		Message message = null;
		String result = null;
		Gson gson = new Gson();
		//捕获异常
		try {
			//调用服务层
			List<Orders> orderss = os.orderS();
			result = gson.toJson(orderss);
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
