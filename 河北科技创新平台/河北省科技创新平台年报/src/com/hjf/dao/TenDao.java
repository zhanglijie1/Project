package com.hjf.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.hjf.entity.Ten;

import com.hjf.util.DBUtil;

public class TenDao {
	
	

		/**
		 * 添加1
		 * @param Er
		 * @return
		 */
		public boolean add1(Ten Ten) {
			String sql = "insert into ten1(username,xyrclb,xyrcmc,xyrcclsj,xyrcljdw) values('" + Ten.getUsername() + "','" + Ten.getA() + "','" + Ten.getB() + "','" + Ten.getC()+ "','" + Ten.getD()+"')";
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
		 * 全部数据
		 * @param name
		 * @param teacher
		 * @param classroom
		 * @return
		 */
		public static List<Ten> list() {
			String sql = "select * from Ten1 from ";
			List<Ten> list = new ArrayList<>();
			Connection conn = DBUtil.getConn();
			Statement state = null;
			ResultSet rs = null;

			try {
				state = conn.createStatement();
				rs = state.executeQuery(sql);
				Ten bean = null;
				while (rs.next()) {
					int id = rs.getInt("id");
					String username2 = rs.getString("name");
					String xyrclb2 = rs.getString("xyrclb");
					String xyrcmc2 = rs.getString("xyrcmc");
					String xyrcclsj2 = rs.getString("xyrcclsj");
					String xyrcljdw2 = rs.getString("xyrcljdw");
					bean = new Ten(id, username2, xyrclb2, xyrcmc2, xyrcclsj2, xyrcljdw2);
					list.add(bean);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DBUtil.close(rs, state, conn);
			}
			
			return list;
		}

}
