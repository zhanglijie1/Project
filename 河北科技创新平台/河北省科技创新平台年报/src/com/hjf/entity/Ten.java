package com.hjf.entity;

public class Ten {
	private int id;
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    
    
    private String g;
    private String h;

   
    private String i;
    private String j;
    private String k;
    private String l;
    private String username;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getA() {
		return a;
	}
	public void setA(String a) {
		this.a = a;
	}
	public String getC() {
		return c;
	}
	public void setC(String c) {
		this.c = c;
	}
	public String getB() {
		return b;
	}
	public void setB(String b) {
		this.b = b;
	}
	public String getE() {
		return e;
	}
	public void setE(String e) {
		this.e = e;
	}
	public String getF() {
		return f;
	}
	public void setF(String f) {
		this.f = f;
	}
	public String getD() {
		return d;
	}
	public void setD(String d) {
		this.d = d;
	}
	public String getG() {
		return g;
	}
	public void setG(String g) {
		this.g = g;
	}
	public String getI() {
		return i;
	}
	public void setI(String i) {
		this.i = i;
	}
	public String getK() {
		return k;
	}
	public void setK(String k) {
		this.k = k;
	}
	public String getL() {
		return l;
	}
	public void setL(String l) {
		this.l = l;
	}
	public String getJ() {
		return j;
	}
	public void setJ(String j) {
		this.j = j;
	}
	public String getH() {
		return h;
	}
	public void setH(String h) {
		this.h = h;
	}
	

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public Ten(String username,String a,String b,String c,String d) {
		this.username=username;
		this.a=a;
		this.b=b;
		this.c=c;
		this.d=d;
	
		
	}
	public Ten(int id,String username,String a,String b,String c,String d) {
		this.id=id;
		this.username=username;
		this.a=a;
		this.b=b;
		this.c=c;
		this.d=d;
	
		
	}
}
