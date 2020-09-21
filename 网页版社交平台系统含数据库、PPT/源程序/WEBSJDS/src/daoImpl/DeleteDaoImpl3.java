package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import dao.DeleteDao3;
import db.BaseDao;

public class DeleteDaoImpl3 extends BaseDao implements DeleteDao3{
public void deleteTopic(int topicId) {
		
		Connection conn  = null;
		PreparedStatement pst = null; 
		ResultSet rs = null; 
		int count = 0;
		
		try {
			conn = super.getConn();
			
			pst = conn.prepareStatement("select love_id from loveMe where love_topicId = ?");
			pst.setInt(1, topicId);
			rs = pst.executeQuery();
			if(rs.next()){
				count = rs.getInt(1);
			}
			
			if(count != 0){
				pst = conn.prepareStatement("delete from loveMe where love_topicId = ?");
				pst.setInt(1, topicId);
				pst.executeUpdate(); 
			}
			pst = conn.prepareStatement("delete from topic1 where topic_id1 = ?");
			pst.setInt(1, topicId);
			pst.executeUpdate();
			 
			
		} catch (SQLException e) { 
			e.printStackTrace();
		}finally{
			super.close(conn, pst, null);
		}
		

	}

}
