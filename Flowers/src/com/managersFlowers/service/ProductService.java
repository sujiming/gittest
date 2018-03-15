package com.managersFlowers.service;

import java.util.List;

import com.flowers.model.Product;
import com.managersFlowers.dao.ProductDaoImpl;

/**
 * 后台商品首次加载service层
 * @author 阿飞
 *
 */
public class ProductService {
	public List<Product> productS(){
		//调用商品首次加载的dao层
		ProductDaoImpl pd = new ProductDaoImpl();
		List<Product> products = pd.productD();
		return products;
	}
	
	
}
