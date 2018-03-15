package com.flowers.dao;

import com.flowers.util.SqlUtil;

public class RemoveCarDao {
	public int removeCar(String carID){
		String sql = "update table_car SET statu='弃用' where carID=?";
		int row=SqlUtil.excuteUpdate(sql, new Object[]{carID});
		return row;
	}
}
