package com.managersFlowers.service;

import com.flowers.model.Product;
import com.managersFlowers.dao.ProductAddDaoImpl;

/**
 * 后台商品增加service层
 * @author 阿飞
 *
 */
public class ProductAddService {
	public int productAddS(Product product){
		//调用dao层
		ProductAddDaoImpl pad = new ProductAddDaoImpl();
		int row = pad.productAddD(product);
		return row;
	}
}
