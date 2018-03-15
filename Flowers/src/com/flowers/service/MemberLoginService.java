package com.flowers.service;
/**
 * 用户登录服务层
 * 阿飞
 */
import com.flowers.dao.MemberLoginDaoImpl;
import com.flowers.model.Member;
public class MemberLoginService {
	//调用dao层
	public Member loginMemberS(String  member_name,String member_password){
		MemberLoginDaoImpl bld = new MemberLoginDaoImpl();
		Member member  = bld.loginMemberD(member_name, member_password);
		return member;
	}
}
