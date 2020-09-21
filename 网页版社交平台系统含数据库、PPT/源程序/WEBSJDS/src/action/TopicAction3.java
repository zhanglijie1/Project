package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.TopicDao3;
import daoImpl.TopicDaoImpl3;
import entity.Topic1;
import entity.Users;

public class TopicAction3 extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		this.doPost(request, response);
	}
 
	/**
	 * 实现提交功能
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String webtext = request.getParameter("webtext");
		String time = request.getParameter("time");
		HttpSession session = request.getSession(false);
		
		Topic1 topic = new Topic1();
		Users users = new Users();
		
		if(session != null){
			users = (Users)session.getAttribute("loginUser"); 
			
			topic.setWebtext(webtext);
			topic.setTime(time);
			topic.setUserId(users.getUserId());
			
			TopicDao3 topicDao = new TopicDaoImpl3();
			topicDao.insertTopic(topic);
			
			request.getRequestDispatcher("/servlet/TopicListAction2").forward(request, response);
			
		}
		
	}

}
