package com.flowers.dao;

import com.flowers.model.Member;
import com.flowers.util.SqlString;
import com.flowers.util.SqlUtil;


public class MemberDetailDao {
	public int memberUpdate(Member member){
		String sql ="update  table_member set name = ?,sex=?,email = ?,qq=?,address = ? where memberid = ?";
		Object[] params = new Object[]{member.getRealname(),member.getSex(),member.getEmail(),member.getQq(),member.getAddress(),member.getMemberID()};
		SqlString.printSql(sql, params);
		int row = SqlUtil.excuteUpdate(sql, params);
		return row;
	}
}
