package com.flowers.dao;

import com.flowers.util.SqlString;
import com.flowers.util.SqlUtil;

/**
 * 提交订单dao 
 * @author 阿飞
 *
 */
public class FrontOrderAddDao {
	public void frontOAddD(String orderid,String[] carids){
		for(int i=0;i<carids.length;i++ ){
			String carid=carids[i];
			String sql ="insert into table_orders (ordersid,carid,venrity) values (?,?,'未支付')";
			Object[] params = new Object[]{orderid,carid};
			//SqlString.printSql(sql, params);
			SqlUtil.excuteUpdate(sql, params);
		}
	}
}
