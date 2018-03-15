package com.flowers.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.flowers.model.Car;
import com.flowers.model.Product;
import com.flowers.util.SqlString;
import com.flowers.util.SqlUtil;

public class CarDao {
	public ArrayList<Car> getCar(String memberID){
		String sql="SELECT * FROM table_car c,table_product p  where c.statu ='未支付' and c.productID=p.productID and c.memberID=?";
		ArrayList<HashMap<String,Object>> list=SqlUtil.excuteQuery(sql, new Object[]{memberID});
		ArrayList<Car> list1=null;
		//SqlString.printSql(sql, new Object[]{memberID});
		Car car=null;
		if(list.size()>0){
			list1=new ArrayList<Car>();
			for(HashMap map:list){
				car=new Car();
				car.setCarID(String.valueOf(map.get("carID")));
				car.setMemberID(String.valueOf(map.get("memberID")));
				car.setNum(String.valueOf(map.get("num")));
				car.setProductName(String.valueOf(map.get("productName")));
				car.setCaName(String.valueOf(map.get("caName")));
				car.setPicture(String.valueOf(map.get("picture")));
				car.setOriginalPrice(String.valueOf(map.get("originalprice")));
				list1.add(car);
			}
		}
		return list1;
	}
}
