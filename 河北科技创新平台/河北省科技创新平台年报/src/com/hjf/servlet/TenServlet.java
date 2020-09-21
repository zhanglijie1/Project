package com.hjf.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hjf.dao.TenDao;
import com.hjf.entity.Ten;

/**
 * Servlet implementation class TenServlet
 */
@WebServlet("/TenServlet")
public class TenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TenServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
  TenDao dao= new TenDao();
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		if ("add1".equals(method)) {
			add1(req, resp);
		}
		
    }
    /**
	 * 添加1
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void add1(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String username = req.getParameter("username");
		String a = req.getParameter("xyrclb");
		String b = req.getParameter("xyrcmc");
		String c = req.getParameter("xyrcclsj");
		String d = req.getParameter("xyrcljdw");

		
		Ten Ten = new Ten(username,a,b,c,d);
		
		//添加后消息显示
		if(dao.add1(Ten)){
		
			req.setAttribute("message", "添加成功");
			req.getRequestDispatcher("table10.1.jsp").forward(req,resp);}
		else {
			req.setAttribute("message", "添加失败");
			req.getRequestDispatcher("table10.1.jsp").forward(req,resp);}
		}
	

	
}
