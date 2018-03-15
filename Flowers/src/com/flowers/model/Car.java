package com.flowers.model;
/**
 * 购物车类
 * @author afei
 *
 */
public class Car {
	private String carID;
	private String productName;
	private String memberID;
	private String num;
	private String caName;
	private String picture;
	private String originalPrice;
	private String productID;
	public Car(){}
	
	
	public Car(String carID, String productName, String memberID, String num, String caName, String picture,
			String originalPrice, String productID) {
		super();
		this.carID = carID;
		this.productName = productName;
		this.memberID = memberID;
		this.num = num;
		this.caName = caName;
		this.picture = picture;
		this.originalPrice = originalPrice;
		this.productID = productID;
	}


	public String getCaName() {
		return caName;
	}
	public void setCaName(String caName) {
		this.caName = caName;
	}
	public String getOriginalPrice() {
		return originalPrice;
	}
	public void setOriginalPrice(String originalPrice) {
		this.originalPrice = originalPrice;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getCarID() {
		return carID;
	}
	public void setCarID(String carID) {
		this.carID = carID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productID) {
		this.productName = productID;
	}
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
}
