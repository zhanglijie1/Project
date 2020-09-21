package daoImpl;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;






import entity.Topic;
import entity.Topic1;
import db.DBUtil;;


public class DianzanDao {
	
	
	public static int search(int topic_id) {
		String sql = "select count(*) from likeme where  like_topicId='"+topic_id+"' ";
	
		int shumu=0;
		Connection conn = null;
		conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;

		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			
			while (rs.next()) {
				
				shumu = rs.getInt(1);
				
				
				
				
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(state, conn);
		}
		
		
		return shumu;
		
	
	}

	
	
	

	
	
}
