package com.managersFlowers.dao;

import com.flowers.util.SqlString;
import com.flowers.util.SqlUtil;
import com.managersFlowers.model.Member;

/**
 * 后台用户修改dao层
 * @author 阿飞
 *
 */
public class MemberEditDaoImpl {
	public int memberEditD(Member member){
		String sql ="update  table_member set membername = ?,memberpwd = ?,sex=?,email = ?,telephone = ?,qq=?,address = ? where memberid = ?";
		Object[] params = new Object[]{member.getName(),member.getPassword(),member.getSex(),member.getEmail(),member.getTelephone(),member.getQq(),member.getAdress(),member.getId()};
		SqlString.printSql(sql, params);
		int row = SqlUtil.excuteUpdate(sql, params);
		return row;
	}
}
