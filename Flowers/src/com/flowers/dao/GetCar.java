package com.flowers.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.flowers.util.SqlUtil;

public class GetCar {
	public String[] getcar(String orderid){
		String sql="select * from table_orders where ordersID=?";
		ArrayList<HashMap<String,Object>> list=SqlUtil.excuteQuery(sql,new Object[]{orderid});
		String[] carids=new String[list.size()];
		if(list.size()>0){
			for(int i=0;i<carids.length;i++){
				carids[i]=String.valueOf(list.get(i).get("carID"));
			}
		}
		return carids;
	}
}
