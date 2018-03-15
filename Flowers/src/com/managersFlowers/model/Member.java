package com.managersFlowers.model;

public class Member {
	String member_id;
	String member_name;
	String member_password;
	String member_email;
	String member_sex;
	String member_telephone;
	String member_qq;
	String member_adress;
	public Member(){}
	public Member(String member_id, String member_name, String member_password, String member_email, String member_sex, String member_telephone, String member_qq,
			String member_adress) {
		super();
		this.member_id = member_id;
		this.member_name = member_name;
		this.member_password = member_password;
		this.member_email = member_email;
		this.member_sex = member_sex;
		this.member_telephone = member_telephone;
		this.member_qq = member_qq;
		this.member_adress = member_adress;
	}
	
	public String getId() {
		return member_id;
	}
	public void setId(String member_id) {
		this.member_id = member_id;
	}
	public String getName() {
		return member_name;
	}
	public void setName(String member_name) {
		this.member_name = member_name;
	}
	public String getPassword() {
		return member_password;
	}
	public void setPassword(String member_password) {
		this.member_password = member_password;
	}
	public String getEmail() {
		return member_email;
	}
	public void setEmail(String member_email) {
		this.member_email = member_email;
	}
	public String getSex() {
		return member_sex;
	}
	public void setSex(String member_sex) {
		this.member_sex = member_sex;
	}
	public String getTelephone() {
		return member_telephone;
	}
	public void setTelephone(String member_telephone) {
		this.member_telephone = member_telephone;
	}
	public String getQq() {
		return member_qq;
	}
	public void setQq(String member_qq) {
		this.member_qq = member_qq;
	}
	public String getAdress() {
		return member_adress;
	}
	public void setAdress(String member_adress) {
		this.member_adress = member_adress;
	}
	
}
