package dao;

import java.util.List;

import entity.Topic1;
import entity.Users;

public interface TopicListDao3 {
	/**
	 * ��ȡ���е�΢��
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
	/**
	 * ��ȡtopicId��΢��
	 * @return
	 */
	List<Topic1> getcontext(int topicId);
}
