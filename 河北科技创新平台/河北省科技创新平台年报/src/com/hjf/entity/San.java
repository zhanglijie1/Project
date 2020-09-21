package com.hjf.entity;

public class San {
	private int id;
	private String xyname;
	private String xysex;
	private String xybirth;
	private String xyxl;
	private String xyxw;
	private String xybyyx;
	private String xysxzy;
	private String xyzc;
	private String xyrccc;
	private String xygd;
	private String xygzxz;
	private String xyryzt;
	private String xyszdw;
	private String username;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getXyname() {
		return xyname;
	}
	public void setXyname(String xyname) {
		this.xyname = xyname;
	}
	public String getXysex() {
		return xysex;
	}
	public void setXysex(String xysex) {
		this.xysex = xysex;
	}
	public String getXybirth() {
		return xybirth;
	}
	public void setXybirth(String xybirth) {
		this.xybirth = xybirth;
	}
	public String getXyxl() {
		return xyxl;
	}
	public void setXyxl(String xyxl) {
		this.xyxl = xyxl;
	}
	public String getXyxw() {
		return xyxw;
	}
	public void setXyxw(String xyxw) {
		this.xyxw = xyxw;
	}
	public String getXysxzy() {
		return xysxzy;
	}
	public void setXysxzy(String xysxzy) {
		this.xysxzy = xysxzy;
	}
	public String getXybyyx() {
		return xybyyx;
	}
	public void setXybyyx(String xybyyx) {
		this.xybyyx = xybyyx;
	}
	public String getXyzc() {
		return xyzc;
	}
	public void setXyzc(String xyzc) {
		this.xyzc = xyzc;
	}
	public String getXyrccc() {
		return xyrccc;
	}
	public void setXyrccc(String xyrccc) {
		this.xyrccc = xyrccc;
	}
	public String getXygd() {
		return xygd;
	}
	public void setXygd(String xygd) {
		this.xygd = xygd;
	}
	public String getXygzxz() {
		return xygzxz;
	}
	public void setXygzxz(String xygzxz) {
		this.xygzxz = xygzxz;
	}
	public String getXyszdw() {
		return xyszdw;
	}
	public void setXyszdw(String xyszdw) {
		this.xyszdw = xyszdw;
	}
	public String getXyryzt() {
		return xyryzt;
	}
	public void setXyryzt(String xyryzt) {
		this.xyryzt = xyryzt;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public San(String username,String xyname,String xysex,String xybirth,String xyxl,String xyxw,String xybyyx,String xysxzy,String xyzc,String xyrccc,String xygd,String xygzxz,String xyryzt,String xyszdw) {
		this.xyname=xyname;
		this.xysex=xysex;
		this.xybirth=xybirth;
		this.xyxl=xyxl;
		this.xyxw=xyxw;
		this.xybyyx=xybyyx;
		this.xysxzy=xysxzy;
		this.xyzc=xyzc;
		this.xyrccc=xyrccc;
		this.xygd=xygd;
		this.xygzxz=xygzxz;
		this.xyryzt=xyryzt;
		this.xyszdw=xyszdw;
		this.username=username;
	}
	public San(String username,String xyname,String xysex,String xybirth,String xyxl,String xyxw,String xybyyx,String xysxzy,String xyzc,String xyrccc) {
		this.xyname=xyname;
		this.xysex=xysex;
		this.xybirth=xybirth;
		this.xyxl=xyxl;
		this.xyxw=xyxw;
		this.xybyyx=xybyyx;
		this.xysxzy=xysxzy;
		this.xyzc=xyzc;
		this.xyrccc=xyrccc;
		
		this.username=username;
	}
	public San(String username,String xyname,String xysex,String xybirth,String xyxl,String xyxw,String xybyyx,String xysxzy,String xyzc,String xyrccc,String xygd,String xygzxz) {
		this.xyname=xyname;
		this.xysex=xysex;
		this.xybirth=xybirth;
		this.xyxl=xyxl;
		this.xyxw=xyxw;
		this.xybyyx=xybyyx;
		this.xysxzy=xysxzy;
		this.xyzc=xyzc;
		this.xyrccc=xyrccc;
		this.xygd=xygd;
		this.xygzxz=xygzxz;
		this.username=username;
	}

}
