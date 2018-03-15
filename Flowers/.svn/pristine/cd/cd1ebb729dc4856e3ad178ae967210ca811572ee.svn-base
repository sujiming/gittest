package com.managersFlowers.service;

import java.util.List;

import com.flowers.model.Product;
import com.managersFlowers.dao.ProductQueryDaoImpl;

/**
 * 后台商品查询service层
 * @author 阿飞
 *
 */
public class ProductQureyService {
	public List<Product> productQueryS(String productName){
		//调用商品首次加载的dao层
		ProductQueryDaoImpl pqd = new ProductQueryDaoImpl();
		List<Product> products = pqd.productQueryD(productName);
		return products;
	}
}
