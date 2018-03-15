package com.managersFlowers.service;

import java.util.List;

import com.managersFlowers.dao.OrderConnectDaoImpl;
import com.managersFlowers.model.OrdersConnet;
/**
 *  后台订单首次加载service层
 * @author 月
 *
 */
public class OrderConnectService {

	public List<OrdersConnet> orderconS() {
		//调用dao层
		OrderConnectDaoImpl ocd = new OrderConnectDaoImpl();
		List<OrdersConnet> orderss = ocd.orderconD();
		return orderss;
	}

	public String orderWordS(String iD) {
		OrderConnectDaoImpl ocd = new OrderConnectDaoImpl();
		String word = ocd.orderconwordD(iD);
		return word;
	}

}
