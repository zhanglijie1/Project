package dao;

import java.util.List;

import entity.Topic;
import entity.Users;

//��ȡ���и��˲���
public interface TopicListDao7 {
	/**
	 * ��ȡ���е�΢��
	 * @return
	 */
	List<Topic> getMeAndAllFriendTopic();
	
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
	List<Topic> getcontext(String username);
}
