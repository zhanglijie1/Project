package daoImpl;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dao.TopicListDao;
import entity.Topic;

import db.DBUtil;;


public class CommentDao {
	
	/**
	 * Ìí¼Ó
	 * @param Er
	 * @return
	 */
	public boolean add(Topic t) {
		String sql = "insert into comment(comment_content,comment_topicId,comment_userId,time) values('" + t.getComment_content() + "','" + t.getComment_topicId()+ "','" + t.getComment_userId()+ "','" + t.getTime() + "')";
		Connection conn = null;
		conn = DBUtil.getConn();
		Statement state = null;
		boolean f = false;
		int a = 0;
		
		try {
			state = conn.createStatement();
			a=state.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(state, conn);
		}
		
		if (a > 0) {
			f = true;
		}
		return f;
	}
	public boolean add1(String a,int b,int c,String d) {
		String sql = "insert into comment1(c_content,c_commentid,c_commentuserid,time) values('" + a + "','" + b+ "','" + c + "','" + d+ "')";
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
	
	
	public static List<Topic> search(int topic_id) {
		String sql = "select c.comment_userId,c.comment_topicId,c.comment_content,u.user_nicename,c.comment_id,c.time,u.user_img from comment c,user u where c.comment_userId=u.user_id and c.comment_topicId='"+topic_id+"' order by c.comment_id desc";
	
		List<Topic> list = new ArrayList<>();
		Connection conn = null;
		conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;

		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			Topic bean = null;
			while (rs.next()) {
				int comment_userId = rs.getInt(1);
				int comment_topicId = rs.getInt(2);
				String comment_content = rs.getString(3);
				String user_nicename = rs.getString(4);
				String user_img = rs.getString(7);
				String time = rs.getString(6);
				int comment_Id = rs.getInt(5);
			
				List<Topic> list2 = CommentDao.search2(comment_Id);
				bean = new Topic(comment_content,comment_userId,comment_topicId,user_nicename,comment_Id,list2,time,user_img);
				list.add(bean);
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(state, conn);
		}
		
		return list;
		
	
	}
	
	public static List<Topic> search1(int userid) {
		String sql = "select user_id,user_username,user_nicename,user_img,user_time,user_gx from user where user_id='"+userid+"'";
	
		List<Topic> list = new ArrayList<>();
		Connection conn = null;
		conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;

		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			Topic bean = null;
			while (rs.next()) {
				int user_id = rs.getInt(1);
			
				String user_nicename = rs.getString(3);
				String userimg = rs.getString(4);
			    String usertime=rs.getString(5);
			    String usergx=rs.getString(6);
				List<Topic> list1 = CommentDao.search4(rs.getInt(1));
				bean = new Topic(user_id,user_nicename,list1,userimg,usertime,usergx);
				list.add(bean);
				
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(state, conn);
		}
		
		return list;
		
	
	}

	public boolean del(int id) {
		String sql = "delete from comment where comment_id='"+id+"'";
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
	
	public static List<Topic> search2(int comment_id) {
		String sql = "select u.user_nicename,c1.c_content,c1.time,u.user_img from comment1 c1 left join user u on c1.c_commentuserid=u.user_id LEFT JOIN comment c on c1.c_commentid=c.comment_topicId where c1.c_commentid='"+comment_id+"' order by c1.c_id ASC";
	
		List<Topic> list = new ArrayList<>();
		Connection conn = null;
		conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;

		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			Topic bean = null;
			while (rs.next()) {
				
				String c_content = rs.getString(2);
				String user_nicename = rs.getString(1);
				String time = rs.getString(3);
				String userimg = rs.getString(4);
				bean = new Topic(c_content,user_nicename,time,userimg);
				list.add(bean);
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(state, conn);
		}
		
		return list;
		
	
	}
	public static List<Topic> search4(int userid) {
		String sql = "select topic_id,topic_webtext,user_id,content,time from topic where user_id='"+userid+"'";
	
		List<Topic> list = new ArrayList<>();
		Connection conn = null;
		conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;

		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			Topic bean = null;
			while (rs.next()) {
				int topic_id=rs.getInt(1);
				String topic_webtext = rs.getString(2);
				int user_id=rs.getInt(3);
				String content = rs.getString(4);
				String time = rs.getString(5);
				TopicListDao topicListDao = new TopicListDaoImpl();
				int praisecount = topicListDao.getPraiseCount(topic_id);
				
				bean = new Topic(topic_id,topic_webtext,user_id,content,praisecount,time);
				list.add(bean);
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(state, conn);
		}
		
		return list;
		
	
	}
	
	
}
