package com.hjf.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hjf.dao.ChaxunDao;
import com.hjf.entity.Chaxun;
import com.hjf.entity.jiben;



@WebServlet("/ChaxunServlet")
public class ChaxunServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 public ChaxunServlet() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
    ChaxunDao dao = new ChaxunDao();

    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		if ("search".equals(method)) {
			search(req, resp);
		}else if ("search1".equals(method)) {
			search1(req, resp);
		}else if ("search3".equals(method)) {
			search3(req, resp);
		}else if ("search4".equals(method)) {
			search4(req, resp);
		}
		else if ("search5".equals(method)) {
			search5(req, resp);
		}
		
		
    }
	/**
	 * 添加1
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void search(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String diaochaname = req.getParameter("diaochaname");
		String name1=req.getParameter("name");
		System.out.println(name1);
		System.out.println(diaochaname);
		
		if(name1!="") {
		List<Chaxun> chaxun=dao.search(diaochaname,name1);
		
		
		//添加后消息显示
		
		
			req.setAttribute("message", "查询成功");
			req.setAttribute("chaxun", chaxun);
			req.getRequestDispatcher("achakan.jsp").forward(req,resp);}
		
		else {
			req.setAttribute("message", "输入为空");
			req.getRequestDispatcher("achakan.jsp").forward(req,resp);}
		
	}
	
	private void search3(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String diaochaname = req.getParameter("diaochaname");
		String name=req.getParameter("name");
		String diaochaname1 = req.getParameter("diaochaname1");
		String name1=req.getParameter("name1");
		String diaochaname2 = req.getParameter("diaochaname2");
		String name2=req.getParameter("name2");
		String pzrq1=req.getParameter("pzrq1");
		String pzrq2=req.getParameter("pzrq2");
		String key1=req.getParameter("key1");
		String key2=req.getParameter("key2");
		String zhi1=req.getParameter("zhi1");
		String zhi2=req.getParameter("zhi2");
		System.out.println(name);
		System.out.println(diaochaname);
		System.out.println(name1);
		System.out.println(diaochaname1);
	
		List<Chaxun> chaxun=dao.search3(diaochaname,name,diaochaname1,name1,diaochaname2,name2,pzrq1,pzrq2,key1,key2,zhi1,zhi2);
		
		
		//添加后消息显示
		
		
		
			req.setAttribute("chaxun", chaxun);
			req.getRequestDispatcher("gaojijiansuo.jsp").forward(req,resp);}
		
		
	
	private void search4(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String username = req.getParameter("username");
		
		
		Chaxun chaxun=dao.search4(username);
		
		
		//添加后消息显示
		if(chaxun==null){
		
			System.out.println(1);}
		else {
			System.out.println(0);}
		}
	private void search5(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		
		String data=req.getParameter("data");
		System.out.println(data);
		
	
		List<jiben> chaxun=ChaxunDao.search5(data);
		
		System.out.println(chaxun);
		//添加后消息显示
		
		
			req.setAttribute("message", "查询成功");
			req.setAttribute("chaxun", chaxun);
			req.getRequestDispatcher("shuzhuangchaxun.jsp").forward(req,resp);}
		
	
	
	private void search1(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String diaochaname = req.getParameter("diaochaname");
		String name1=req.getParameter("name1");

		List<Chaxun> chaxun=dao.search(diaochaname,name1);
		
		
		//添加后消息显示
		if(chaxun.size()>0){
		
		
			req.setAttribute("chaxun", chaxun);
			req.getRequestDispatcher("c.jsp").forward(req,resp);}
		else {
			
			req.getRequestDispatcher("c.jsp").forward(req,resp);}
		}
	


}
