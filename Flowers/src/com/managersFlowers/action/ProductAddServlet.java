package com.managersFlowers.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Message;
import com.flowers.model.Product;
import com.google.gson.Gson;
import com.managersFlowers.service.ProductAddService;

/**
 * 后台商品增加的servlet层
 * @author 阿飞
 *
 */
@WebServlet("/proaddservlet")
public class ProductAddServlet extends  HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取增加框数据
		String productName = request.getParameter("productName");
		String caName = request.getParameter("caName");
		String picture = request.getParameter("picture");
		String talkTo = request.getParameter("talkTo");
		String originalPrice = request.getParameter("originalPrice");
		String festival = request.getParameter("festival");
		String recmmend = request.getParameter("recmmend");
		String describe = request.getParameter("miaoshu");
		//封装到Product
		Product product = new Product();
		product.setProductName(productName);
		product.setCaName(caName);
		product.setPicture(picture);
		product.setTalkTo(talkTo);
		product.setOriginalPrice(originalPrice);
		product.setFestival(festival);
		product.setRecmmend(recmmend);
		product.setMiaoshu(describe);
		//调用服务层
		ProductAddService pas = new ProductAddService();
		Gson gson = new Gson(); 
		//实例化一个Message封装增加成功或者失败信息
		Message message = null;
		String result;
		try {
			int row = pas.productAddS(product);
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
