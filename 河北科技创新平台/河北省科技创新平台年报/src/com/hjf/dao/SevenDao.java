package com.hjf.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hjf.entity.Seven;

import com.hjf.util.DBUtil;

public class SevenDao {
	
	

		/**
		 * Ìí¼Ó12
		 * @param Er
		 * @return
		 */
		public boolean add12(Seven Seven) {
			String sql = "insert into seven12(username,zzmc,zzzzxm,zzqsdw,zzcbsj,zzcbbh) values('" + Seven.getUsername() + "','" + Seven.getA() + "','" + Seven.getB() + "','" + Seven.getC()+ "','" + Seven.getD()+ "','" +Seven.getE()+"')";
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
		public boolean add11(Seven Seven) {
			String sql = "insert into seven11(username,gjkw,gnkx,gnyb,sci,ei,istp) values('" + Seven.getUsername() + "','" + Seven.getA() + "','" + Seven.getB() + "','" + Seven.getC()+ "','" + Seven.getD()+ "','" +Seven.getE()+ "','" +Seven.getF()+"')";
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
		 * Ìí¼Ó22
		 * @param Er
		 * @return
		 */
		public boolean add22(Seven Seven) {
			String sql = "insert into seven22(username,yscgmc,yscglx,yscgwcdw,yscgzzwcr,yscgqdsj) values('" + Seven.getUsername() + "','" + Seven.getA() + "','" + Seven.getB() + "','" + Seven.getC()+ "','" + Seven.getD()+ "','" +Seven.getE()+"')";
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
