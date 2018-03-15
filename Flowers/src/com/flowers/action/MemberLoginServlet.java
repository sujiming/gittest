package com.flowers.action;
/**
 * 用户登录servlet层
 * @author 阿飞
 * 使用技术：jsp
 */
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flowers.model.Member;
import com.flowers.service.MemberLoginService;
import com.managersFlowers.filter.Session;
@WebServlet("/logservlet")
public class MemberLoginServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取登录框的信息
		String member_name = request.getParameter("name");
		String member_password = request.getParameter("password");
		//调用服务层
		MemberLoginService bls = new MemberLoginService();
		HttpSession session=request.getSession();
		//捕获登录异常
		try {
		Member member = bls.loginMemberS(member_name, member_password);
			if(member!=null){
				
				session.setAttribute("member",member);
				//用户密码正确
				response.sendRedirect("/Flowers/jsp/front_primary.jsp");
				//request.getRequestDispatcher("/jsp/front_primary.jsp").forward(request, response);
			}else{
				session.setAttribute("member",null);
				//用户密码错误
				request.setAttribute("login", "账号或密码错误");
				request.getRequestDispatcher("/jsp/member_login.jsp").forward(request, response);
			}
		} catch (Exception e) {
				//未知错误
			request.getRequestDispatcher("/jsp/error.jsp").forward(request, response);
		}
	}
}
