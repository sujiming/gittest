package com.flowers.model;
/*
 * 信息类
 */
public class Message {
	private String msg;
	private String code;
	public Message() {
		
	}
	public Message(String code, String msg) {
		super();
		this.msg = msg;
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	
}
