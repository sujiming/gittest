package com.flowers.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.WebFault;

import com.flowers.model.Member;
import com.flowers.model.Message;
import com.flowers.service.MemberDetailService;
import com.google.gson.Gson;
@WebServlet("/memberdetail")
public class MemberDetailAction extends HttpServlet{
      @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 // System.out.println("77777");
    	 //获取参数
    	  String memberid=request.getParameter("memberID");
    	  String realname=request.getParameter("realname");
    	  String sex=request.getParameter("sex");
    	  String email=request.getParameter("email");
    	  String qq=request.getParameter("qq");
    	  String address=request.getParameter("address");
    	  //封装在member类中
    	  Member member=new Member();
    	  member.setMemberID(memberid);
  		  member.setRealname(realname);
  		  member.setEmail(email);
  		  member.setSex(sex);
  		  member.setQq(qq);
  		  member.setAddress(address);
  		 MemberDetailService ds=new MemberDetailService();
  		 Gson gson=new Gson();
  		 //实例化一个Message
  		 Message msg =null;
  		 String result;
  		 try{
  			 //调用业务层
  			int row=ds.getDao(member);
  			if(row>0){
				msg = new Message("200","修改成功");
			}else{
				msg = new Message("250","修改失败 ");
			}
  		}catch( Exception e){
  			msg = new Message("230","未知错误");
  		}finally{
  		//将message转成json
			result=gson.toJson(msg);
			//响应到前台
			response.getWriter().print(result);
			response.getWriter().close();
  		}
  		 
    }
}
