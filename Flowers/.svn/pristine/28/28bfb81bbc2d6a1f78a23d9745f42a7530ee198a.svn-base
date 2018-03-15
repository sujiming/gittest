package com.flowers.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Product;
import com.flowers.service.ProductShowService;
@WebServlet("/proshowservlet")
public class ProductShowServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取输入框信息
				String caName = request.getParameter("caName");
						//实例化后台商品按名模糊查询的service层
				ProductShowService pss = new ProductShowService();
						try {
							List<Product> products = pss.productShowS(caName);
							request.setAttribute("product", products);
							System.out.println(products.size());
							request.getRequestDispatcher("/jsp/commodity_ground.jsp").forward(request, response);
						} catch (Exception e) {
							request.getRequestDispatcher("/jsp/error.jsp").forward(request, response);
						}
	}
}
