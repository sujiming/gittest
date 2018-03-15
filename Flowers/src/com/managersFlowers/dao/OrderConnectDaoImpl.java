package com.managersFlowers.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.flowers.util.SqlUtil;
import com.managersFlowers.model.OrdersConnet;
import com.managersFlowers.util.SqlString;

public class OrderConnectDaoImpl {

	public List<OrdersConnet> orderconD() {
		OrdersConnet ordcon = null;
		//调用数据库连接工具类Util
		String sql = "select ID,ordersID,productName,memberName,debitAddress,debitName,debitPhone,"
				+ "consigneeAddress,consigneeName,consigneePhone,venrity,orderMoney,adminID,leaveWord,ordersTime "
				+ "from table_orders o,table_product p,table_member m "
				+ "where p.productID=o.productID and o.memberID=m.memberID";
		ArrayList<HashMap<String,Object>>  list = SqlUtil.excuteQuery(sql,null);				
		ArrayList<OrdersConnet> orderss = new ArrayList<OrdersConnet>();
		if(list.size()>0){
			for (HashMap<String, Object> map : list) {
				ordcon = new OrdersConnet();
				ordcon.setID(String.valueOf(map.get("ID")));
				ordcon.setOrdersID(String.valueOf(map.get("ordersID")));
				ordcon.setProductName(String.valueOf(map.get("productName")));
				ordcon.setMemberName(String.valueOf(map.get("memberName")));
				ordcon.setDebitName(String.valueOf(map.get("debitName")));
				ordcon.setDebitPhone(String.valueOf(map.get("debitPhone")));
				ordcon.setDebitAddress(String.valueOf(map.get("debitAddress")));
				ordcon.setConsigneeName(String.valueOf(map.get("consigneeName")));
				ordcon.setConsigneePhone(String.valueOf(map.get("consigneePhone")));
				ordcon.setConsigneeAddress(String.valueOf(map.get("consigneeAddress")));
				ordcon.setVenrity(String.valueOf(map.get("venrity")));
				ordcon.setOrderMoney("￥"+String.valueOf(map.get("orderMoney")));
				ordcon.setAdminID(String.valueOf(map.get("adminID")));
				ordcon.setLeaveWord(String.valueOf(map.get("leaveWord")));
				ordcon.setOrdersTime(String.valueOf(map.get("ordersTime")));
				orderss.add(ordcon);
			}
		}
		return orderss;
	}

	public String orderconwordD(String ID) {
		OrdersConnet ordcon = null;
		//调用数据库连接工具类Util
		String sql = "select leaveWord from table_orders where ID=? ";
		Object[] params = new Object[]{ID};
		SqlString.printSql(sql, params);
		ArrayList<HashMap<String,Object>>  list = SqlUtil.excuteQuery(sql,new Object[]{ID});				
		ArrayList<OrdersConnet> orderss = new ArrayList<OrdersConnet>();
		if(list.size()>0){
			for (HashMap<String, Object> map : list) {
				ordcon = new OrdersConnet();
				ordcon.setLeaveWord(String.valueOf(map.get("leaveWord")));
			}
		}
		return ordcon.getLeaveWord();
	}

}
