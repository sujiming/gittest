package com.flowers.service;
import java.util.List;
import com.flowers.dao.ProductShowDaoImpl;
import com.flowers.model.Product;
/**
 * 前台商品根据属性展示service层
 * @author 阿飞
 *
 */
public class ProductShowService {
	public List<Product> productShowS(String caName){
		//调用前台商品根据属性展示dao层
		ProductShowDaoImpl psd = new ProductShowDaoImpl();
		List<Product> products = psd.productShowD(caName);
		return products;
	}
}
