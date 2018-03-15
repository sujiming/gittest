package com.flowers.dao;

import com.flowers.util.SqlString;
import com.flowers.util.SqlUtil;

public class UploadHeaderDao {
	public void updateheader(String path,String memberid){
		String sql="update table_member set headerphoto=? where memberID=?";
		SqlUtil.excuteUpdate(sql, new Object[]{path,memberid});
		SqlString.printSql(sql, new Object[]{path,memberid});
	}
}
