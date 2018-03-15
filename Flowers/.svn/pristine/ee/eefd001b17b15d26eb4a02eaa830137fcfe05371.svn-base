package com.managersFlowers.service;

import java.util.List;

import com.managersFlowers.dao.MemberQueryDaoImpl;
import com.managersFlowers.model.Member;

/**
 * 后台用户查询service层
 * @author 阿飞
 *
 */
public class MemberQueryService {
	public List<Member> memberQueryS(String name_tel){
		//调用后台用户查询dao层
		MemberQueryDaoImpl mqd = new MemberQueryDaoImpl();
		List<Member> members = mqd.memberQueryD(name_tel);
		return members;
	}
}
