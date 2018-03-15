package com.managersFlowers.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.flowers.model.Orders;
import com.flowers.util.SqlUtil;

/**
 * 后台订单首次加载dao层
 * @author 阿飞
 *
 */
public class OrderDaoImpl {
	public List<Orders> orderrD(){
		Orders orders = null;
		//调用数据库连接工具类Util
		String sql = "select * from table_orders o,table_member m,table_product t where o.memberID=m.memberID and o.productID=t.productID";
		ArrayList<HashMap<String,Object>>  list = SqlUtil.excuteQuery(sql,null);				
		ArrayList<Orders> orderss = new ArrayList<Orders>();
		if(list.size()>0){
			for (HashMap<String, Object> map : list) {
				orders = new Orders();
				orders.setID(String.valueOf(map.get("ID")));
				orders.setOrdersID(String.valueOf(map.get("ordersID")));
				orders.setProductID(String.valueOf(map.get("productName")));
				orders.setMemberID(String.valueOf(map.get("memberName")));
				orders.setDebitName(String.valueOf(map.get("debitName")));
				orders.setDebitPhone(String.valueOf(map.get("debitPhone")));
				orders.setDebitAddress(String.valueOf(map.get("debitAddress")));
				orders.setConsigneeName(String.valueOf(map.get("consigneeName")));
				orders.setConsigneePhone(String.valueOf(map.get("consigneePhone")));
				orders.setConsigneeAddress(String.valueOf(map.get("consigneeAddress")));
				orders.setVenrity(String.valueOf(map.get("venrity")));
				orders.setOrderMoney(String.valueOf(map.get("orderMoney")));
				//orders.setAdminID(String.valueOf(map.get("adminID")));
				orders.setLeaveWord(String.valueOf(map.get("leaveWord")));
				orders.setOrdersTime(String.valueOf(map.get("ordersTime")));
				orderss.add(orders);
			}
		}
		return orderss;
	}
}
