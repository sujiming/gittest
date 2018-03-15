package com.flowers.dao;
/**
 * 用户注册dao层
 * @author 阿飞
 *
 */
import java.util.ArrayList;
import java.util.HashMap;
import com.flowers.model.Member;
import com.flowers.util.SqlString;
import com.flowers.util.SqlUtil;
public class MemberRegisterDaoImpl {
		//注册信息插入数据库
	public void memberRegisterD(Member member){
		//调用数据库连接工具类Util
		String sql ="insert into table_member (membername,memberpwd,telephone,headerphoto) values (?,?,?,'/Flowers/static/images/man.jpg')";
		Object[] params = new Object[]{member.getMemberName(),member.getMemberPwd(),member.getTelephone()};
		//SqlString.printSql(sql, params);
		SqlUtil.excuteUpdate(sql, params);
	}
		//验证注册时用户名或电话号码是否存在
	public boolean  memberRqueryByNameOrTelD(String name_tel){
		//调用数据库连接工具类Util
				String sql = "select * from table_member where membername=? or telephone=?";
				ArrayList<HashMap<String,Object>>  list = SqlUtil.excuteQuery(sql, new Object[]{name_tel,name_tel});
				//SqlString.printSql(sql, new Object[]{name_tel,name_tel});
						//Member member = null;
				boolean bool=true;
				if(list.size()>0){
					bool=false;
					/*for (HashMap<String, Object> map : list) {
						member = new Member();
						member.setId(String.valueOf(map.get("MEMBERID")));
						member.setName(String.valueOf(map.get("MEMBERNAME")));
						member.setPassword(String.valueOf(map.get("MEMBERPWD")));
						member.setEmail(String.valueOf(map.get("EMAIL")));
						member.setSex(String.valueOf(map.get("SEX")));
						member.setTelephone(String.valueOf(map.get("TELEPHONE")));
						member.setQq(String.valueOf(map.get("QQ")));
						member.setAdress(String.valueOf(map.get("ADRESS")));
						
					}*/
				}
				return bool;
	}
}
