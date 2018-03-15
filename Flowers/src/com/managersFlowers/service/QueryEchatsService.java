package com.managersFlowers.service;

import java.util.ArrayList;

import com.managersFlowers.dao.QueryEchatsDao;
import com.managersFlowers.model.Echats;

public class QueryEchatsService {

	public ArrayList<Echats> queryechatsS() {
		QueryEchatsDao qed=new QueryEchatsDao();
		ArrayList<Echats> list=qed.queryechatsD();
		return list;
	}

}
