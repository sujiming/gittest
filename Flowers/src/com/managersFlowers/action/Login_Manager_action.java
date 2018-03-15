package com.managersFlowers.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.managersFlowers.model.Admins;
import com.managersFlowers.service.Login_Manager_service;
@WebServlet("/AdminLoginServlet")
public class Login_Manager_action extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("name");
		String password=request.getParameter("password");
		Login_Manager_service lms=new Login_Manager_service();
		//System.out.println(id);
		try{
			Admins admin=lms.getdao(id,password);
			if(admin!=null){
				 HttpSession session=request.getSession();
				 //创建session 未登录的跳转到登录界面
				 session.setAttribute("login", admin);
				//账号密码正确跳转管理页面
				 response.sendRedirect("/Flowers/jsp/AdimLogin.jsp");
				//request.getRequestDispatcher("/index.html").forward(request, response);  
			}else{
				request.setAttribute("AdminLogin", "账号或密码错误");
				//账号密码错误回到登录页面
				response.sendRedirect("/Flowers/jsp/login.jsp");
				//request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);  
				
			}
		}catch(Exception e){
			//出现异常跳转错误页面
			request.getRequestDispatcher("/jsp/error_admin.jsp").forward(request, response);  

		}
	}
}
