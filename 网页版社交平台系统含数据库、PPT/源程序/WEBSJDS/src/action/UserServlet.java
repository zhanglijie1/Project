package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hjf.dao.UserDao;

import entity.Users;

public class UserServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		this.doPost(request, response);
	}

	

	
	/**
	 * –ﬁ∏ƒ√‹¬Î
	 * @param req
	 * @param resp
	 * @throws IOException
	 * @throws ServletException 
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		UserDao dao = new UserDao();
		String password = request.getParameter("password");
		String rpassword = request.getParameter("rpassword");
		String username = request.getParameter("username");
		Users user1 = new Users(username,rpassword);
		Users user = dao.getUserByName(username,password);
	    //System.out.print(username);
		if(user == null) {
			request.setAttribute("message", "’À∫≈ªÚ√‹¬Î¥ÌŒÛ£°");
			request.getRequestDispatcher("set.jsp").forward(request,response);
		} else {
			
			dao.update(user1);
			request.setAttribute("message", "–ﬁ∏ƒ≥…π¶");
			request.getRequestDispatcher("/servlet/TopicListAction").forward(request,response);
		}
		
	}
}
