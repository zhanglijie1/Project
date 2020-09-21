package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoImpl.CommentDao;
import daoImpl.DeleteDao;
import entity.Topic;




@WebServlet("/DeleteServlet1")
public class DeleteServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 public DeleteServlet1() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
    DeleteDao dao = new DeleteDao();

    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		if ("del".equals(method)) {
			del(req, resp);
		}
		
		
    }
	
	private void del(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		
		int userId = Integer.parseInt(req.getParameter("userId"));
		
	
		System.out.println(userId);
		
		
	
		
		if(dao.del(userId)){
			
			
			req.getRequestDispatcher("/servlet/TopicListAction2").forward(req,resp);
		}
			
	}



}
