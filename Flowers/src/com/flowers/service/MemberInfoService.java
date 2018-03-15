package com.flowers.service;

import com.flowers.dao.PersonInfoDaoImpl;
import com.flowers.model.Member;

/**
 * 用户信息回显service层
 * @author afei
 *
 */
public class MemberInfoService {
	public Member memberInfoS(String memberid){
	PersonInfoDaoImpl pid = new PersonInfoDaoImpl();
	Member member = pid.personInfoD(memberid);
	return member;
	
	}
}
