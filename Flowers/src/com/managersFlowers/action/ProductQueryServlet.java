package com.managersFlowers.action;

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
import com.managersFlowers.service.ProductQureyService;

/**
 * 后台商品按名模糊查询
 * @author 阿飞
 *
 */
@WebServlet("/proqueryservlet")
public class ProductQueryServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取输入框信息
		String productName = request.getParameter("productName");
		//Message分装信息
				Message message = null;
				String result = null;
				Gson gson = new Gson();
				//实例化后台商品按名模糊查询的service层
				ProductQureyService pqs = new ProductQureyService();
				try {
					List<Product> products = pqs.productQueryS(productName);
					
					if(products.size()>0){
						
						//查询到商品
						result = gson.toJson(products);
					}else{
						message = new Message("200","没有找到商品");
						result = gson.toJson(message);
					}
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
