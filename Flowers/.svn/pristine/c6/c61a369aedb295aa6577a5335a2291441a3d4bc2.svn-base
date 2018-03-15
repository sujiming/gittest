package com.managersFlowers.action;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
/**
 * 后台添加用户
 * @author 阿飞
 * 
 */
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flowers.model.Message;
import com.flowers.service.MemberRegisterService;
import com.google.gson.Gson;
import com.managersFlowers.model.Member;
import com.managersFlowers.service.MemberAddService;
@WebServlet("/memberaddservlet")
public class MemberAddServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取添加框数据
				String member_name = request.getParameter("memberName");
				String member_password = request.getParameter("memberPwd");
				String member_email = request.getParameter("email");
				String member_sex = request.getParameter("sex");
				String member_telephone = request.getParameter("telephone");
				String member_qq = request.getParameter("qq");
				String member_adress = request.getParameter("address");
				//封装在Member用户类中
				System.out.println(member_name);
				Member member = new Member();
				member.setName(member_name);
				member.setPassword(member_password);
				member.setEmail(member_email);
				member.setSex(member_sex);
				member.setTelephone(member_telephone);
				member.setQq(member_qq);
				member.setAdress(member_adress);
				MemberAddService mas = new MemberAddService();
				Gson gson = new Gson(); 
				//实例化一个Message封装增加成功或者失败信息
				Message message = null;
				String result;
				System.out.println("添加");
			
				//捕获增加失败异常
				try {
					//调用服务层
					int row = mas.memberAddS(member);
					if(row>0){
						message = new Message("200","添加成功");
					}else{
						message = new Message("250","添加失败,用户名或电话已存在");
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
