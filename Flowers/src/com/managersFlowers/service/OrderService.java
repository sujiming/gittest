package com.managersFlowers.service;

import java.util.List;

import com.flowers.model.Orders;
import com.managersFlowers.dao.OrderDaoImpl;

/**
 *  后台订单首次加载service层
 * @author 阿飞
 *
 */
public class OrderService {
	public List<Orders> orderS(){
		//调用dao层
		OrderDaoImpl od = new OrderDaoImpl();
		List<Orders> orderss = od.orderrD();
		return orderss;
	}
}
