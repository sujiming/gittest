package com.managersFlowers.service;

import com.managersFlowers.dao.MemberRemoveDaoImpl;

/**
 * 后台用户删除service层
 * @author 阿飞
 *
 */
public class MemberRemoveService {
	public int memberRemoveS(String id){
		//调用dao层
		MemberRemoveDaoImpl mrd = new MemberRemoveDaoImpl();
		int row = mrd.memberRemoveD(id);
		return row;
	}
}
