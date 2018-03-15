package com.managersFlowers.dao;

import com.flowers.util.SqlUtil;

public class OrderRemoveDaoImpl {

	public int orderRemoveD(String iD) {
		String sql = "delete from table_orders where ID=?";
		int row = SqlUtil.excuteUpdate(sql, new Object[]{iD});
		return row;
	}

}
