package com.ghj.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Message;
import com.ghj.tool.SMSUtils;
import com.google.gson.Gson;

@WebServlet("/forgetcheckmes")
public class CheckMes extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mobile=request.getParameter("mobile");
		String code=request.getParameter("code");
		System.out.println(mobile);
		Message message = null;
		String result = null;
		Gson gson=new Gson();
		PrintWriter print=response.getWriter();
		try {
			if(SMSUtils.verifyCode(mobile, code)){//校验验证码
				System.out.println("验证码正确...");
				
				message=new Message("200","验证码正确");
				result=gson.toJson(message);
				
			}else{
				message=new Message("230","验证码错误");
				result=gson.toJson(message);
				System.out.println("验证码错误...");
				
			}
		} catch (IOException e) {
			message=new Message("250","未知错误");
			result=gson.toJson(message);
		}finally{
			print.print(result);
			print.close();
		}
	}
}
