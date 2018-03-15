package com.flowers.dao;
/**
 *	后台登录的dao层
 *  @author 阿飞
 */
 
import java.util.ArrayList;
import java.util.HashMap;
import com.flowers.model.Member;
import com.flowers.util.SqlUtil;

public class MemberLoginDaoImpl {
	public Member loginMemberD(String  member_name,String member_password){
		//调用数据库连接工具类Util
		String sql = "select * from table_member where membername=?  and memberpwd=?";
		ArrayList<HashMap<String,Object>>  list = SqlUtil.excuteQuery(sql, new Object[]{member_name,member_password});
		Member member = null;
		if(list.size()>0){
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
				member.setHeaderphoto(String.valueOf(map.get("headerphoto")));
			}
		}
		return member;
	}
}
