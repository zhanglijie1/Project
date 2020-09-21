package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.UserDao;
import db.BaseDao;
import entity.Users;

public class UserDaoImpl extends BaseDao implements UserDao{

public Users isLogin(Users users){
		
		Connection conn  = null;
		PreparedStatement pst = null;
		ResultSet rs = null; 
		Users u = null;
		
		try {
			conn = super.getConn();
			pst = conn.prepareStatement("select * from user where user_username = ? and user_password = ?");
			pst.setString(1, users.getUserName());
			pst.setString(2, users.getPassWord());
			
			rs = pst.executeQuery();
			
			if(rs.next()){
				u = new Users(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
			} 
		} catch (SQLException e) { 
			e.printStackTrace();
		}finally{
			super.close(conn, pst, rs);
		}
		 
		return u;
		
	}

public  Users isLogin1(String username){
	
	Connection conn  = null;
	PreparedStatement pst = null;
	ResultSet rs = null; 
	Users u = null;
	
	try {
		conn = super.getConn();
		pst = conn.prepareStatement("select * from user where user_username = ?");
		pst.setString(1, username);
	
		
		rs = pst.executeQuery();
		
		if(rs.next()){
			u = new Users(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
		} 
	} catch (SQLException e) { 
		e.printStackTrace();
	}finally{
		super.close(conn, pst, rs);
	}
	 
	return u;
	
}

public  Users isLogin2(String username){
	
	Connection conn  = null;
	PreparedStatement pst = null;
	ResultSet rs = null; 
	Users u = null;
	System.out.println(username);
	try {
		conn = super.getConn();
		pst = conn.prepareStatement("select * from user where user_username = ?");
		pst.setString(1, username);
	
		
		rs = pst.executeQuery();
		
		if(rs.next()){
			u = new Users(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(7));
		} 
	} catch (SQLException e) { 
		e.printStackTrace();
	}finally{
		super.close(conn, pst, rs);
	}
	 
	return u;
	
}

}
