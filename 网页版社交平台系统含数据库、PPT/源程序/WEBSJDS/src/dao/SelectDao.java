package dao;

import java.util.List;

import entity.Topic;
import entity.Users;

public interface SelectDao {
	/**
	 * 获取所有的微博
	 * @return
	 */
	List<Topic> getMeAndAllFriendTopic();
	
	/**
	 * 取得所有赞的总数
	 * @return
	 */
	int getPraiseCount(int topicId);
	
	/**
	 * 获取所有点赞人的名字
	 * @return
	 */
	List<Users> getPraisePeopleName(int topicId);
	
	List<Topic> getcontext(String webtext,String username,String nicename);
}
