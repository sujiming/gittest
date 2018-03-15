package com.managersFlowers.service;

import com.flowers.model.Orders;
import com.managersFlowers.dao.OrderAddDaoImpl;

/**
 * 后台订单添加service层
 * @author 阿飞
 *
 */
public class OrderAddService {
	public int ordersAddS(Orders orders){
		//调用dao层
		OrderAddDaoImpl oad = new OrderAddDaoImpl();
		int row = oad.orderAddD(orders);
		return row;
	}
}
