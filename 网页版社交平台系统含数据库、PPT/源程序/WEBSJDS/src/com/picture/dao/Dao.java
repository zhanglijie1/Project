package com.picture.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import db.BaseDao;
import entity.Users;


public class Dao extends BaseDao{
	Connection conn=null;
	private PreparedStatement ps;
	public void add(Users picture){
		
        try {
        	conn = super.getConn();
            String sql="update user set user_img=? where user_username=? " ;
			ps=conn.prepareStatement(sql);
			ps.setString(2,picture.getUserName());
			ps.setString(1,picture.getUserimg());
			  ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
      
	}
	

	
	
}
