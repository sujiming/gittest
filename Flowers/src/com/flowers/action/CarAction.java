package com.flowers.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Car;
import com.flowers.service.CarService;
@WebServlet("/carservlet")
public class CarAction extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberID=request.getParameter("memberID");
		//System.out.println(memberID);
		try{
			CarService car=new CarService();
			ArrayList<Car> list=car.getDao(memberID);
			
			
			request.setAttribute("car",list);
			request.getRequestDispatcher("/jsp/car.jsp").forward(request, response);
		}catch(Exception e){
			
		}
	}
}
