package entity;

import java.util.List;

public class Topic { 
	
	private int topicId;
	private String webtext;
	private int userId; 
	private int praisecount; 
	private String content;
	private String nicename;
	private String ccontent;
	private String time;
	private String userimg;
	private String usertime;
	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}
	private Users users;
	private List<Users> list;
	private String comment_content;
	private int comment_userId;
	private int comment_topicId;
	private int comment_Id;
	private List<Topic> list1;
	private List<Topic> list2;
	private String usergx;
	public Topic(int userId,String nicename,List<Topic> list1,String userimg,String usertime,String usergx) {
		this.userId=userId;
		this.nicename=nicename;
		this.list1=list1;
		this.userimg=userimg;
		this.usertime=usertime;
		this.usergx=usergx;
	}
	
	public Topic(int topicId,String webtext,int userId,String content,int praisecount,String time) {
		this.userId=userId;
		this.webtext=webtext;
		this.topicId=topicId;
		this.content=content;
		this.praisecount=praisecount;
		this.time=time;
		
	}
	public Topic(int topicId, String webtext, int userId, int praisecount,
			Users users, List<Users> list, String content,List<Topic> list1) {
		super();
		this.topicId = topicId;
		this.webtext = webtext;
		this.userId = userId;
		this.praisecount = praisecount;
		this.users = users;
		this.list = list;
		this.content=content;
		this.list1=list1;
	}
	public Topic(int topicId, String webtext, int userId, int praisecount,
			Users users, List<Users> list, String content,List<Topic> list1,String time) {
		super();
		this.topicId = topicId;
		this.webtext = webtext;
		this.userId = userId;
		this.praisecount = praisecount;
		this.users = users;
		this.list = list;
		this.content=content;
		this.list1=list1;
		this.time=time;
	}
	

	  public Topic(String comment_content,int comment_userId,int comment_topicId,String nicename,int comment_Id ,List<Topic> list2) {
	    	this.comment_content=comment_content;
	    	this.comment_userId=comment_userId;
	    	this.comment_topicId=comment_topicId;
	    	this.nicename=nicename;
	    	this.comment_Id=comment_Id;
	    	this.list2=list2;
	    }
	  public Topic(String comment_content,int comment_userId,int comment_topicId,String nicename,int comment_Id ,List<Topic> list2,String time) {
	    	this.comment_content=comment_content;
	    	this.comment_userId=comment_userId;
	    	this.comment_topicId=comment_topicId;
	    	this.nicename=nicename;
	    	this.comment_Id=comment_Id;
	    	this.list2=list2;
	    	this.time=time;
	    }
	  public Topic(String comment_content,int comment_userId,int comment_topicId,String nicename,int comment_Id ,List<Topic> list2,String time,String userimg) {
	    	this.comment_content=comment_content;
	    	this.comment_userId=comment_userId;
	    	this.comment_topicId=comment_topicId;
	    	this.nicename=nicename;
	    	this.comment_Id=comment_Id;
	    	this.list2=list2;
	    	this.time=time;
	    	this.setUserimg(userimg);
	    }
	  public Topic(String comment_content,int comment_userId,int comment_topicId ) {
	    	this.comment_content=comment_content;
	    	this.comment_userId=comment_userId;
	    	this.comment_topicId=comment_topicId;
	    	
	    }
	  public Topic(String comment_content,int comment_userId,int comment_topicId,String time ) {
	    	this.comment_content=comment_content;
	    	this.comment_userId=comment_userId;
	    	this.comment_topicId=comment_topicId;
	    	this.time=time;
	    	
	    	
	    }
	  public Topic(String ccontent,String nicename ) {
	    	
	    	this.ccontent=ccontent;
	    	this.nicename=nicename;
	    }
	  public Topic(String ccontent,String nicename,String time ) {
	    	
	    	this.ccontent=ccontent;
	    	this.nicename=nicename;
	    	this.time=time;
	    }
	  public Topic(String ccontent,String nicename,String time,String userimg ) {
	    	
	    	this.ccontent=ccontent;
	    	this.nicename=nicename;
	    	this.time=time;
	    	this.userimg=userimg;
	    }
	public List<Users> getList() {
		return list;
	}


	public void setList(List<Users> list) {
		this.list = list;
	}


	public Topic() { 
	}
	 
	
	public int getPraisecount() {
		return praisecount;
	}
	public void setPraisecount(int praisecount) {
		this.praisecount = praisecount;
	}
	
	
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	
	public int getTopicId() {
		return topicId;
	}
	public void setTopicId(int topicId) {
		this.topicId = topicId;
	}
	public String getWebtext() {
		return webtext;
	}
	public void setWebtext(String webtext) {
		this.webtext = webtext;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}


	public List<Topic> getList1() {
		return list1;
	}


	public void setList1(List<Topic> list1) {
		this.list1 = list1;
	}


	public int getComment_userId() {
		return comment_userId;
	}


	public void setComment_userId(int comment_userId) {
		this.comment_userId = comment_userId;
	}


	public int getComment_topicId() {
		return comment_topicId;
	}


	public void setComment_topicId(int comment_topicId) {
		this.comment_topicId = comment_topicId;
	}


	public String getComment_content() {
		return comment_content;
	}


	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}


	public String getNicename() {
		return nicename;
	}


	public void setNicename(String nicename) {
		this.nicename = nicename;
	}


	public String getCcontent() {
		return ccontent;
	}


	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}


	public int getComment_Id() {
		return comment_Id;
	}


	public void setComment_Id(int comment_Id) {
		this.comment_Id = comment_Id;
	}


	public List<Topic> getList2() {
		return list2;
	}


	public void setList2(List<Topic> list2) {
		this.list2 = list2;
	}


	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}


	public String getUserimg() {
		return userimg;
	}


	public void setUserimg(String userimg) {
		this.userimg = userimg;
	}


	public String getUsertime() {
		return usertime;
	}


	public void setUsertime(String usertime) {
		this.usertime = usertime;
	}


	public String getUsergx() {
		return usergx;
	}


	public void setUsergx(String usergx) {
		this.usergx = usergx;
	}

}
