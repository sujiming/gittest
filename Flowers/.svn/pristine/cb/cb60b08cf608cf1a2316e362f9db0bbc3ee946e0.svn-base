package com.ghj.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Message;
import com.ghj.tool.SMSUtils;
import com.google.gson.Gson;

@WebServlet("/catchma")
public class Yanzhengma extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mobile=request.getParameter("telephone");
		System.out.println(mobile);
		Gson gson = new Gson(); 
		//封装message
		Message message = null;
		String result;
		PrintWriter print=response.getWriter();
		if(SMSUtils.isMobile(mobile)){
			try {
				SMSUtils.sendCode(mobile,"3086077");//发送验证码
			} catch (IOException e) {
				message=new Message("250","未知错误");
				result=gson.toJson(message);
				print.print(result);
				print.close();
			}
		}
		//System.out.print("请输入您收到的短信验证码：");
		//String code = new Scanner(System.in).next();
		
	}
}
