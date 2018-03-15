package com.managersFlowers.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.managersFlowers.model.Echats;
import com.managersFlowers.service.QueryEchatsService;

import net.sf.json.JSONArray;

/**
 * echats
 */
@WebServlet("/QueryEchatsServlet")
public class QueryEchatServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QueryEchatsService qes=new QueryEchatsService();
		ArrayList<Echats>list=qes.queryechatsS();
/*		response.setContentType("text/html;charset=utf-8");
*/		JSONArray json=JSONArray.fromObject(list);
		//返回给前端页面
		PrintWriter out=response.getWriter();
		out.print(json);
		out.flush();
		out.close();
	}
}
