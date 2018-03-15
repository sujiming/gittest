package com.flowers.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Message;
import com.flowers.service.CleanCarService;
import com.flowers.service.RemoveCarService;
import com.google.gson.Gson;

@WebServlet("/cleancar")
public class CleanCarAction extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberID=request.getParameter("memberID");
		System.out.println(memberID);
		//封装一个message结果返回
		Message message = null;
		//实例化用户删除服务层
		
		Gson gson = new Gson();
		String result;
		//捕获删除时的异常
			try{
			CleanCarService cs=new CleanCarService();
			cs.getdao(memberID);
			message = new Message("200","删除成功");
			}catch(Exception e){
				message = new Message("230","未知错误");
			}finally{
				result = gson.toJson(message);
				response.getWriter().print(result);
				response.getWriter().close();
			}
			
		
		
	}
}
