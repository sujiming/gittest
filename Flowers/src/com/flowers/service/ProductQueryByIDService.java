package com.flowers.service;

import java.util.List;

import com.flowers.dao.ProductQueryByIDDaoImpl;
import com.flowers.model.Product;

public class ProductQueryByIDService {
	//根据商品编号查找返回商品信息
	public List<Product> queryByIDS(String  productID){
		ProductQueryByIDDaoImpl bld = new ProductQueryByIDDaoImpl();
		List<Product> products =bld.queryByIDD(productID);
		return products;
	}
}
