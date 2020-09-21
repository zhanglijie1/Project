package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.TopicDao3;
import db.BaseDao;
import entity.Topic1;

public class TopicDaoImpl3 extends BaseDao implements TopicDao3{
	//添加讨论话题
public void insertTopic(Topic1 topic) {
		
		Connection conn  = null;
		PreparedStatement pst = null;
		ResultSet rs = null;  
		
		try {
			conn = super.getConn();
			pst = conn.prepareStatement("insert into topic1 values(null,?,?,?)");
			
			pst.setString(1, topic.getWebtext());
			pst.setInt(2, topic.getUserId());
			pst.setString(3, topic.getTime());
			pst.executeUpdate(); 
			
		} catch (SQLException e) { 
			e.printStackTrace();
		}finally{
			super.close(conn, pst, rs);
		}
		
		
	}
}
