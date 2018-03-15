package com.flowers.service;

import com.flowers.dao.NumdownDao;

public class NumdownService {
	public void getdao(String carID){
		NumdownDao nd=new NumdownDao();
		nd.getCar(carID);
	}
}
