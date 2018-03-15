package com.managersFlowers.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Message;
import com.flowers.model.Orders;
import com.google.gson.Gson;
import com.managersFlowers.service.OrderAddService;

/**
 * 后台订单添加servlet层
 * @author 阿飞
 *
 */
@WebServlet("/orderaddServlet")
public class OrderAddServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取添加框数据
		String ordersid = request.getParameter("ordersID");
		String productid = request.getParameter("productID");
		String memberid = request.getParameter("memberID");
		String debitname = request.getParameter("debitName");
		String debitphone = request.getParameter("debitPhone");
		String debitaddress = request.getParameter("debitAddress");
		String consigneename = request.getParameter("consigneeName");
		String consigneephone = request.getParameter("consigneePhone");
		String consigneeaddress = request.getParameter("consigneeAddress");
		String venrity = request.getParameter("venrity");
		String ordermoney = request.getParameter("orderMoney");
		String adminid = request.getParameter("adminID");
		String leavework = request.getParameter("leaveWord");
		//封装到Orders
		Orders order=new Orders();
		order.setOrdersID(ordersid);
		order.setProductID(productid);
		order.setMemberID(memberid);
		order.setDebitName(debitname);
		order.setDebitPhone(debitphone);
		order.setDebitAddress(debitaddress);
		order.setConsigneeName(consigneename);
		order.setConsigneePhone(consigneephone);
		order.setConsigneeAddress(consigneeaddress);
		order.setVenrity(venrity);
		order.setOrderMoney(ordermoney);
		order.setAdminID(adminid);
		order.setLeaveWord(leavework);
		//调用服务层
		OrderAddService oas=new OrderAddService();
		Gson gson = new Gson(); 
		//实例化一个Message封装增加成功或者失败信息
		Message message = null;
		String result;
		try {
			int row = oas.ordersAddS(order);
			if(row>0){
				message = new Message("200","添加成功");
			}else{
				message = new Message("250","添加失败");
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
