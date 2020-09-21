package daoImpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.TopicListDao2;
import db.BaseDao;
import entity.Topic1;
import entity.Users;
public class TopicListDaoImpl2 extends BaseDao implements TopicListDao2{
public List<Topic1> getMeAndAllFriendTopic() {
		
		Connection conn  = null;
		PreparedStatement pst = null;
		ResultSet rs = null;  
		   
		List<Topic1> list = new ArrayList<Topic1>(); 
		
		try {
			conn = super.getConn();  
			pst = conn.prepareStatement("select u.user_nicename,t.topic_webtext,t.topic_id1,u.user_username,u.user_id,t.time,u.user_img from topic1 t,user u where t.user_id = u.user_id order by t.topic_id1 desc");
			rs = pst.executeQuery();
			while(rs.next()){
				Topic1 topic = new Topic1();
					Users users = new Users();
					users.setNiceName(rs.getString(1));
					users.setUserName(rs.getString(4));
					users.setUserId(rs.getInt(5));
					users.setUserimg(rs.getString(7));
				topic.setWebtext(rs.getString(2)); 
				topic.setTopicId(rs.getInt(3));
				topic.setTime(rs.getString(6));
				TopicListDao2 topicListDao = new TopicListDaoImpl2();
				int praiseCount = topicListDao.getPraiseCount(rs.getInt(3));
				topic.setPraisecount(praiseCount);
				topic.setUsers(users); 
				
				List<Users> praisePeopleNameList = topicListDao.getPraisePeopleName(rs.getInt(3));
				topic.setList(praisePeopleNameList);
				
				list.add(topic);
				 
			}  
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			super.close(conn, pst, rs);
		} 
		return list;
	}
	
   public int getPraiseCount(int topicId){
	   
	    Connection conn  = null;
	    PreparedStatement pst = null;
		ResultSet rs = null;
		int praiseCount = 0;
		try {
			conn = super.getConn();
			pst = conn.prepareStatement("select count(l.love_topicId) from loveme l where l.love_topicId = ?");
			pst.setInt(1, topicId);
			rs = pst.executeQuery();
			while(rs.next()){
				praiseCount = rs.getInt(1); 
			}
		} catch (SQLException e) { 
			e.printStackTrace();
		}finally{
			super.close(conn, pst, rs);
		}
	   return praiseCount;
   }

	public List<Users> getPraisePeopleName(int topicId){
		
		Connection conn  = null;
	    PreparedStatement pst = null;
		ResultSet rs = null; 
		List<Users> list = new ArrayList<Users>();
		 
		try {
			conn = super.getConn();
			pst = conn.prepareStatement("select u.user_nicename from loveme l inner join user u on(l.love_userId = u.user_id) where l.love_topicId = ?");
			pst.setInt(1, topicId);
			rs = pst.executeQuery(); 
			
			while(rs.next()){
				Users users = new Users();
					users.setNiceName(rs.getString(1)); 
				list.add(users); 
			}
			
			
		} catch (SQLException e) { 
			e.printStackTrace();
		}finally{
			super.close(conn, pst, rs);
		} 
		
		return list;
	}
	

}
