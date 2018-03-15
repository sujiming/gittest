package com.flowers.service;

import com.flowers.dao.FrontOrderAddDao;

 /**
 * 提交订单service
 * @author 阿飞
 *
 */

public class FrontOrderAddService {
	public void frontOAddS(String orderid,String[] carids){
		FrontOrderAddDao foad = new FrontOrderAddDao();
		foad.frontOAddD(orderid, carids);
	}
}
