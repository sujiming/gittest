package com.flowers.model;
/**
 * 订单类
 * @author 阿飞
 *
 */
public class Orders {
	private String ID;
	private String ordersID;
	private String productID;
	private String memberID;
	private String debitName;
	private String debitPhone;
	private String debitAddress;
	private String consigneeName;
	private String consigneePhone;
	private String consigneeAddress;
	private String venrity;
	private String orderMoney;
	private String adminID;
	private String leaveWord;
	private String ordersTime;
	public Orders() {
		
	}
	
	public Orders(String iD, String ordersID, String productID, String memberID, String debitName, String debitPhone,
			String debitAddress, String consigneeName, String consigneePhone, String consigneeAddress, String venrity,
			String orderMoney, String adminID, String leaveWord) {
		super();
		ID = iD;
		this.ordersID = ordersID;
		this.productID = productID;
		this.memberID = memberID;
		this.debitName = debitName;
		this.debitPhone = debitPhone;
		this.debitAddress = debitAddress;
		this.consigneeName = consigneeName;
		this.consigneePhone = consigneePhone;
		this.consigneeAddress = consigneeAddress;
		this.venrity = venrity;
		this.orderMoney = orderMoney;
		this.adminID = adminID;
		this.leaveWord = leaveWord;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getOrdersID() {
		return ordersID;
	}
	public void setOrdersID(String ordersID) {
		this.ordersID = ordersID;
	}
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getDebitName() {
		return debitName;
	}
	public void setDebitName(String debitName) {
		this.debitName = debitName;
	}
	public String getDebitPhone() {
		return debitPhone;
	}
	public void setDebitPhone(String debitPhone) {
		this.debitPhone = debitPhone;
	}
	public String getDebitAddress() {
		return debitAddress;
	}
	public void setDebitAddress(String debitAddress) {
		this.debitAddress = debitAddress;
	}
	public String getConsigneeName() {
		return consigneeName;
	}
	public void setConsigneeName(String consigneeName) {
		this.consigneeName = consigneeName;
	}
	public String getConsigneePhone() {
		return consigneePhone;
	}
	public void setConsigneePhone(String consigneePhone) {
		this.consigneePhone = consigneePhone;
	}
	public String getConsigneeAddress() {
		return consigneeAddress;
	}
	public void setConsigneeAddress(String consigneeAddress) {
		this.consigneeAddress = consigneeAddress;
	}
	public String getVenrity() {
		return venrity;
	}
	public void setVenrity(String venrity) {
		this.venrity = venrity;
	}
	public String getOrderMoney() {
		return orderMoney;
	}
	public void setOrderMoney(String orderMoney) {
		this.orderMoney = orderMoney;
	}
	public String getAdminID() {
		return adminID;
	}
	public void setAdminID(String adminID) {
		this.adminID = adminID;
	}
	public String getLeaveWord() {
		return leaveWord;
	}
	public void setLeaveWord(String leaveWord) {
		this.leaveWord = leaveWord;
	}

	public String getOrdersTime() {
		return ordersTime;
	}

	public void setOrdersTime(String ordersTime) {
		this.ordersTime = ordersTime;
	}

	public Orders(String iD, String ordersID, String productID, String memberID, String debitName, String debitPhone,
			String debitAddress, String consigneeName, String consigneePhone, String consigneeAddress, String venrity,
			String orderMoney, String adminID, String leaveWord, String ordersTime) {
		super();
		ID = iD;
		this.ordersID = ordersID;
		this.productID = productID;
		this.memberID = memberID;
		this.debitName = debitName;
		this.debitPhone = debitPhone;
		this.debitAddress = debitAddress;
		this.consigneeName = consigneeName;
		this.consigneePhone = consigneePhone;
		this.consigneeAddress = consigneeAddress;
		this.venrity = venrity;
		this.orderMoney = orderMoney;
		this.adminID = adminID;
		this.leaveWord = leaveWord;
		this.ordersTime = ordersTime;
	}
}

	 
	

	 

