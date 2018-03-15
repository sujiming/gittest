package com.flowers.service;

import java.util.ArrayList;

import com.flowers.dao.CarDao;
import com.flowers.model.Car;

public class CarService {
	public ArrayList<Car> getDao(String memberID){
		CarDao car=new CarDao();
		ArrayList<Car> list=car.getCar(memberID);
		return list;
	}
}
