package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.SelectDao;
import dao.TopicListDao;
import dao.TopicListDao1;
import db.BaseDao;
import entity.Topic;
import entity.Users;

public class SelectDaoImpI extends BaseDao implements SelectDao{
public List<Topic> getMeAndAllFriendTopic() {
		
		Connection conn  = null;
		PreparedStatement pst = null;
		ResultSet rs = null;  
		   
		List<Topic> list = new ArrayList<Topic>(); 
		
		try {
			conn = super.getConn();  
			pst = conn.prepareStatement("select u.user_nicename,t.topic_webtext,t.topic_id,u.user_username,t.content,t.time from topic t,user u where t.user_id = u.user_id order by t.topic_id desc");
			rs = pst.executeQuery();
			while(rs.next()){
				Topic topic = new Topic();
					Users users = new Users();
					users.setNiceName(rs.getString(1));
					users.setUserName(rs.getString(4));
				topic.setWebtext(rs.getString(2)); 
				topic.setTopicId(rs.getInt(3));
				topic.setContent(rs.getString(5));
				TopicListDao topicListDao = new TopicListDaoImpl();
				int praiseCount = topicListDao.getPraiseCount(rs.getInt(3));
				topic.setPraisecount(praiseCount);
				topic.setUsers(users); 
				topic.setTime(rs.getString(6)); 
				
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
	
public List<Topic> getcontext(String webtext,String username,String nicename){
		
		Connection conn  = null;
	    PreparedStatement pst = null;
		ResultSet rs = null; 
		List<Topic> list = new ArrayList<Topic>();
		 
		try {
			conn = super.getConn();
			String sql = "select u.user_nicename,t.topic_webtext,u.user_username,t.content,t.topic_id,t.time,u.user_img,u.user_id from topic t,user u where t.user_id = u.user_id and 1=1";
			if (webtext != "") {
				sql += " and t.topic_webtext like '%" + webtext.replace("'","''") + "%'";
			}
			if (username != "") {
				sql += " and u.user_username = '" + username.replace("'","''") + "'";
			}
			if (nicename != "") {
				sql += " and u.user_nicename like '%" + nicename.replace("'","''") + "%'";
			}
			if(1==1) {
				sql +=" order by t.topic_id desc";
			}
			pst = conn.prepareStatement(sql);
			//pst.setString(1, webtext);
			rs = pst.executeQuery(); 
			//System.out.print(sql);
			
			while(rs.next()){
				Topic topic = new Topic();
				Users users = new Users();
				users.setNiceName(rs.getString(1));
				users.setUserName(rs.getString(3));
				users.setUserimg(rs.getString(7));
			    topic.setWebtext(rs.getString(2));
			    topic.setTopicId(rs.getInt(5));
			topic.setContent(rs.getString(4));
			topic.setTime(rs.getString(6)); 
			users.setUserId(rs.getInt(8)); 
			topic.setUsers(users); 
			SelectDao topicListDao = new SelectDaoImpI();
			int praiseCount = topicListDao.getPraiseCount(rs.getInt(5));
			topic.setPraisecount(praiseCount);
			List<Users> praisePeopleNameList = topicListDao.getPraisePeopleName(rs.getInt(5));
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
}
