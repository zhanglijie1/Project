package dao;

import java.util.List;

import entity.Topic;
import entity.Users;

public interface SelectDao {
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
	
	List<Topic> getcontext(String webtext,String username,String nicename);
}
