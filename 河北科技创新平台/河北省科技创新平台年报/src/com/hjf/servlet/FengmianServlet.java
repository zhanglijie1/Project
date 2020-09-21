package com.hjf.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hjf.dao.FengmianDao;
import com.hjf.entity.fengmian;


@WebServlet("/FengmianServlet")
public class FengmianServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 public FengmianServlet() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
    FengmianDao dao = new FengmianDao();

    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		if ("add".equals(method)) {
			add(req, resp);
		
		}else if
		("list".equals(method)) {
			list(req, resp);
	}
    }
	/**
	 * 添加
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void add(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String name = req.getParameter("name");
		String username = req.getParameter("username");
		String guanlibumen = req.getParameter("guanlibumen");
		String telephone = req.getParameter("telephone");
		String bumen = req.getParameter("bumen");
		String phone = req.getParameter("phone");
		String email = req.getParameter("email");
		String time = req.getParameter("time");
	    System.out.print(name);
		fengmian fengmian = new fengmian( username,guanlibumen,name,telephone,bumen,phone,email,time);
		
		//添加后消息显示
		if(dao.add(fengmian)){
		
			req.setAttribute("message", "添加成功");
			req.getRequestDispatcher("fengmian.jsp").forward(req,resp);}
		else {
			req.setAttribute("message", "添加失败");
			req.getRequestDispatcher("fengmian.jsp").forward(req,resp);}
		}
		
		
	
	/**
	 * 全部
	 * @param req
	 * @param resp
	 * @throws ServletException 
	 */
	private void list(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		req.setCharacterEncoding("utf-8");
		List<fengmian> fengmians = dao.list();
		req.setAttribute("fengmians", fengmians);
		req.getRequestDispatcher("index.jsp").forward(req,resp);
	}

}
