package com.managersFlowers.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Message;
import com.flowers.model.Orders;
import com.flowers.model.Product;
import com.google.gson.Gson;
import com.managersFlowers.service.OrderEditService;
import com.managersFlowers.service.ProductEditService;

/**
 * 后台订单信息修改servlet
 * @author 月
 *
 */
@WebServlet("/ordeditservlet")
public class OrderEditServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取增加框数据
		String iD = request.getParameter("ID");
		String ordersID = request.getParameter("ordersID");
		String productID = request.getParameter("productID");
		String memberID = request.getParameter("memberID");
		String debitName = request.getParameter("debitName");
		String debitPhone = request.getParameter("debitPhone");
		String debitAddress = request.getParameter("debitAddress");
		String consigneeName = request.getParameter("consigneeName");
		String consigneePhone = request.getParameter("consigneePhone");
		String consigneeAddress = request.getParameter("consigneeAddress");
		String venrity = request.getParameter("venrity");
		String orderMoney = request.getParameter("orderMoney");
		String adminID = request.getParameter("adminID");
		String leaveWord = request.getParameter("leaveWord");
		//封装到Orders
		Orders order=new Orders(iD, ordersID, productID, memberID, debitName, debitPhone, debitAddress, consigneeName, consigneePhone,
				consigneeAddress, venrity, orderMoney, adminID, leaveWord);
		//调用服务层
		OrderEditService oes = new OrderEditService();
		Gson gson = new Gson(); 
		Message message = null;
		String result;
		//捕获修改失败异常
		try {
			int row = oes.orderEditS(order);
			if(row>0){
				message = new Message("200","修改成功");
			}else{
				message = new Message("250","修改失败");
			}
		} catch (Exception e) {
			message = new Message("230","未知错误");
		}finally{
			//将message转成json
			result=gson.toJson(message);
			//响应到前台
			response.getWriter().print(result);
			response.getWriter().close();
		}
		
	}

}
