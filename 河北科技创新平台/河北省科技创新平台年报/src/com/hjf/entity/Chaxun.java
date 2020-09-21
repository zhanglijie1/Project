package com.hjf.entity;

public class Chaxun {
	private String pzrq;
	private String ptmc;
	private String name;
	private String time;
	private String ptjb;
	private String ptlx;
	private String guanlibumen;
	private String ptbh;
	private String username;
	private int i;

	public String getPzrq() {
		return pzrq;
	}

	public Chaxun(int i, String pzrq, String ptmc, String name, String time, String ptjb, String ptlx,
			String username,String ptbh,String guanlibumen) {
	
		this.i=i;
		this.pzrq = pzrq;
		this.ptmc = ptmc;
		this.name = name;
		this.time = time;
		this.ptjb = ptjb;
		this.ptlx = ptlx;
		this.username = username;
		this.ptbh = ptbh;
		this.guanlibumen = guanlibumen;
	}
	public Chaxun(String pzrq, String ptmc, String name, String time, String ptjb, String ptlx,
			String ptbh,String guanlibumen) {
	
	
		this.pzrq = pzrq;
		this.ptmc = ptmc;
		this.name = name;
		this.time = time;
		this.ptjb = ptjb;
		this.ptlx = ptlx;
	
		this.ptbh = ptbh;
		this.guanlibumen = guanlibumen;
	}

	public Chaxun (String pzrq, String ptmc) {
	
		this.pzrq=pzrq;
		this.ptmc=ptmc;
	}
	public Chaxun (String pzrq) {
		
		this.pzrq=pzrq;
	
	}
	public void setPzrq(String pzrq) {
		this.pzrq = pzrq;
	}

	public String getPtmc() {
		return ptmc;
	}

	public void setPtmc(String ptmc) {
		this.ptmc = ptmc;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getI() {
		return i;
	}

	public void setI(int i) {
		this.i = i;
	}

	public String getPtjb() {
		return ptjb;
	}

	public void setPtjb(String ptjb) {
		this.ptjb = ptjb;
	}

	public String getPtlx() {
		return ptlx;
	}

	public void setPtlx(String ptlx) {
		this.ptlx = ptlx;
	}

	public String getGuanlibumen() {
		return guanlibumen;
	}

	public void setGuanlibumen(String guanlibumen) {
		this.guanlibumen = guanlibumen;
	}

	public String getPtbh() {
		return ptbh;
	}

	public void setPtbh(String ptbh) {
		this.ptbh = ptbh;
	}
	 public Chaxun() {
	      super();
	   }
	@Override
	public String toString() {
        return "pzrq='" + pzrq + "', ptmc='" + ptmc + "' , name='" + name + "', time='" + time + "', ptjb='" + ptjb + "', ptlx='" + ptlx + "', guanlibumen='" + guanlibumen + "', ptbh='" + ptbh + "'";
    }
}
