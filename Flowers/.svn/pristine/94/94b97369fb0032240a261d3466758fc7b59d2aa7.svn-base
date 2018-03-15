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
import com.managersFlowers.service.ProductEditService;

/**
 * 后台商品信息修改servlet
 * @author 阿飞
 *
 */
@WebServlet("/proeditservlet")
public class ProductEditServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取增加框数据
				String productID = request.getParameter("productID");
				String productName = request.getParameter("productName");
				String caName = request.getParameter("caName");
				String picture = request.getParameter("picture");
				String talkTo = request.getParameter("talkTo");
				String originalPrice = request.getParameter("originalPrice");
				String festival = request.getParameter("festival");
				String recmmend = request.getParameter("recmmend");
				String describe = request.getParameter("miaoshu");
				//封装到Product
				Product product = new Product(productID,productName,caName,picture,talkTo,originalPrice,festival,recmmend,describe);
				//调用服务层
				ProductEditService pes = new ProductEditService();
				Gson gson = new Gson(); 
				Message message = null;
				String result;
				//捕获修改失败异常
				try {
					int row = pes.productEditS(product);
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
