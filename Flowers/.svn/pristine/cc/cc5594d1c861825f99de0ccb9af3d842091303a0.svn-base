package com.flowers.dao;

import java.util.List;

import com.flowers.model.Car;
import com.flowers.util.SqlString;
import com.flowers.util.SqlUtil;

/**
 * 加入购物车
 * @author 阿飞
 */
public class CarAddDaoImpl {
	public void carAddD(Car car){
		String sql = "insert into table_car (productid,memberid,num,statu) values (?,?,?,'未支付')";
		Object[] params = new Object[]{car.getProductID(),car.getMemberID(),car.getNum()};
		SqlString.printSql(sql, params);
		SqlUtil.excuteUpdate(sql, params);
		
	}
	public List carQueryD(String productid,String memberid)
	{
		String sql = "select * from table_car where productid = ? and memberid = ? and statu = '未支付'";
		Object[] params = new Object[]{productid,memberid};
		SqlString.printSql(sql, params);
		List list = SqlUtil.excuteQuery(sql, params);
		return list;
	}
	
}
