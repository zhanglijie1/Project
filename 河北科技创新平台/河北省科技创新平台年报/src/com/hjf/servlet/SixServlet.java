package com.hjf.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hjf.dao.SixDao;
import com.hjf.entity.Six;

/**
 * Servlet implementation class SixServlet
 */
@WebServlet("/SixServlet")
public class SixServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SixServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
  SixDao dao= new SixDao();
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
		String a = req.getParameter("zyxmly");
		String b = req.getParameter("zyxmlyfl");
		String c = req.getParameter("zyxmbh");
		String d = req.getParameter("zyxmmc");
		String e = req.getParameter("zyjhlb");
		String f = req.getParameter("zyqssj");
		String g = req.getParameter("zyjzsj");
		String h = req.getParameter("zyxmjfje");
		String i= req.getParameter("zyxmzt");
		
		Six Six = new Six(username,a,b,c,d,e,f,g,h,i);
		
		//添加后消息显示
		if(dao.add1(Six)){
		
			req.setAttribute("message", "添加成功");
			req.getRequestDispatcher("table6.1.jsp").forward(req,resp);}
		else {
			req.setAttribute("message", "添加失败");
			req.getRequestDispatcher("table6.1.jsp").forward(req,resp);}
		}
	

	
}
