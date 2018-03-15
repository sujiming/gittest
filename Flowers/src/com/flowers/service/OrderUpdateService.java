package com.flowers.service;

import com.flowers.dao.ChangecarDao;
import com.flowers.dao.GetCar;
import com.flowers.dao.OrderUpdateDao;

public class OrderUpdateService {
      public int orderUpdateService(String ordersID, String consigneeName, String consigneePhone, String consigneeAddress,
  			String leaveWord){
    	  OrderUpdateDao ud=new OrderUpdateDao();
    	  GetCar gc=new GetCar();
    	  int row=ud.orderUpdateD(ordersID,consigneeName,consigneePhone,consigneeAddress,leaveWord);
    	  String[] carids=gc.getcar(ordersID);
    	  ChangecarDao cd=new ChangecarDao();
    	  cd.updatacar(carids);
    	  return row;
    	  
      }

	
}
