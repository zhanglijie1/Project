package com.hjf.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hjf.dao.ErDao;
import com.hjf.entity.Er;


@WebServlet("/ErServlet")
public class ErServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 public ErServlet() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
    ErDao dao = new ErDao();

    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		if ("add1".equals(method)) {
			add1(req, resp);
		}
		else if("add2".equals(method)) {
			add2(req, resp);
		}
		else if("add3".equals(method)) {
			add3(req, resp);
		}
		else if("add4".equals(method)) {
			add4(req, resp);
		}
		else if("add5".equals(method)) {
			add5(req, resp);
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
		String zyyjfx = req.getParameter("zyyjfx");
		String username = req.getParameter("username");
		String yjnr = req.getParameter("yjnr");
	  
		Er Er = new Er(username,zyyjfx,yjnr);
		
		//添加后消息显示
		if(dao.add1(Er)){
		
			req.setAttribute("message", "添加成功");
			req.getRequestDispatcher("table2.1.jsp").forward(req,resp);}
		else {
			req.setAttribute("message", "添加失败");
			req.getRequestDispatcher("table2.1.jsp").forward(req,resp);}
		}
	
	
	/**
	 * 添加2
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void add2(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String jgmc1 = req.getParameter("jgmc1");
		String username = req.getParameter("username");
		
	  
		Er Er = new Er(username,jgmc1);
		
		//添加后消息显示
		if(dao.add2(Er)){
		
			req.setAttribute("message", "添加成功");
			req.getRequestDispatcher("table2.2.jsp").forward(req,resp);}
		else {
			req.setAttribute("message", "添加失败");
			req.getRequestDispatcher("table2.2.jsp").forward(req,resp);}
		}
	/**
	 * 添加3
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void add3(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String jgmc2 = req.getParameter("jgmc2");
		String username = req.getParameter("username");
		String zzpdbm = req.getParameter("zzpdbm");
		String zzdj = req.getParameter("zzdj");
		Er Er = new Er(username,jgmc2,zzdj,zzpdbm);
		
		//添加后消息显示
		if(dao.add3(Er)){
		
			req.setAttribute("message", "添加成功");
			req.getRequestDispatcher("table2.3.jsp").forward(req,resp);}
		else {
			req.setAttribute("message", "添加失败");
			req.getRequestDispatcher("table2.3.jsp").forward(req,resp);}
		}
		
	/**
	 * 添加4
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void add4(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String szdw = req.getParameter("szdw");
		String username = req.getParameter("username");
		String zsscxjdmc = req.getParameter("zsscxjdmc");
	
		Er Er = new Er(username,zsscxjdmc,szdw);

		//添加后消息显示
		if(dao.add4(Er)){
		
			req.setAttribute("message", "添加成功");
			req.getRequestDispatcher("table2.4.jsp").forward(req,resp);}
		else {
			req.setAttribute("message", "添加失败");
			req.getRequestDispatcher("table2.4.jsp").forward(req,resp);}
		}
	
	/**
	 * 添加5
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void add5(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String fwxm = req.getParameter("fwxm");
		String username = req.getParameter("username");
		String fwnr = req.getParameter("fwnr");
	
		Er Er = new Er(username,fwxm,fwnr);
		//添加后消息显示
		if(dao.add5(Er)){
		
			req.setAttribute("message", "添加成功");
			req.getRequestDispatcher("table2.5.jsp").forward(req,resp);}
		else {
			req.setAttribute("message", "添加失败");
			req.getRequestDispatcher("table2.5.jsp").forward(req,resp);}
		}


}
