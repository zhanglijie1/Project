package dao;

import entity.Users;

public interface UserDao {
	
	Users isLogin(Users users);

	Users isLogin1(String attribute);

	Users isLogin2(String username);

}
