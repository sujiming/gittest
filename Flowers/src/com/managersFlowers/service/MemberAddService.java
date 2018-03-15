package com.managersFlowers.service;

import com.managersFlowers.dao.MemberAddDaoImpl;
import com.managersFlowers.model.Member;

/**
 * 后台用户添加service层
 * @author 阿飞
 *
 */
public class MemberAddService {
	public int memberAddS(Member member){
		//调用dao层
		MemberAddDaoImpl mad = new MemberAddDaoImpl();
		int row = mad.memberAddD(member);
		return row;
	}
}
