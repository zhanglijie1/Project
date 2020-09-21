package com.hjf.dao;

import java.sql.Connection;
import java.sql.Statement;

import com.hjf.entity.Er;
import com.hjf.entity.San;
import com.hjf.util.DBUtil;

public class SanDao {

	/**
	 * 添加1
	 * @param Er
	 * @return
	 */
	public boolean add1(San San) {
		String sql = "insert into san1(username,xyname,xysex,xybirth,xyxl,xyxw,xybyyx,xysxzy,xyzc,xyrccc,xygd,xygzxz,xyryzt,xyszdw) values('" + San.getUsername() + "','" + San.getXyname() + "','" + San.getXysex() + "','" + San.getXybirth()+ "','" + San.getXyxl()+ "','" + San.getXyxw()+ "','" + San.getXybyyx()+ "','" + San.getXysxzy()+ "','" + San.getXyzc()+ "','" + San.getXyrccc()+ "','" + San.getXygd()+ "','" + San.getXygzxz()+ "','" + San.getXyryzt() + "','" + San.getXyszdw()+"')";
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
	
	/**
	 * 添加2
	 * @param Er
	 * @return
	 */
	public boolean add2(San San) {
		String sql = "insert into san2(username,xzname,xzsex,xzbirth,xzxl,xzxw,xzbyyx,xzsxzy,xzzc,xzrccc) values('" + San.getUsername() + "','" + San.getXyname() + "','" + San.getXysex() + "','" + San.getXybirth()+ "','" + San.getXyxl()+ "','" + San.getXyxw()+ "','" + San.getXybyyx()+ "','" + San.getXysxzy()+ "','" + San.getXyzc()+ "','" + San.getXyrccc()+"')";
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
	
	/**
	 * 添加3
	 * @param Er
	 * @return
	 */
	public boolean add3(San San) {
		String sql = "insert into san3(username,jsname,jssex,jsbirth,jsxl,jsxw,jsbyyx,jssxzy,jszc,jsrccc,jsgd,jsgzxz) values('" + San.getUsername() + "','" + San.getXyname() + "','" + San.getXysex() + "','" + San.getXybirth()+ "','" + San.getXyxl()+ "','" + San.getXyxw()+ "','" + San.getXybyyx()+ "','" + San.getXysxzy()+ "','" + San.getXyzc()+ "','" + San.getXyrccc()+ "','" + San.getXygd()+ "','" + San.getXygzxz()+"')";
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
	
	/**
	 * 添加8
	 * @param Er
	 * @return
	 */
	public boolean add8(San San) {
		String sql = "insert into san8(username,xygdname,xygdsex,xygdbirth,xygdxl,xygdxw,xygdbyyx,xygdsxzy,xygdzc,xygdrccc,xygdgd,xygdgzxz,xygdryzt,xygdszdw) values('" + San.getUsername() + "','" + San.getXyname() + "','" + San.getXysex() + "','" + San.getXybirth()+ "','" + San.getXyxl()+ "','" + San.getXyxw()+ "','" + San.getXybyyx()+ "','" + San.getXysxzy()+ "','" + San.getXyzc()+ "','" + San.getXyrccc()+ "','" + San.getXygd()+ "','" + San.getXygzxz()+ "','" + San.getXyryzt() + "','" + San.getXyszdw()+"')";
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
