package com.flowers.action;
/**
 * 用户注册servlet层
 * @author 阿飞
 * 使用技术：ajax
 */
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.flowers.model.Member;
import com.flowers.model.Message;
import com.flowers.service.MemberRegisterService;
import com.google.gson.Gson;
@WebServlet("/regservlet")
public class MemberRegisterServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取注册框数据
		String member_name = request.getParameter("name");
		String member_password = request.getParameter("password");
		
		String member_telephone = request.getParameter("telephone");
		//System.out.println(member_name+"77777777777777");
		//封装在Member用户类中
		Member member = new Member();
		member.setMemberName(member_name);
		member.setMemberPwd(member_password);
	
		
		member.setTelephone(member_telephone);
		
		MemberRegisterService mrs = new MemberRegisterService();
		Gson gson = new Gson(); 
		
		//实例化一个Message封装注册成功或者失败信息
		Message message = null;
		String result;
		//捕获注册失败异常
		try {
			//调用服务层
			mrs.memberRegisterS(member);
			
			message = new Message("200","注册成功");
			
			//request.setAttribute("mes","注册成功");
			request.getRequestDispatcher("/jsp/member_login.jsp").forward(request, response);
		} catch (Exception e) {
			//window.location.assign("http://localhost:8080/Flowers/jsp/front_primary.jsp");
			//request.setAttribute("250","注册失败");
			request.getRequestDispatcher("/jsp/member_register.jsp").forward(request, response);

			//message = new Message("250","注册失败");
		}
		
	}
}
