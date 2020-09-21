package entity;

public class Users {
	
	private int userId;
	
	private String userName;
	
	private String passWord;
	
	private String niceName; 
	private String userimg; 
	private String usertime;
	private String usergx;
	public String getUsergx() {
		return usergx;
	}

	public void setUsergx(String usergx) {
		this.usergx = usergx;
	}

	public Users() { 
	}

	public Users(int userId, String userName, String passWord, String niceName) {
		this.userId = userId;
		this.userName = userName;
		this.passWord = passWord;
		this.niceName = niceName;
	}
	public Users(int userId, String userName, String passWord, String niceName,String userimg) {
		this.userId = userId;
		this.userName = userName;
		this.passWord = passWord;
		this.niceName = niceName;
		this.userimg=userimg;
	}
	public Users(int userId, String userName, String passWord, String niceName,String userimg,String usergx) {
		this.userId = userId;
		this.userName = userName;
		this.passWord = passWord;
		this.niceName = niceName;
		this.userimg=userimg;
		this.usergx=usergx;
	}
	public Users(String userName, String passWord) {
		this.passWord=passWord;
		this.userName=userName;
	}
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getNiceName() {
		return niceName;
	}

	public void setNiceName(String niceName) {
		this.niceName = niceName;
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
	
	

	

}
