package com.managersFlowers.service;

import java.util.List;

import com.managersFlowers.dao.MemberDaoImpl;
import com.managersFlowers.model.Member;

/**
 * 用户首次加载service层
 * @author afei
 *
 */
public class MemberService {
	public List<Member> memberS(){
		//调用dao层
		MemberDaoImpl md = new MemberDaoImpl();
		List<Member> members = md.memberD();
		return members;
	}
	
}
