package com.managersFlowers.dao;


import com.flowers.util.SqlString;
import com.flowers.util.SqlUtil;
import com.managersFlowers.model.Member;

/**
 * 后台用户添加dao层
 * @author 阿飞
 *
 */
public class MemberAddDaoImpl {
	public int memberAddD(Member member){
		String sql ="insert into table_member (membername,memberpwd,sex,email,telephone,qq,address) values (?,?,?,?,?,?,?)";
		Object[] params = new Object[]{member.getName(),member.getPassword(),member.getSex(),member.getEmail(),
				member.getTelephone(),member.getQq(),member.getAdress()};
		//SqlString.printSql(sql, params);
		int row = SqlUtil.excuteUpdate(sql, params);
		return row;
	}
}
