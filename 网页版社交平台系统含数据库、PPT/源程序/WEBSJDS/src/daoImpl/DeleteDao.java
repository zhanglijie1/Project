package daoImpl;


import java.sql.Connection;

import java.sql.Statement;




import db.DBUtil;;


public class DeleteDao {
	


	public boolean del(int userId) {

		
		String sql = "delete from user where user_id='"+userId+"'";
		Connection conn = null;
		conn = DBUtil.getConn();
		Statement state = null;
		
		boolean f = false;
		int a1 = 0;
		
		try {
			state = conn.createStatement();
			
			a1=state.executeUpdate(sql);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(state, conn);
		}
		
		if (a1 > 0) {
			f = true;
		}
		return f;
	}
	

	
	
}
