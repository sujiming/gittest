package com.flowers.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flowers.model.Message;
import com.google.gson.Gson;
import com.mysql.jdbc.ReplicationMySQLConnection;

@WebServlet("/exit")
public class Exit extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println(77777);
		HttpSession session=request.getSession(false);
		session.removeAttribute("member");
		Message mes=new Message("200","7897");
		Gson gson=new Gson();
		String result=gson.toJson(mes);
		response.getWriter().print(result);
		response.getWriter().close();
		
		
		//request.getRequestDispatcher("/jsp/member_login.jsp").forward(request, response);
		
	}
}
