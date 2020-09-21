package com.hjf.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hjf.dao.SevenDao;
import com.hjf.entity.Seven;

/**
 * Servlet implementation class SevenServlet
 */
@WebServlet("/SevenServlet")
public class SevenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SevenServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
  SevenDao dao= new SevenDao();
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		if ("add12".equals(method)) {
			add12(req, resp);
		}else if("add22".equals(method)) {
			add22(req, resp);
		}
		else if("add11".equals(method)) {
			add11(req, resp);
		}
    }
    /**
	 * 添加1
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void add12(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String username = req.getParameter("username");
		String a = req.getParameter("zzmc");
		String b = req.getParameter("zzzzxm");
		String c = req.getParameter("zzqsdw");
		String d = req.getParameter("zzcbsj");
		String e = req.getParameter("zzcbbh");

		
		Seven Seven = new Seven(username,a,b,c,d,e);
		
		//添加后消息显示
		if(dao.add12(Seven)){
		
			req.setAttribute("message", "添加成功");
			req.getRequestDispatcher("table7.1.2.jsp").forward(req,resp);}
		else {
			req.setAttribute("message", "添加失败");
			req.getRequestDispatcher("table7.1.2.jsp").forward(req,resp);}
		}
	
	private void add11(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String username = req.getParameter("username");
		String a = req.getParameter("gjkw");
		String b = req.getParameter("gnkx");
		String c = req.getParameter("gnyb");
		String d = req.getParameter("sci");
		String e = req.getParameter("ei");
		String f = req.getParameter("istp");

		
		Seven Seven = new Seven(username,a,b,c,d,e,f);
		
		//添加后消息显示
		if(dao.add11(Seven)){
		
			req.setAttribute("message", "添加成功");
			req.getRequestDispatcher("table7.1.1.jsp").forward(req,resp);}
		else {
			req.setAttribute("message", "添加失败");
			req.getRequestDispatcher("table7.1.1.jsp").forward(req,resp);}
		}
	
	 /**
		 * 添加1
		 * @param req
		 * @param resp
		 * @throws IOException 
		 * @throws ServletException 
		 */
		private void add22(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
			req.setCharacterEncoding("utf-8");
			String username = req.getParameter("username");
			String a = req.getParameter("yscgmc");
			String b = req.getParameter("yscglx");
			String c = req.getParameter("yscgwcdw");
			String d = req.getParameter("yscgzzwcr");
			String e = req.getParameter("yscgqdsj");

			
			Seven Seven = new Seven(username,a,b,c,d,e);
			
			//添加后消息显示
			if(dao.add22(Seven)){
			
				req.setAttribute("message", "添加成功");
				req.getRequestDispatcher("table7.2.2.jsp").forward(req,resp);}
			else {
				req.setAttribute("message", "添加失败");
				req.getRequestDispatcher("table7.2.2.jsp").forward(req,resp);}
			}
		

	
}
