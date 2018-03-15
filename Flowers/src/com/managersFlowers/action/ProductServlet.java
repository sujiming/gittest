package com.managersFlowers.action;
/**
 * 后台商品首次加载servlet层
 * @author 阿飞
 */
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Message;
import com.flowers.model.Product;
import com.google.gson.Gson;
import com.managersFlowers.service.ProductService;
@WebServlet("/proservlet")
public class ProductServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Message分装信息
		Message message = null;
		String result = null;
		Gson gson = new Gson();
		//实例化后台首次加载的service层
		ProductService ps = new ProductService();
		try {
			List<Product> products = ps.productS();
			result = gson.toJson(products);
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
