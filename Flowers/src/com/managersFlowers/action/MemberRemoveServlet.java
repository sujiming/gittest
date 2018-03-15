package com.managersFlowers.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Message;
import com.google.gson.Gson;
import com.managersFlowers.service.MemberRemoveService;

/**
 * 后台用户删除servlet层
 * @author 阿飞
 *
 */
@WebServlet("/memremove")
public class MemberRemoveServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取要删除用户的id
		String id = request.getParameter("memberID");
		//封装一个message结果返回
		Message message = null;
		//实例化用户删除服务层
		MemberRemoveService mrs = new MemberRemoveService();
		Gson gson = new Gson();
		String result;
		//捕获删除时的异常
		try {
			int row = mrs.memberRemoveS(id);
			if(row>0){
				message = new Message("200","删除成功");
			}else{
				message = new Message("250","删除失败");
			}
		} catch (Exception e) {
			message = new Message("230","未知错误");
		}finally{
			result = gson.toJson(message);
			response.getWriter().print(result);
			response.getWriter().close();
		}
	}
	
}
