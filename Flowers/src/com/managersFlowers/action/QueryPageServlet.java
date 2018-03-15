package com.managersFlowers.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.managersFlowers.service.EmpServiceImpl;
import com.managersFlowers.util.BeanJsonUtil;
import com.managersFlowers.util.EasyPage;
import com.managersFlowers.util.PageModel;

@WebServlet("/queryPageServlet")
public class QueryPageServlet  extends  HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String page =request.getParameter("page");
		String rows=request.getParameter("rows");
//		System.out.println(page+" "+rows);
		EmpServiceImpl  empServiceImpl=new EmpServiceImpl();
		//返回的分页模型对象
		PageModel  model = empServiceImpl.queryPageList(page,rows);
		
		//request.setArribute("pageModel",model);  ${pageModel.list}
		EasyPage  easyPage=new  EasyPage(model.getTotal(),model.getList());
		BeanJsonUtil.writeJson(response, easyPage);
	}
}

