package com.managersFlowers.dao;

import com.flowers.model.Product;
import com.flowers.util.SqlString;
import com.flowers.util.SqlUtil;

/**
 * 后台商品修改dao层
 * @author afei
 *
 */
public class ProductEditDaoImpl {
	public int productEditD(Product product){
		String sql ="update  table_product set productName = ?,caName = ?,picture=?,talkTo = ?,originalprice = ?,festival = ?,recmmend = ?,miaoshu = ? where productID = ?";
		Object[] params = new Object[]{product.getProductName(),product.getCaName(),product.getPicture(),product.getTalkTo(),
		product.getOriginalPrice(),product.getFestival(),product.getRecmmend(),product.getMiaoshu(),product.getProductID()};
		SqlString.printSql(sql, params);
		int row = SqlUtil.excuteUpdate(sql, params);
		return row;
	}
}
