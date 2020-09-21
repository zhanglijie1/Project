package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TopicListDao;
import dao.TopicListDao1;
import dao.TopicListDao7;
import daoImpl.TopicListDaoImpl;
import daoImpl.TopicListDaoImpl1;
import daoImpl.TopicListDaoImpl7;
import entity.Topic;

public class TopicListAction7 extends HttpServlet{
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
		String username = request.getParameter("username");
		
		TopicListDao7 topicListDao = new TopicListDaoImpl7(); 
		List<Topic> BW = topicListDao.getcontext(username);
		
		request.setAttribute("BW", BW);
		
		request.getRequestDispatcher("/home.jsp").forward(request, response);
		
			 
	}
}
