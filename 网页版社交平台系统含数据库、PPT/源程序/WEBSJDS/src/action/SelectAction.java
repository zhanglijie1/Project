package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.SelectDao;
import daoImpl.SelectDaoImpI;
import entity.Topic;

public class SelectAction extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
		this.doPost(request, response);
	} 
	
	/**
	 * Ä£ºý²éÑ¯
	 * 
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String webtext = request.getParameter("webtext");
		String username = request.getParameter("username");
		String nicename = request.getParameter("nicename");
		System.out.println(nicename);
		SelectDao topicListDao = new SelectDaoImpI(); 
		List<Topic> meAndAllFriendTopic = topicListDao.getcontext(webtext,username,nicename);
		
		request.setAttribute("meAndAllFriendTopic", meAndAllFriendTopic);
		request.getRequestDispatcher("/index1.jsp").forward(request, response);
		 
	}
}
