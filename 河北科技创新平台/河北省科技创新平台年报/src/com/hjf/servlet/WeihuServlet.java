package com.hjf.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hjf.dao.WeihuDao;
import com.hjf.entity.Weihu;

/**
 * Servlet implementation class WeihuServlet
 */
@WebServlet("/WeihuServlet")
public class WeihuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WeihuServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
  WeihuDao dao= new WeihuDao();
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		if ("add".equals(method)) {
			add(req, resp);
		}else 
			if("update".equals(method)) {
			add(req, resp);
		}
		
		
		
    }

	/**
	 * 添加1
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void add(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String username = req.getParameter("username");
		String a = req.getParameter("ptbh");
		String b = req.getParameter("ptmc");
		String c = req.getParameter("ytdw");
		String d = req.getParameter("ptjb");
		String e = req.getParameter("ptlx");
		String f = req.getParameter("pzwh");
		String g = req.getParameter("pzrq");
	
	
		Weihu Weihu = new Weihu(username,a,b,c,d,e,f,g);
		
		//添加后消息显示
		if(dao.add(Weihu)){
		
			req.setAttribute("message", "添加成功");
			req.getRequestDispatcher("shouci2.jsp").forward(req,resp);}
		else {
			req.setAttribute("message", "添加失败");
			req.getRequestDispatcher("shouci.jsp").forward(req,resp);}
		}
	
	
}
