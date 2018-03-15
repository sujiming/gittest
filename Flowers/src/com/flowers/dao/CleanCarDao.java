package com.flowers.dao;

import com.flowers.util.SqlString;
import com.flowers.util.SqlUtil;

public class CleanCarDao {
	public void getcar(String memberID){
		String sql="UPDATE table_car set statu='弃用' WHERE memberID=?";
		SqlUtil.excuteUpdate(sql, new Object[]{memberID});
		
		
	}
}
