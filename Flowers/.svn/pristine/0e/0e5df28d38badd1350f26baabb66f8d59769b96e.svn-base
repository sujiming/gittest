package com.managersFlowers.dao;
import com.flowers.util.SqlUtil;
/**
 * 后台用户删除dao层
 * @author 阿飞
 *
 */
public class MemberRemoveDaoImpl {
	public int memberRemoveD(String id){
		String sql = "delete from table_member where memberid=?";
		int row = SqlUtil.excuteUpdate(sql, new Object[]{id});
		return row;
	}
}
