package com.managersFlowers.service;

import com.managersFlowers.dao.OrderRemoveDaoImpl;
import com.managersFlowers.dao.ProductRemoveDaoImpl;
/**
 * 后台订单删除service层
 * @author yue
 *
 */
public class OrderRemoveService {

	public int orderRemoveS(String iD) {
		//调用dao层
		OrderRemoveDaoImpl prd = new OrderRemoveDaoImpl();
		int row = prd.orderRemoveD(iD);
		return row;
	}

}
