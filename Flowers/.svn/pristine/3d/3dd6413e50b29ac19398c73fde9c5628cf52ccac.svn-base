package com.flowers.service;

import java.util.ArrayList;

import com.flowers.dao.ProductSelectByNameDao;
import com.flowers.model.Product;

public class ProductSelectByNameService {
	public ArrayList<Product> getProduct(String name){
		ProductSelectByNameDao pbd=new ProductSelectByNameDao();
		ArrayList<Product> list=pbd.getProductbyName(name);
		return list;
	}
}
