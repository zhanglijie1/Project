package com.hjf.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import entity.Users;
import db.DBUtil;

public class UserDao {
	
	
	/**
	 * 通过username password得到User
	 * @param name
	 * @return
	 */
	public Users getUserByName(String username ,String password) {
		String sql = "select * from user where user_username ='" + username + "' and user_password ='" + password + "'";
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;
		Users user = null;
		
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			while (rs.next()) {
				String username1 = rs.getString("user_username");
				String password1 = rs.getString("user_password");
				user = new Users(username1,password1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, state, conn);
		}
		
		return user;
	}
	

	
	

	/**
	 * 修改密码
	 * @param name
	 * @param pass
	 */
	public boolean update(Users user) {
		String sql = "update user set  user_password='" + user.getPassWord() 
			+ "' where user_username='" + user.getUserName() + "'";
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
