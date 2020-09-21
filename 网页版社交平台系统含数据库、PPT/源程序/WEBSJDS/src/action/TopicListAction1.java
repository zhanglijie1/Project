package action;



import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TopicListDao1;
import daoImpl.TopicListDaoImpl1;

import entity.Topic;



public class TopicListAction1 extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}
 
	/**
	 * 社区detail.jsp的所有值查询的方法
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String topicId = request.getParameter("topicId");
		
		TopicListDao1 topicListDao = new TopicListDaoImpl1(); 
		List<Topic> meAndAllFriendTopic = topicListDao.getcontext(Integer.parseInt(topicId));
		
		
		request.setAttribute("meAndAllFriendTopic", meAndAllFriendTopic);
		
		request.getRequestDispatcher("/detail.jsp").forward(request, response);
		
			 
	}
}
