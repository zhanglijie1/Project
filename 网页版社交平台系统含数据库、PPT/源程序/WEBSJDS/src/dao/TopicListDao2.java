package dao;

import java.util.List;


import entity.Topic1;
import entity.Users;

public interface TopicListDao2 {
	/**
	 * 获取所有的讨论话题
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

}
