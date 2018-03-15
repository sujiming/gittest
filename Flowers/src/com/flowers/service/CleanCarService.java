package com.flowers.service;

import com.flowers.dao.CleanCarDao;

public class CleanCarService {
	public void getdao(String memberID){
		CleanCarDao cd=new CleanCarDao();
		cd.getcar(memberID);
	}
}
