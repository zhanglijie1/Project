package com.hjf.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hjf.entity.jiben;

import com.hjf.util.DBUtil;

public class jibenDao {
	
	
	public boolean add(jiben jiben) {
		String sql = "insert into jiben(ptmc,ptbh,pzny,pzwh,jsly,ptjb,szsx,ptzzxt,jjjgj,fwgmjj1,fwgmjj2,fwgmjj3,ssxk1,ssxk2,ssxk3,ytdwmc,ytdwdm,ytdwxm,bgdh,ytdwlx,gjdw,ptwzmc,wz,pttxdz,yb,name,sex,"
				+ "birth,zc,sxzy,xl,xw,bgdh1,phone,email,username) values('" +jiben.getptmc()+ "','" + jiben.getptbh()+ "','" + jiben.getpzny()+ "','" + jiben.getpzwh()
				+ "','" + jiben.getjsly()+ "','" + jiben.getptjb()+ "','" + jiben.getszsx()+ "','" + jiben.getptzzxt()+ "','" + jiben.getjjjgj()+ "','" + jiben.getfwgmjj1()
				+ "','" + jiben.getfwgmjj2()+ "','" + jiben.getfwgmjj3()+ "','" + jiben.getssxk1()+ "','" + jiben.getssxk2()+ "','" + jiben.getssxk3()
				+ "','" + jiben.getytdwmc()+ "','" + jiben.getytdwdm()+ "','" + jiben.getytdwxm()+ "','" + jiben.getbgdh()+ "','" + jiben.getytdwlx()+ "','" + jiben.getgjdw()+ "','" + jiben.getptwzmc()
				+ "','" + jiben.getwz()+ "','" + jiben.getpttxdz()+ "','" + jiben.getyb()+ "','" + jiben.getname()+ "','" + jiben.getsex()
				+ "','" + jiben.getbirth()+ "','" + jiben.getzc()+ "','" + jiben.getsxzy()+ "','" + jiben.getxl()+ "','" + jiben.getxw()+ "','" + jiben.getbgdh1()+ "','" + jiben.getphone()
				+ "','" + jiben.getemail()+ "','" + jiben.getusername()+"')";
		Connection conn = DBUtil.getConn();
		Statement state = null;
		boolean f = false;
		int a = 0;
		
		try {
			state = conn.createStatement();
			a=state.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(state, conn);
		}
		
		if (a > 0) {
			f = true;
		}
		return f;
	}
	
}
