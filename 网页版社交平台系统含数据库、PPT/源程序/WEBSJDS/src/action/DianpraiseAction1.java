package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DianpraiseDao1;
import daoImpl.DianpraiseDaoImpl1;
import entity.Users;

public class DianpraiseAction1 extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}
 
	
	/**
	 * ÏêÏ¸detail.jspµãÔÞ¹¦ÄÜ
	 */
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String topicId = request.getParameter("topicId");
		
		HttpSession session = request.getSession();
		Users users = new Users();
		
		if(session != null){
			users = (Users)session.getAttribute("loginUser"); 
			
			DianpraiseDao1 dianpraiseDao = new DianpraiseDaoImpl1();
			dianpraiseDao.dianpraise(users.getUserId(), Integer.parseInt(topicId));
			
			request.getRequestDispatcher("/servlet/TopicListAction2").forward(request, response);
		}
		
	}
}
