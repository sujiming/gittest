package com.flowers.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Member;
import com.flowers.service.MemberInfoService;
import com.google.gson.Gson;
@WebServlet("/minfoservlet")
public class MemberInfoServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取用户id
		String memberid = request.getParameter("memberid");
		MemberInfoService mis = new MemberInfoService();
		Gson gson = new Gson();
		String result;
		try {
			Member member = mis.memberInfoS(memberid);
			result=gson.toJson(member);
			System.out.println(result);
			request.setAttribute("result", result);
			request.getRequestDispatcher("/jsp/person_information.jsp").forward(request, response);
			//response.getWriter().print(result);
			//response.getWriter().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
