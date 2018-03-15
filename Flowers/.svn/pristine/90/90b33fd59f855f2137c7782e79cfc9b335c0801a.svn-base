package com.managersFlowers.dao;

import com.flowers.util.SqlUtil;

/**
 * 后台商品的删除dao层
 * @author 阿飞
 */
public class ProductRemoveDaoImpl {
	public int productRemoveD(String id){
		String sql = "delete from table_product where productID=?";
		int row = SqlUtil.excuteUpdate(sql, new Object[]{id});
		return row;
	}
}
