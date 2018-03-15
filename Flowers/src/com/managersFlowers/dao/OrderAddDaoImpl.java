package com.managersFlowers.dao;


import java.text.SimpleDateFormat;
import java.util.Date;

import com.flowers.model.Orders;
import com.flowers.util.SqlString;
import com.flowers.util.SqlUtil;

/**
 * 后台订单添加dao层
 * @author 阿飞
 *
 */
public class OrderAddDaoImpl {
	public int orderAddD(Orders orders){
		String sql ="insert into table_orders (ordersid,productid,memberid,debitname,debitphone,debitaddress,"
				+ "consigneename,consigneephone,consigneeaddress,venrity,ordermoney,adminid,leaveword,ordersTime) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Date date=new Date();
		Object[] params = new Object[]{orders.getOrdersID(),orders.getProductID(),orders.getMemberID(),orders.getDebitName(),orders.getDebitPhone(),orders.getDebitAddress(),
				orders.getConsigneeName(),orders.getConsigneePhone(),orders.getConsigneeAddress(),orders.getVenrity(),orders.getOrderMoney(),orders.getAdminID(),
				orders.getLeaveWord(),new java.sql.Timestamp(date.getTime())};//插入当前带时分秒的时间
		SqlString.printSql(sql, params);
		int row = SqlUtil.excuteUpdate(sql, params);
		return row;
	}
}
