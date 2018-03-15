package com.managersFlowers.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.managersFlowers.model.Echats;
import com.managersFlowers.util.SqlUtil;

public class QueryEchatsDao {

	public ArrayList<Echats> queryechatsD() {
		String sql="select COUNT(*) FROM table_product WHERE caName  LIKE '鲜花玫瑰%'";
		ArrayList<HashMap<String,Object>> list=SqlUtil.excuteQuery(sql, null);
		ArrayList<Echats> array=new ArrayList<Echats>();
		for(HashMap map:list){
			Echats echats=new Echats();
			echats.setName("鲜花玫瑰");
			echats.setNum(String.valueOf(map.get("COUNT(*)")));
		
			array.add(echats);
		}
		String sql2="select COUNT(*) FROM table_product WHERE caName  LIKE '永生玫瑰%'";
		ArrayList<HashMap<String,Object>> list2=SqlUtil.excuteQuery(sql2, null);
		for(HashMap map:list2){
			Echats echats=new Echats();
			echats.setName("永生玫瑰");
			echats.setNum(String.valueOf(map.get("COUNT(*)")));
		
			array.add(echats);
		}
		String sql3="select COUNT(*) FROM table_product WHERE caName  LIKE ' 玫瑰饰品%'";
		ArrayList<HashMap<String,Object>> list3=SqlUtil.excuteQuery(sql3, null);
		for(HashMap map:list3){
			Echats echats=new Echats();
			echats.setName("玫瑰饰品");
			echats.setNum(String.valueOf(map.get("COUNT(*)")));
		
			array.add(echats);
		}
		String sql4="select COUNT(*) FROM table_product WHERE caName  LIKE '玫瑰珠宝%'";
		ArrayList<HashMap<String,Object>> list4=SqlUtil.excuteQuery(sql4, null);
		for(HashMap map:list4){
			Echats echats=new Echats();
			echats.setName("玫瑰珠宝");
			echats.setNum(String.valueOf(map.get("COUNT(*)")));
		
			array.add(echats);
		}
		return array;
	}
	
}
