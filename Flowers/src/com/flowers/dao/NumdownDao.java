package com.flowers.dao;

import com.flowers.util.SqlUtil;

public class NumdownDao {
	public void getCar(String carID){
		String sql = "update table_car  set num=num-1 where carID=?";
		SqlUtil.excuteUpdate(sql, new Object[]{carID});
		
	}
}
