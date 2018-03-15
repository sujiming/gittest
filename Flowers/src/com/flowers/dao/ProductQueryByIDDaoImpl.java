package com.flowers.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.flowers.model.Product;
import com.flowers.util.SqlUtil;

public class ProductQueryByIDDaoImpl {
	//根据ID展示前台信息
	public List<Product> queryByIDD(String productID) {
		String sql ="select * from table_product where productid=?";
		ArrayList<HashMap<String,Object>>  list = SqlUtil.excuteQuery(sql, new Object[]{productID});				
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
				product.setOriginalPrice(String.valueOf(map.get("originalprice")));
				product.setFestival(String.valueOf(map.get("festival")));
				product.setRecmmend(String.valueOf(map.get("recmmend")));
				product.setMiaoshu(String.valueOf(map.get("miaoshu")));
				products.add(product);
				}
			}
		return products;
	}

}
