package com.flowers.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flowers.service.OrderpageService;


@WebServlet("/getproductmes")
public class OrderpageAction extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String orderid=request.getParameter("ordersid");
		System.out.println(orderid);
		try{
			OrderpageService os=new OrderpageService();
			List list=os.getservice(orderid);
			//HttpSession session=request.getSession();
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
