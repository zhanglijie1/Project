package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TopicListDao3;
import daoImpl.TopicListDaoImpl3;
import entity.Topic1;

public class TopicListAction3 extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}
 
	/**
	 * ����detail1.jsp������ֵ��ѯ�ķ���
	 * ��topic1��topicId��Ӧ�ض�ֵֵ��ѯ����
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String topicId = request.getParameter("topicId");
		
		
		TopicListDao3 topicListDao = new TopicListDaoImpl3(); 
		List<Topic1> meAndAllFriendTopic = topicListDao.getcontext(Integer.parseInt(topicId));
		
		request.setAttribute("meAndAllFriendTopic", meAndAllFriendTopic);
		
		request.getRequestDispatcher("/detail1.jsp").forward(request, response);
		
			 
	}
}
