package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UpateDao;
import dao.UserDao;
import daoImpl.UpdateDaoImpl;
import daoImpl.UserDaoImpl;
import entity.Users;

public class UpdateServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
		this.doPost(request, response);
	} 
	
	/**
	 * 删除用户自己发的微博
	 * 
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String usergx = request.getParameter("usergx");
		String userId = request.getParameter("userId");
		String nicename = request.getParameter("nicename");
		UpateDao deleteDao = new UpdateDaoImpl();
		deleteDao.deleteTopic(usergx,userId,nicename);
		
		 
		
		UserDao userDao = new UserDaoImpl();
		HttpSession session = request.getSession();
		Users users = userDao.isLogin2((String)session.getAttribute("username")); 
		
		
		session.setAttribute("loginUser2", users); 
		request.getRequestDispatcher("/servlet/TopicListAction").forward(request, response);
	}
}
