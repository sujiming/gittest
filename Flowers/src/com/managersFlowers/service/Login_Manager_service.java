package com.managersFlowers.service;

import com.managersFlowers.dao.Login_Manager_dao;
import com.managersFlowers.model.Admins;

public class Login_Manager_service {
	public Admins getdao(String id,String password){
		Login_Manager_dao login=new Login_Manager_dao();
		Admins admin=login.getManager(id,password);
		return admin;
	}
}
