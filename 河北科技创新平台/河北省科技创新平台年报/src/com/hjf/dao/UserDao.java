package com.hjf.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.hjf.entity.user;
import com.hjf.util.DBUtil;

public class UserDao {
	
	
	/**
	 * 通过username password得到User
	 * @param name
	 * @return
	 */
	public user getUserByName(String username ,String password) {
		String sql = "select * from user where username ='" + username + "' and password ='" + password + "'";
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;
		user user = null;
		
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			while (rs.next()) {
				int id = rs.getInt("id");
				String username1 = rs.getString("username");
				String password1 = rs.getString("password");
				int cishu = rs.getInt("cishu");
				user = new user(username1,password1,cishu);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, state, conn);
		}
		
		return user;
	}
	

	/**
	 * 查找
	 * @param name
	 * @param teacher
	 * @param classroom
	 * @return
	 */
	public List<user> login(String username, String password) {
		String sql = "select * from user where ";
		if (username != "") {
			sql += "username = '" + username + "'";
		}else
		if (password != "") {
			sql += "password = '" + password + "'";
		}
		List<user> list = new ArrayList<>();
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;

		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			user bean = null;
			while (rs.next()) {
				int id = rs.getInt("id");
				String username2 = rs.getString("username");
				String password2 = rs.getString("password");
				
				bean = new user(id, username2, username2);
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, state, conn);
		}
		
		return list;
	}
	

	/**
	 * 修改密码
	 * @param name
	 * @param pass
	 */
	public boolean update(user user) {
		String sql = "update user set  password='" + user.getPassword() 
			+ "' where username='" + user.getUsername() + "'";
		Connection conn = DBUtil.getConn();
		Statement state = null;
		boolean f = false;
		int a = 0;

		try {
			state = conn.createStatement();
			a = state.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(state, conn);
		}
		
		if (a > 0) {
			f = true;
		}
		return f;
	}
	
	
	public boolean update1(user user) {
		String sql = "update user set   cishu='" + 1 +"' where username='" + user.getUsername() + "'";
		Connection conn = DBUtil.getConn();
		Statement state = null;
		boolean f = false;
		int a = 0;

		try {
			state = conn.createStatement();
			a = state.executeUpdate(sql);
		} catch (SQLException e) {
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
