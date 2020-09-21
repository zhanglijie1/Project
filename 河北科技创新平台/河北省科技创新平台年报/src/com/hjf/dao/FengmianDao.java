package com.hjf.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hjf.entity.fengmian;
import com.hjf.util.DBUtil;

public class FengmianDao {
	
	/**
	 * 添加
	 * @param fengmian
	 * @return
	 */
	public boolean add(fengmian fengmian) {
		String sql = "insert into fengmian(username,guanlibumen,name,telephone,bumen,phone,email,time) values('" + fengmian.getUsername() + "','" + fengmian.getGuanlibumen() + "','" + fengmian.getName()+ "','" 
	+ fengmian.getTelephone()+ "','" + fengmian.getBumen()+ "','" + fengmian.getPhone()+ "','" + fengmian.getEmail() + "','" + fengmian.getTime()+ "')";
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
	public List<fengmian> list() {
		String sql = "select * from fengmian";
		List<fengmian> list = new ArrayList<>();
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;

		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			fengmian bean = null;
			while (rs.next()) {
				int id = rs.getInt("id");
				String username = rs.getString("username");
				String guanlibumen = rs.getString("guanlibumen");
				String name = rs.getString("name");
				String telephone = rs.getString("telephone");
				String bumen = rs.getString("bumen");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				String time = rs.getString("time");
				bean = new fengmian(id, username,guanlibumen,name,telephone,bumen,phone,email,time);
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
