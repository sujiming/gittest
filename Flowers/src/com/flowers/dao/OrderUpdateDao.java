package com.flowers.dao;

import com.flowers.model.Orders;
import com.flowers.util.SqlString;
import com.managersFlowers.util.SqlUtil;
/**
 * 用户订单修改
 * @author tom
 *
 */

public class OrderUpdateDao {
     public int  orderUpdateD(String ordersID, String consigneeName, String consigneePhone, String consigneeAddress,
 			String leaveWord){
    	 String sql ="update table_orders set consigneeName=?,consigneePhone=?,consigneeAddress=?,leaveWord=?,payment='已支付' where ordersID=? ";
    	 Object[] params=new Object[]{consigneeName,consigneePhone,consigneeAddress,leaveWord,ordersID};
    	 SqlString.printSql(sql, params);
    	 int row=SqlUtil.excuteUpdate(sql, params);
    	 return row;
     }

	
}
