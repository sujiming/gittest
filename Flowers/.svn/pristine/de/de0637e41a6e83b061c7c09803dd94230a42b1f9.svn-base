package com.flowers.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Message;
import com.flowers.model.Product;
import com.flowers.service.ProductSelectByPriceService;
import com.google.gson.Gson;
@WebServlet("/procductSelectByPrice")
public class ProductSelectByPriceAction extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String min=request.getParameter("min");
		String max=request.getParameter("max");
		int mini=Integer.valueOf(min);
		int maxi=Integer.valueOf(max);
		//System.out.println(mini);
		Message mes=null;
		Gson gson=new Gson();
		try{
			ProductSelectByPriceService pbs=new ProductSelectByPriceService();
			ArrayList<Product> list=pbs.getProduct(mini,maxi);
			
			if(list.size()>0){
				request.setAttribute("products2", list);
				request.getRequestDispatcher("/jsp/productmain.jsp").forward(request, response);
				System.out.println(list.get(10).getPicture());
				//String data="ee";
				//mes=new Message("200","chenggong");
				//String result=gson.toJson(mes);
				//response.getWriter().print(result);
				//response.getWriter().close();
			}
		}catch(Exception e){
			request.getRequestDispatcher("/jsp/error.jsp").forward(request, response);
		}
	}
}
