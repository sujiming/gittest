package com.managersFlowers.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Message;
import com.google.gson.Gson;
import com.managersFlowers.model.Member;
import com.managersFlowers.service.MemberEditService;

/**
 * 后台用户修改的servlet层
 * @author 阿飞
 *
 */
@WebServlet("/membereditservlet")
public class MemberEditServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取修改的数据
		String member_id = request.getParameter("memberID");
		String member_name = request.getParameter("memberName");
		String member_password = request.getParameter("memberPwd");
		String member_email = request.getParameter("email");
		String member_sex = request.getParameter("sex");
		String member_telephone = request.getParameter("telephone");
		String member_qq = request.getParameter("qq");
		String member_adress = request.getParameter("address");
		//System.out.println(member_id);

		//封装在Member用户类中
		Member member = new Member();
		member.setId(member_id);
		member.setName(member_name);
		member.setPassword(member_password);
		member.setEmail(member_email);
		member.setSex(member_sex);
		member.setTelephone(member_telephone);
		member.setQq(member_qq);
		member.setAdress(member_adress);
		MemberEditService mes = new MemberEditService();
		Gson gson = new Gson(); 
		//实例化一个Message封装修改成功或者失败信息
		Message message = null;
		String result;
		//捕获修改失败异常
		try {
			//调用服务层
			int row = mes.memberEditS(member);
			if(row>0){
				message = new Message("200","修改成功");
			}else{
				message = new Message("250","修改失败,用户名或电话已存在");
			}
		} catch (Exception e) {
			message = new Message("230","未知错误");
		}finally{
			//将message转成json
			result=gson.toJson(message);
			//响应到前台
			response.getWriter().print(result);
			response.getWriter().close();
		}
	}

}
