package com.flowers.model;

public class Product {
	String productID;
	String productName;
	String caName;
	String picture;
	String talkTo;
	String originalprice;
	String festival;
	String recmmend;
	String miaoshu;
	public Product(){}
	public Product(String productID, String productName, String caName, String picture, String talkTo,
			String originalPrice, String festival, String recmmend, String describe) {
		super();
		this.productID = productID;
		this.productName = productName;
		this.caName = caName;
		this.picture = picture;
		this.talkTo = talkTo;
		this.originalprice = originalPrice;
		this.festival = festival;
		this.recmmend = recmmend;
		this.miaoshu = describe;
	}
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getCaName() {
		return caName;
	}
	public void setCaName(String caName) {
		this.caName = caName;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getTalkTo() {
		return talkTo;
	}
	public void setTalkTo(String talkTo) {
		this.talkTo = talkTo;
	}
	public String getOriginalPrice() {
		return originalprice;
	}
	public void setOriginalPrice(String originalPrice) {
		this.originalprice = originalPrice;
	}
	public String getFestival() {
		return festival;
	}
	public void setFestival(String festival) {
		this.festival = festival;
	}
	public String getRecmmend() {
		return recmmend;
	}
	public void setRecmmend(String recmmend) {
		this.recmmend = recmmend;
	}
	public String getMiaoshu() {
		return miaoshu;
	}
	public void setMiaoshu(String miaoshu) {
		this.miaoshu = miaoshu;
	}
}
