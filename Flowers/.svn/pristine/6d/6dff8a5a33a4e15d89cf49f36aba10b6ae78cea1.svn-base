package com.managersFlowers.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.managersFlowers.util.PageModel;
import com.managersFlowers.util.SqlString;
import com.managersFlowers.util.SqlUtil;
public class EmpDaoImpl {

	public ArrayList<HashMap<String,Object>>  queryList(){
		String sql="select * from table_product";
		ArrayList<HashMap<String,Object>>   list  = SqlUtil.excuteQuery(sql, null);
		SqlUtil.close();
		return list;
	}
	public ArrayList<HashMap<String,Object>>  queryOrderList(){
		String sql="select * from table_orders";
		ArrayList<HashMap<String,Object>>   list  = SqlUtil.excuteQuery(sql, null);
		SqlUtil.close();
		return list;
	}
	public ArrayList<HashMap<String,Object>>  queryMemberList(){
		String sql="select ID,ordersID,productName,memberName,debitAddress,debitName,debitPhone,"
				+ "consigneeAddress,consigneeName,consigneePhone,venrity,orderMoney,adminID,leaveWord,ordersTime "
				+ "from table_orders o,table_product p,table_member m "
				+ "where p.productID=o.productID and o.memberID=m.memberID";
		ArrayList<HashMap<String,Object>>   list  = SqlUtil.excuteQuery(sql, null);
		SqlUtil.close();
		return list;
	}
	 	
	public PageModel  queryPageList(String page,String pageSize ){
		
		String sql="select * from table_product";
		
		PageModel  pageModel=new PageModel(sql,page,pageSize);
		
		List list  = SqlUtil.excuteQuery(pageModel.toMysqlSql(), null);
		SqlString.printSql(pageModel.toMysqlSql(), null);
		pageModel.setList(list);
		
		ArrayList<HashMap<String,Object>>  myList=  SqlUtil.excuteQuery(pageModel.toCountSql(), null);
		if(myList.size()>0){
			HashMap  map  =myList.get(0);
			Integer  count =Integer.valueOf(String.valueOf(map.get("count")));
			//把条数放到模型中1
			pageModel.setTotal(count);
		}
		return pageModel;
	}	
	public PageModel  queryOrderPageList(String page,String pageSize ){
		
		String sql="select ID,ordersID,productName,memberName,debitAddress,debitName,debitPhone,"
				+ "consigneeAddress,consigneeName,consigneePhone,venrity,orderMoney,adminID,leaveWord,ordersTime "
				+ "from table_orders o,table_product p,table_member m "
				+ "where p.productID=o.productID and o.memberID=m.memberID";
		PageModel  pageModel=new PageModel(sql,page,pageSize);
		
		List list  = SqlUtil.excuteQuery(pageModel.toMysqlSql(), null);
		SqlString.printSql(pageModel.toMysqlSql(), null);
		pageModel.setList(list);
		
		ArrayList<HashMap<String,Object>>  myList=  SqlUtil.excuteQuery(pageModel.toCountSql(), null);
		if(myList.size()>0){
			HashMap  map  =myList.get(0);
			Integer  count =Integer.valueOf(String.valueOf(map.get("count")));
			//把条数放到模型中1
			pageModel.setTotal(count);
		}
		return pageModel;
	}	
	public PageModel  queryMemberPageList(String page,String pageSize ){
		
		String sql="select * from table_member";
//		System.out.println("dao");
		PageModel  pageModel=new PageModel(sql,page,pageSize);
		
		List list  = SqlUtil.excuteQuery(pageModel.toMysqlSql(), null);
		SqlString.printSql(pageModel.toMysqlSql(), null);
		pageModel.setList(list);
		
		ArrayList<HashMap<String,Object>>  myList=  SqlUtil.excuteQuery(pageModel.toCountSql(), null);
		if(myList.size()>0){
			HashMap  map  =myList.get(0);
			Integer  count =Integer.valueOf(String.valueOf(map.get("count")));
			//把条数放到模型中1
			pageModel.setTotal(count);
		}
		return pageModel;
	}		
}
