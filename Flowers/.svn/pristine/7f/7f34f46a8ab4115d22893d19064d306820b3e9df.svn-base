package com.flowers.service;

import java.util.ArrayList;

import com.flowers.dao.ProductSelectByNameDao;
import com.flowers.dao.ProductSelectByPriceDao;
import com.flowers.model.Product;

public class ProductSelectByPriceService {
	public ArrayList<Product> getProduct(int mini,int maxi){
		ProductSelectByPriceDao pbd=new ProductSelectByPriceDao();
		ArrayList<Product> list=pbd.getProduct(mini, maxi);
		return list;
	}
}
