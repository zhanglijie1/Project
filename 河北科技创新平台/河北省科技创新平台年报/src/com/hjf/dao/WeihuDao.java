package com.hjf.dao;

import java.sql.Connection;
import java.sql.Statement;

import com.hjf.entity.Er;
import com.hjf.entity.Weihu;
import com.hjf.util.DBUtil;

public class WeihuDao {

	/**
	 * Ìí¼Ó1
	 * @param Er
	 * @return
	 */
	public boolean add(Weihu Weihu) {
		String sql = "insert into weihu(username,ptbh,ptmc,ytdw,ptjb,ptlx,pzwh,pzrq) values('" + Weihu.getUsername() + "','" + Weihu.getA() + "','" + Weihu.getB() + "','" + Weihu.getC()+ "','" + Weihu.getD()+ "','" + Weihu.getE()+ "','" + Weihu.getF()+ "','" + Weihu.getG()+"')";
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
