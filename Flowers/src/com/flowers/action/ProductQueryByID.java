package com.flowers.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Product;
import com.flowers.service.ProductQueryByIDService;


/**
 * 前台商品按id精确查询
 * @author 月月
 *
 */
@WebServlet("/proquidservlet")
public class ProductQueryByID extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//获取信息
		String productID = request.getParameter("productID");
		//调用业务类方法
		ProductQueryByIDService es=new ProductQueryByIDService();
		try {
			List<Product> list=es.queryByIDS(productID);
			request.setAttribute("data", list);
			//请求转发
			request.getRequestDispatcher("/jsp/detail.jsp").forward(request, response);
			
		} catch (Exception e) {
			request.getRequestDispatcher("/jsp/error.jsp").forward(request, response); 
		}
	}
}
