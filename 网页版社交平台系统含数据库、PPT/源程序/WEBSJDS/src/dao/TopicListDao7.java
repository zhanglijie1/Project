package dao;

import java.util.List;

import entity.Topic;
import entity.Users;

//获取所有个人博客
public interface TopicListDao7 {
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
	/**
	 * 获取topicId的微博
	 * @return
	 */
	List<Topic> getcontext(String username);
}
