package com.hjf.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hjf.entity.user;

import com.hjf.dao.UserDao;
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;
	 public UserServlet() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
	UserDao dao = new UserDao();
	
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		if ("login".equals(method)) {
			login(req, resp);
		} else 
			if("update".equals(method)) {
				update(req, resp);}
	}

	
	/**
	 * ͨ������  ��¼����
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException
	 * @throws ServletException 
	 */
	private void login(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		
		req.setCharacterEncoding("utf-8");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String code=req.getParameter("code");
		user user = dao.getUserByName(username,password);
		HttpSession session = req.getSession();// ����Session����
		String code1=(String) session.getAttribute("key11");
		
		
		if(code.equalsIgnoreCase(code1)) {
			if(user == null) {
				req.setAttribute("message", "�˺Ż��������");
				req.getRequestDispatcher("login.jsp").forward(req,resp);
			} else {
				   session.setAttribute("username", username);
	             System.out.print(user.getCishu());
				   if(user.getCishu()==0)
				   {
					dao.update1(user);
					req.setAttribute("message", "�״ε�½������غ�ʵ������Ϣ��һ�����治���޸�");
					req.getRequestDispatcher("index2.jsp").forward(req,resp);
			              }
				   else {
					
					req.setAttribute("user", user);
					req.getRequestDispatcher("index.jsp").forward(req,resp);
				   }
			
			}
			
		}else {
			
		
			req.setAttribute("message", "��֤�����");
			req.getRequestDispatcher("login.jsp").forward(req,resp);
		}
		
	}
	/**
	 * �޸�����
	 * @param req
	 * @param resp
	 * @throws IOException
	 * @throws ServletException 
	 */
	private void update(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		req.setCharacterEncoding("utf-8");
		
		String password = req.getParameter("password");
		String repassword = req.getParameter("repassword");
		String username = req.getParameter("username");
		user user1 = new user(username,repassword);
		user user = dao.getUserByName(username,password);
	
		if(user == null) {
			req.setAttribute("message", "�˺Ż��������");
			req.getRequestDispatcher("xiugaimima.jsp").forward(req,resp);
		} else {
			
			dao.update(user1);
			req.setAttribute("message", "�޸ĳɹ�");
			req.getRequestDispatcher("login.jsp").forward(req,resp);
		}
		
	}
	
}