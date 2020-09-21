package daoImpl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.TopicListDao;
import dao.TopicListDao1;
import db.BaseDao;
import entity.Topic;
import entity.Users;

public class TopicListDaoImpl1 extends BaseDao implements TopicListDao1{
	//获取各自的博客内容
public List<Topic> getMeAndAllFriendTopic() {
		
		Connection conn  = null;
		PreparedStatement pst = null;
		ResultSet rs = null;  
		   
		List<Topic> list = new ArrayList<Topic>(); 
		
		try {
			conn = super.getConn();  
			pst = conn.prepareStatement("select u.user_nicename,t.topic_webtext,t.topic_id,u.user_username,t.content,u.user_userid from topic t,user u ,u.user_img where t.user_id = u.user_id order by t.topic_id desc");
			rs = pst.executeQuery();
			while(rs.next()){
				Topic topic = new Topic();
					Users users = new Users();
					users.setNiceName(rs.getString(1));
					users.setUserName(rs.getString(4));
					users.setUserId(rs.getInt(6));
					users.setUserimg(rs.getString(7));
				topic.setWebtext(rs.getString(2)); 
				topic.setTopicId(rs.getInt(3));
				topic.setContent(rs.getString(5));
				TopicListDao topicListDao = new TopicListDaoImpl();
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
			pst = conn.prepareStatement("select count(l.like_topicId) from likeme l where l.like_topicId = ?");
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
			pst = conn.prepareStatement("select u.user_nicename from likeme l inner join user u on(l.like_userId = u.user_id) where l.like_topicId = ?");
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
	
	
public List<Topic> getcontext(int topicId){
		
		Connection conn  = null;
	    PreparedStatement pst = null;
		ResultSet rs = null; 
		List<Topic> list = new ArrayList<Topic>();
		 
		try {
			conn = super.getConn();
			pst = conn.prepareStatement("select u.user_nicename,t.topic_webtext,u.user_username,t.content,t.topic_id,u.user_id,t.time,u.user_img from topic t,user u where t.user_id = u.user_id and t.topic_id = ?");
			pst.setInt(1, topicId);
			rs = pst.executeQuery(); 
			
			while(rs.next()){
				Topic topic = new Topic();
				Users users = new Users();
				users.setNiceName(rs.getString(1));
				users.setUserName(rs.getString(3));
				users.setUserId(rs.getInt(6));
				users.setUserimg(rs.getString(8));
			    topic.setWebtext(rs.getString(2));
			    topic.setTopicId(rs.getInt(5));
			    topic.setTime(rs.getString(7));
			topic.setContent(rs.getString(4));
			TopicListDao topicListDao = new TopicListDaoImpl();
			int praiseCount = topicListDao.getPraiseCount(topicId);
			topic.setPraisecount(praiseCount);
			topic.setUsers(users);
			List<Users> praisePeopleNameList = topicListDao.getPraisePeopleName(topicId);
			topic.setList(praisePeopleNameList);
			List<Topic> PeopleNameList = CommentDao.search(topicId);
			topic.setList1(PeopleNameList);
			
			list.add(topic);
		
			}
		
			
		} catch (SQLException e) { 
			e.printStackTrace();
		}finally{
			super.close(conn, pst, rs);
		} 
		
		return list;
	}
 
}
