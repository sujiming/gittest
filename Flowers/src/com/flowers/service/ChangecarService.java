package com.flowers.service;

import com.flowers.dao.ChangecarDao;

public class ChangecarService {
	public void updata(String[] carids){
		ChangecarDao cd=new ChangecarDao();
		cd.updatacar(carids);
	}
}
