package dao;

import java.util.List;

import entity.Topic1;
import entity.Users;

//��ȡ���и��˻���
public interface TopicListDao6 {
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
	List<Topic1> getcontext(String username);
}
