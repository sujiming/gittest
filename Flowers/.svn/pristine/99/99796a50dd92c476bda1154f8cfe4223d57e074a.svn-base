package com.managersFlowers.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.flowers.model.Product;
import com.flowers.util.SqlUtil;

/**
 * 后台商品的首次加载
 * @author 阿飞
 *
 */
public class ProductDaoImpl {
	public List<Product> productD(){
		Product product = null;
		String sql = "select * from table_product";
		ArrayList<HashMap<String,Object>>  list = SqlUtil.excuteQuery(sql,null);
		ArrayList<Product> products = new ArrayList<Product>();
		if(list.size()>0){
			for(HashMap<String, Object> map:list){
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
