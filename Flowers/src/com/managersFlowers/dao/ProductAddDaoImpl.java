package com.managersFlowers.dao;

import com.flowers.model.Product;
import com.flowers.util.SqlString;
import com.flowers.util.SqlUtil;

/**
 * 后台商品的增加
 * @author 阿飞
 *
 */
public class ProductAddDaoImpl {
	//调用工具类
	public int productAddD(Product product){
		String sql ="insert into table_product (productname,caname,picture,talkto,originalprice,festival,recmmend,miaoshu) values (?,?,?,?,?,?,?,?)";
		Object[] params = new Object[]{product.getProductName(),product.getCaName(),product.getPicture(),product.getTalkTo(),
				product.getOriginalPrice(),product.getFestival(),product.getRecmmend(),product.getMiaoshu()};
		SqlString.printSql(sql, params);
		int row = SqlUtil.excuteUpdate(sql, params);
		return row;
	}
}
