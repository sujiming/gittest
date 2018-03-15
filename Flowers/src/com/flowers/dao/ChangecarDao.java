package com.flowers.dao;

import com.flowers.util.SqlUtil;

public class ChangecarDao {
	public void updatacar(String[] carids){
		for(int i=0;i<carids.length;i++){
			String carid=carids[i];
			String sql="UPDATE table_car SET statu='已提交' where carID=?";
			SqlUtil.excuteUpdate(sql, new Object[]{carid});
		}
	}
}
