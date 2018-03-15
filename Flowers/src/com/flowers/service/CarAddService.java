package com.flowers.service;

import java.util.List;

import com.flowers.dao.CarAddDaoImpl;
import com.flowers.model.Car;

/**
 * 加入购物车的service层
 * @author 阿飞
 *
 */
public class CarAddService {
	CarAddDaoImpl cad = new CarAddDaoImpl();
	public void carAddS(Car car){
		//调用dao层
		
		cad.carAddD(car);
	}
	public List carQueryS(String productid,String memberid){
		
		List list = cad.carQueryD(productid, memberid);
		return list;
	}
}
