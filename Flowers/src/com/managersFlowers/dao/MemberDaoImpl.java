package com.managersFlowers.dao;
/**
 * 首次加载用户表dao层
 * @author 阿飞
 */
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.flowers.util.SqlUtil;
import com.managersFlowers.model.Member;

public class MemberDaoImpl {
	public List<Member> memberD(){
		Member member = null;
		//调用数据库连接工具类Util
		String sql = "select * from table_member";
		ArrayList<HashMap<String,Object>>  list = SqlUtil.excuteQuery(sql,null);				
		ArrayList<Member> members = new ArrayList<Member>();
		if(list.size()>0){
			for (HashMap<String, Object> map : list) {
				member = new Member();
				member.setId(String.valueOf(map.get("memberID")));
				member.setName(String.valueOf(map.get("memberName")));
				member.setPassword(String.valueOf(map.get("memberPwd")));
				member.setEmail(String.valueOf(map.get("email")));
				member.setSex(String.valueOf(map.get("sex")));
				member.setTelephone(String.valueOf(map.get("telephone")));
				member.setQq(String.valueOf(map.get("qq")));
				member.setAdress(String.valueOf(map.get("address")));
				members.add(member);
			}
		}
		return members;
	}
	
}
