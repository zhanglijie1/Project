package com.hjf.entity;

public class fengmian {
	private int id;
	private String username;
	private String pingtainame;
	private String leixing;
	private String danwei;
	private String guanlibumen;
	private String name;
	private String bumen;
	private String telephone;
	private String phone;
	private String email;
	private String time;
	
	public int getId() {
		return id;
	}
	
	public String getUsername() {
		return username;
	}
	
	public String getPingtainame() {
		return pingtainame;
	}
	public String getLeixing() {
		return leixing;
	}
	
	public String getDanwei() {
		return danwei;
	}
	
	public String getGuanlibumen() {
		return guanlibumen;
	}
	
	public String getName() {
		return name;
	}
	
	public String getBumen() {
		return bumen;
	}
	
	public String getTelephone() {
		return telephone;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getEmail() {
		return email;
	}
	public String getTime() {
		return time;
	}
	public fengmian() {}
	
	public fengmian(int id,String username,String guanlibumen,String name,String telephone,String bumen,String phone,String email,String time) {
		this.id=id;
		this.username=username;
		this.guanlibumen=guanlibumen;
		this.name=name;
		this.telephone=telephone;
		this.bumen=bumen;
		this.phone=phone;
		this.email=email;
		this.time=time;
		
	}
	public fengmian(String username,String guanlibumen,String name,String telephone,String bumen,String phone,String email,String time) {
		
		this.username=username;
		this.guanlibumen=guanlibumen;
		this.name=name;
		this.telephone=telephone;
		this.bumen=bumen;
		this.phone=phone;
		this.email=email;
		this.time=time;
		
	}
}
