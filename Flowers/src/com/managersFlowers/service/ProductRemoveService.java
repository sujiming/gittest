package com.managersFlowers.service;

import com.managersFlowers.dao.ProductRemoveDaoImpl;

/**
 * 后台商品删除service层
 * @author 阿飞
 *
 */
public class ProductRemoveService {
	public int productRemoveS(String id){
		//调用dao层
		ProductRemoveDaoImpl prd = new ProductRemoveDaoImpl();
		int row = prd.productRemoveD(id);
		return row;
	}

}
