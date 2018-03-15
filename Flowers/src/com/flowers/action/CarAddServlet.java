package com.flowers.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Car;
import com.flowers.model.Message;
import com.flowers.service.CarAddService;
import com.google.gson.Gson;

/**
 * 加入购物车servlet
 * @author 阿飞
 *
 */
@WebServlet("/caraddservlet")
public class CarAddServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取到商品id跟用户id
		String memberid = request.getParameter("memberid");
		String productid = request.getParameter("productid");
		String num = request.getParameter("num");
		Car car = new Car();
		CarAddService cas = new CarAddService();
		car.setProductID(productid);
		car.setMemberID(memberid);
		car.setNum(num);
		Gson gson = new Gson(); 
		//封装message
		Message message = null;
		String result;
		try {
			cas.carAddS(car);
			message = new Message("200","加入购物车成功");
		} catch (Exception e) {
			message = new Message("250","加入购物车失败");
		}finally{
			result = gson.toJson(message);
			response.getWriter().println(result);
			response.getWriter().close();
		}
	}
}
