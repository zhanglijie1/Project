package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dao.UpateDao;
import db.BaseDao;
import db.DBUtil;

public class UpdateDaoImpl extends BaseDao implements UpateDao{
public boolean deleteTopic(String usergx,String userId,String nicename) {
	String sql = null;
	if(nicename=="") {
		sql = "update user set user_gx = '"  + usergx + "' where user_id = '"+userId+"'";
	}
	if(usergx=="") {
		sql = "update user set user_nicename = '"+nicename+"' where user_id = '"+userId+"'";
	}
	if(nicename!=""&&usergx!="") {
		sql = "update user set user_gx = '"  + usergx + "' , user_nicename = '"+nicename+"' where user_id = '"+userId+"'";
	}
	System.out.print(sql);
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
