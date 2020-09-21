package dao;

import java.util.List;

import entity.Topic1;
import entity.Users;

public interface TopicListDao3 {
	/**
	 * 获取所有的微博
	 * @return
	 */
	List<Topic1> getMeAndAllFriendTopic();
	
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
	/**
	 * 获取topicId的微博
	 * @return
	 */
	List<Topic1> getcontext(int topicId);
}
