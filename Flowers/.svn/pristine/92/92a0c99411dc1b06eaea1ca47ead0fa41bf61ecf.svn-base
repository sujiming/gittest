package com.managersFlowers.dao;

import java.util.Date;

import com.flowers.model.Orders;
import com.flowers.util.SqlString;
import com.flowers.util.SqlUtil;

/**
 * 后台订单修改dao层
 * @author yue
 *
 */
public class OrderEditDaoImpl {
	public int orderEditD(Orders order){
		String sql ="update  table_orders set ordersID = ?,productID = ?,memberID=?,debitName = ?,debitPhone = ?,debitAddress = ?,consigneeName = ?,"
				+ "consigneePhone = ?,consigneeAddress = ?,venrity = ?,orderMoney = ?,adminID = ?,leaveWord=?,ordersTime=? where ID = ?";
		Date date=new Date();
		Object[] params = new Object[]{order.getOrdersID(),order.getProductID(),order.getMemberID(),order.getDebitName(),
				order.getDebitPhone(),order.getDebitAddress(),order.getConsigneeName(),order.getConsigneePhone(),
				order.getConsigneeAddress(),order.getVenrity(),order.getOrderMoney(),order.getAdminID(),order.getLeaveWord(),new java.sql.Timestamp(date.getTime()),order.getID()};
		SqlString.printSql(sql, params);
		int row = SqlUtil.excuteUpdate(sql, params);
		return row;
	}
}
