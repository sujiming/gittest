package com.flowers.service;

import com.flowers.dao.NumupDao;

public class NumupService {
	public void getnum(String carID){
		NumupDao nd=new NumupDao();
		nd.getCar(carID);
	}
}
