package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoImpl.CommentDao;
import daoImpl.CommentDao1;
import entity.Topic;
import entity.Topic1;




@WebServlet("/CommentServlet1")
public class CommentServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 public CommentServlet1() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
    CommentDao1 dao = new CommentDao1();

    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		if ("add".equals(method)) {
			add(req, resp);
		}else if ("add1".equals(method)) {
			add1(req, resp);
		}else if ("del".equals(method)) {
			del(req, resp);
		}
		
		
    }
	/**
	 * Ìí¼Ó1
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void add(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String commentcontent = req.getParameter("commentcontent");
		int commentuserId = Integer.parseInt(req.getParameter("userId"));
		int commenttopicId =Integer.parseInt(req.getParameter("topicId"));
		String time = req.getParameter("time");
	
		Topic1 t=new Topic1(commentcontent,commentuserId,commenttopicId,time);
		
		
	
		
		if(dao.add(t)) {
			
			
			req.getRequestDispatcher("/servlet/TopicListAction3").forward(req,resp);
		}
			
	}
		

	private void add1(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String c_content = req.getParameter("c_content");
		int c_commentid = Integer.parseInt(req.getParameter("c_commentid"));
		int c_commentuserid =Integer.parseInt(req.getParameter("c_commentuserid"));
		String time = req.getParameter("time");
		
		
		
		
	
		
		if(dao.add1(c_content,c_commentid,c_commentuserid,time)) {
			
			
			req.getRequestDispatcher("/servlet/TopicListAction3").forward(req,resp);
		}
			
	}
	private void del(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		
		int id = Integer.parseInt(req.getParameter("comment_id"));
		
		
		System.out.println(id);
		
		
		
	
		
		if(dao.del(id)){
			
			
			req.getRequestDispatcher("/servlet/TopicListAction3").forward(req,resp);
		}
			
	}



}
