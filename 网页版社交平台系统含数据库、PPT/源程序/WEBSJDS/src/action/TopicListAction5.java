package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TopicListDao1;
import daoImpl.CommentDao;
import daoImpl.TopicListDaoImpl1;
import entity.Topic;

public class TopicListAction5 extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}
 
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
	
		int userid = Integer.parseInt(request.getParameter("userId"));
		 
		List<Topic> meAndAllFriendTopic = CommentDao.search1(userid);
		
		request.setAttribute("meAndAllFriendTopic", meAndAllFriendTopic);
		
		request.getRequestDispatcher("/home.jsp").forward(request, response);
		
			 
	}
}
