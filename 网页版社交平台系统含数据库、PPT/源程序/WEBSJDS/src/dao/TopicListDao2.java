package dao;

import java.util.List;


import entity.Topic1;
import entity.Users;

public interface TopicListDao2 {
	/**
	 * ��ȡ���е����ۻ���
	 * @return
	 */
	List<Topic1> getMeAndAllFriendTopic();
	
	/**
	 * ȡ�������޵�����
	 * @return
	 */
	int getPraiseCount(int topicId);
	
	/**
	 * ��ȡ���е����˵�����
	 * @return
	 */
	List<Users> getPraisePeopleName(int topicId);

}
