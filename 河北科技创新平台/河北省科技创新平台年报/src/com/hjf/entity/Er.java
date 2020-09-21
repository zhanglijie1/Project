package com.hjf.entity;

public class Er {
	private int id;
	private String zyyjfx;
	private String yjnr;
	private String jgmc1;
	private String jgmc2;
	private String zzpdbm;
	private String zzdj;
	private String zsscxjdmc;
	private String szdw;
	private String username;
	private String fwxm;
	private String fwnr;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getZyyjfx() {
		return zyyjfx;
	}
	public void setZyyjfx(String zyyjfx) {
		this.zyyjfx = zyyjfx;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getYjnr() {
		return yjnr;
	}
	public void setYjnr(String yjnr) {
		this.yjnr = yjnr;
	}
	public String getJgmc1() {
		return jgmc1;
	}
	public void setJgmc1(String jgmc1) {
		this.jgmc1 = jgmc1;
	}

	//1
	public Er(String username,String zyyjfx,String yjnr) {
		this.username=username;
		this.zyyjfx=zyyjfx;
		this.yjnr=yjnr;
		
	}
	//2
	public Er(String username,String jgmc1) {
		this.username=username;
		this.jgmc1=jgmc1;
	}
	//3
	public Er(String username,String jgmc2,String zzdj,String zzpdbm) {
		this.username=username;
		this.zzdj=zzdj;
		this.zzpdbm=zzpdbm;
		this.jgmc2=jgmc2;
		
	}
	//4
	//public Er(String username,String zsscxjdmc,String szdw) {
		//this.username=username;
		//this.zsscxjdmc=zsscxjdmc;
		//this.szdw=szdw;
	//}
	public String getJgmc2() {
		return jgmc2;
	}
	public void setJgmc2(String jgmc2) {
		this.jgmc2 = jgmc2;
	}
	public String getZzdj() {
		return zzdj;
	}
	public void setZzdj(String zzdj) {
		this.zzdj = zzdj;
	}
	public String getZzpdbm() {
		return zzpdbm;
	}
	public void setZzpdbm(String zzpdbm) {
		this.zzpdbm = zzpdbm;
	}

	public String getSzdw() {
		return szdw;
	}
	public void setSzdw(String szdw) {
		this.szdw = szdw;
	}
	public String getZsscxjdmc() {
		return zsscxjdmc;
	}
	public void setZsscxjdmc(String zsscxjdmc) {
		this.zsscxjdmc = zsscxjdmc;
	}
	public String getFwxm() {
		return fwxm;
	}
	public void setFwxm(String fwxm) {
		this.fwxm = fwxm;
	}
	public String getFwnr() {
		return fwnr;
	}
	public void setFwnr(String fwnr) {
		this.fwnr = fwnr;
	}
}
