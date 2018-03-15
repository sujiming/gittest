package com.managersFlowers.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.flowers.model.Product;
import com.flowers.util.SqlUtil;

/**
 * 后台按商品名模糊查询dao层
 * @author 阿飞
 *
 */
public class ProductQueryDaoImpl {
	public List<Product> productQueryD(String productName){
		String sql ="select * from table_product where productname like ?";
		ArrayList<HashMap<String,Object>>  list = SqlUtil.excuteQuery(sql, new Object[]{"%"+productName+"%"});				
		ArrayList<Product> products = new ArrayList<Product>();
		Product product = null;
		
		if(list.size()>0){
			for (HashMap<String, Object> map : list) {
				product = new Product();
				product.setProductID(String.valueOf(map.get("productID")));
				product.setProductName(String.valueOf(map.get("productName")));
				product.setCaName(String.valueOf(map.get("caName")));
				product.setPicture(String.valueOf(map.get("picture")));
				product.setTalkTo(String.valueOf(map.get("talkTo")));
				product.setOriginalPrice(String.valueOf(map.get("originalPrice")));
				product.setFestival(String.valueOf(map.get("festival")));
				product.setRecmmend(String.valueOf(map.get("recmmend")));
				product.setMiaoshu(String.valueOf(map.get("miaoshu")));
				products.add(product);
				}
			}
		return products;
	}
}
