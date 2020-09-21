package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import dao.DianpraiseDao;
import daoImpl.DianpraiseDaoImpl;
import daoImpl.DianzanDao;
import entity.Topic;
import entity.Users;




@WebServlet("/DianzanServlet")
public class DianzanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 public DianzanServlet() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
    DianzanDao dao = new DianzanDao();

    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		if ("search".equals(method)) {
			search(req, resp);
		}
		
		
    }
	/**
	 * ÆÀÂÛ
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String topicId = request.getParameter("topicId");
		System.out.println(topicId);
		HttpSession session = request.getSession();
		Users users = new Users();
		
		if(session != null){
			users = (Users)session.getAttribute("loginUser"); 
			
			DianpraiseDao dianpraiseDao = new DianpraiseDaoImpl();
			dianpraiseDao.dianpraise(users.getUserId(), Integer.parseInt(topicId));
			
			request.getRequestDispatcher("/servlet/TopicListAction8").forward(request, response);
		}
			
	}
	



}
