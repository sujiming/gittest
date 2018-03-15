package com.flowers.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.flowers.model.Member;
import com.flowers.util.SqlUtil;

/**
 * 个人信息回显
 * @author afei
 *
 */
public class PersonInfoDaoImpl {
	public Member personInfoD(String memberid) {
		// 调用数据库连接工具类Util
		String sql = "select * from table_member where memberid=? or telephone=?";
		ArrayList<HashMap<String, Object>> list = SqlUtil.excuteQuery(sql, new Object[] { memberid, memberid });
		Member member = null;
		if (list.size() > 0) {
			for (HashMap<String, Object> map : list) {
				member = new Member();
				member.setMemberID(String.valueOf(map.get("memberID")));
				member.setMemberName(String.valueOf(map.get("memberName")));
				member.setMemberPwd(String.valueOf(map.get("memberPwd")));
				member.setEmail(String.valueOf(map.get("email")));
				member.setSex(String.valueOf(map.get("sex")));
				member.setTelephone(String.valueOf(map.get("telephone")));
				member.setQq(String.valueOf(map.get("qq")));
				member.setAddress(String.valueOf(map.get("address")));
				member.setRealname(String.valueOf(map.get("realname")));
			}
		}
		return member;
	}
}
