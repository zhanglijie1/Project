package com.hjf.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.hjf.entity.Er;
import com.hjf.util.DBUtil;

public class ErDao {
	
	/**
	 * 添加
	 * @param Er
	 * @return
	 */
	public boolean add1(Er Er) {
		String sql = "insert into Er1(username,zyyjfx,yjnr) values('" + Er.getUsername() + "','" + Er.getZyyjfx() + "','" + Er.getYjnr()+ "')";
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
	
	//添加2
	public boolean add2(Er Er) {
		String sql = "insert into Er2(username,jgmc1) values('" + Er.getUsername() + "','" + Er.getJgmc1()+ "')";
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
	
	//添加3
		public boolean add3(Er Er) {
			String sql = "insert into Er3(username,jgmc2,zzdj,zzpdbm) values('" + Er.getUsername() + "','" + Er.getJgmc2() + "','" + Er.getZzpdbm() + "','" + Er.getZzdj()+ "')";
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
		
		//添加4
				public boolean add4(Er Er) {
					String sql = "insert into er4(username,zsscxjdmc,szdw) values('" + Er.getUsername() + "','" + Er.getZyyjfx() + "','" + Er.getYjnr()+ "')";
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

				//添加5
				public boolean add5(Er Er) {
					String sql = "insert into er5(username,fwxm,fwnr) values('" + Er.getUsername() + "','" + Er.getZyyjfx() + "','" + Er.getYjnr()+ "')";
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
