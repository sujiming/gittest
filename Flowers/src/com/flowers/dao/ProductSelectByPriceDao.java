package com.flowers.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.flowers.model.Product;
import com.flowers.util.SqlUtil;

public class ProductSelectByPriceDao {
	public ArrayList<Product> getProduct(int min,int max){
		String sql="select * from table_product p where p.originalprice between ? and ?";
		ArrayList<HashMap<String,Object>> list=SqlUtil.excuteQuery(sql, new Object[]{min,max});
		Product product=null;
		ArrayList<Product> list1=new ArrayList<Product>(); 
		if(list.size()>0){
			for(HashMap map:list){
				product=new Product();
				product.setProductID(String.valueOf(map.get("productID")));
				product.setProductName(String.valueOf(map.get("productName")));
				product.setCaName(String.valueOf(map.get("caName")));
				product.setPicture(String.valueOf(map.get("picture")));
				product.setTalkTo(String.valueOf(map.get("talkTo")));
				product.setOriginalPrice(String.valueOf(map.get("originalprice")));
				product.setFestival(String.valueOf(map.get("festival")));
				product.setRecmmend(String.valueOf(map.get("recmmend")));
				product.setMiaoshu(String.valueOf(map.get("miaoshu")));
				list1.add(product);
			}
		}
		return list1;
		
	}
}
