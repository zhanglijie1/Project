package com.hjf.entity;

public class user {

	private int id;
	private String username;
	private String password;
    private int cishu;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public String getPassword() {
		return password;
	}
	
	
	public user() {}
	
	public user(int id, String username, String password) {
		this.id= id;
		this.username = username;
		this.password = password;
	}
	
	public user(String username, String password) {
		this.username = username;
		this.password = password;
	}
	public user(String username, String password,int cishu) {
		this.username = username;
		this.password = password;
		this.cishu=cishu;
	}
	public int getCishu() {
		return cishu;
	}
	public void setCishu(int cishu) {
		this.cishu = cishu;
	}
}
