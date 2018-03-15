package com.managersFlowers.action;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
/**
 * 后台用户查询servlet层
 * @author 王飞
 *
 */
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.flowers.model.Message;
import com.google.gson.Gson;
import com.managersFlowers.model.Member;
import com.managersFlowers.service.MemberQueryService;
@WebServlet("/memqueryservlet")
public class MemberQueryServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取后台查询输入框的信息
		String name_tel = request.getParameter("name");
		MemberQueryService mqs = new MemberQueryService();
		Gson  gson=new Gson();
		String result = null;
		Message message;
		try {
		//调用服务层
			List<Member> members = mqs.memberQueryS(name_tel);
			if(members.size()>0){
				//查询到用户
				result = gson.toJson(members);
			}else{
				//没有查询到用户
				message = new Message("200","没有找到用户");
				result = gson.toJson(message);
			}
		} catch (Exception e) {
			//出现错误
			message = new Message("250","未知错误");
			result = gson.toJson(message);
		}finally{
			response.getWriter().print(result);
			response.getWriter().close();
		}
	}
}
