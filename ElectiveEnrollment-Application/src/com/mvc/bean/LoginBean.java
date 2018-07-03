package com.mvc.bean;

public class LoginBean {
	private String userName;
	private String password;
	public String getUserName() {
		System.out.println("get" +userName);
	return userName;
	}
	public void setUserName(String userName) {
	this.userName = userName;
	System.out.println("Set" +userName);
	}
	public String getPassword() {
		System.out.println("get" +password);
	return password;
	
	}
	public void setPassword(String password) {
	this.password = password;
	System.out.println("set" +password);
	}
}
