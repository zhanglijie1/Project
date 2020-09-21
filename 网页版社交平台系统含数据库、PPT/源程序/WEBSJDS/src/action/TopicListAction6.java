package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TopicListDao6;
import daoImpl.TopicListDaoImpl6;
import entity.Topic1;
//��ȡ���и��˻���
public class TopicListAction6 extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}
 
	/**
	 * ����detail.jsp������ֵ��ѯ�ķ���
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String username = request.getParameter("username");
		
		TopicListDao6 topicListDao = new TopicListDaoImpl6(); 
		List<Topic1> meAndAllFriendTopic = topicListDao.getcontext(username);
		
		request.setAttribute("meAndAllFriendTopic", meAndAllFriendTopic);
		
		request.getRequestDispatcher("/case.jsp").forward(request, response);
		
			 
	}
}
