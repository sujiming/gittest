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
import com.flowers.model.Productorder;
import com.flowers.service.OrderpageService;


@WebServlet("/buyf")
public class BuyAction extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productName=request.getParameter("productName");
		String productNum=request.getParameter("productNum");
		String productPrice=request.getParameter("ProductPrice");
		String productPicture=request.getParameter("productPicture");
		
		try{
			Productorder pro=new Productorder();
			pro.setProductName(productName);
			pro.setProductNum(productNum);
			pro.setProductPicture(productPicture);
			pro.setProductPrice(productPrice);
			ArrayList<Productorder> list=new ArrayList<Productorder>();
			list.add(pro);
			if(list.size()>0){
				request.setAttribute("prod", list);
				//session.setAttribute("prod", list);
				request.getRequestDispatcher("/jsp/place_order.jsp").forward(request, response);
			}
		}catch(Exception e){
			request.getRequestDispatcher("/jsp/error.jsp").forward(request, response);
		}
	}
}
