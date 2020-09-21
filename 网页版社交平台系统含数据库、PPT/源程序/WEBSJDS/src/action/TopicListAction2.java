package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.TopicListDao2;
import daoImpl.TopicListDaoImpl2;
import entity.Topic1;

public class TopicListAction2 extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}
 
	/**
	 * 闲研碎语的所有值查询的方法
	 * 将topic1中所有值查询出来
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		  
		TopicListDao2 topicListDao = new TopicListDaoImpl2(); 
		List<Topic1> meAndAllFriendTopic = topicListDao.getMeAndAllFriendTopic(); 
		
		request.setAttribute("meAndAllFriendTopic", meAndAllFriendTopic);
		
		request.getRequestDispatcher("/case.jsp").forward(request, response);
		
			 
	}

}
