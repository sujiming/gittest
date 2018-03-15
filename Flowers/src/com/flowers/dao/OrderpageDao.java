package com.flowers.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.flowers.model.Productorder;
import com.flowers.util.SqlString;
import com.flowers.util.SqlUtil;

public class OrderpageDao {
	public List getorder(String orderid){
		String sql="SELECT * FROM table_orders o,table_car c,table_product p WHERE o.carID=c.carID and o.ordersID=? AND C.productID=P.productID";
		ArrayList<HashMap<String,Object>> list=SqlUtil.excuteQuery(sql, new Object[]{orderid});
		ArrayList<Productorder> product=new ArrayList<Productorder>() ;
		//SqlString.printSql(sql, new Object[]{orderid});
		if(list.size()>0){
			for(int i=0;i<list.size();i++){
				Productorder po=new Productorder();
				po.setProductName(String.valueOf(list.get(i).get("productName")));
				po.setProductNum(String.valueOf(list.get(i).get("num")));
				po.setProductPrice(String.valueOf(list.get(i).get("originalprice")));
				po.setProductPicture(String.valueOf(list.get(i).get("picture")));
				po.setProductID(String.valueOf(list.get(i).get("productID")));
				product.add(po);
			}
		}
		//System.out.println(product.size()+"444444444444444");
		return product;
	} 
}
