package com.hjf.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hjf.entity.fengmian;
import com.hjf.entity.jiben;
import com.hjf.dao.jibenDao;
@WebServlet("/jibenServlet")
public class jibenServlet extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;
	 public jibenServlet() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
	jibenDao dao = new jibenDao();
	
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		if ("add".equals(method)) {
			add(req, resp);
		} 
	}

	
	
	/**
	 * 通过名字  登录查找
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException
	 * @throws ServletException 
	 */
	private void add(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		String ptmc=request.getParameter("ptmc");
		String ptbh=request.getParameter("ptbh");
		String pzny=request.getParameter("pzny");
		String pzwh=request.getParameter("pzwh");
		String jsly=request.getParameter("jsly");
		String ptjb=request.getParameter("ptjb");
		String szsx=request.getParameter("szsx");
		String ptzzxt=request.getParameter("ptzzxt");
		String jjjgj=request.getParameter("jjjgj");
		String fwgmjj1=request.getParameter("fwgmjj1");
		String fwgmjj2=request.getParameter("fwgmjj2");
		String fwgmjj3=request.getParameter("fwgmjj3");
		String ssxk1=request.getParameter("ssxk1");
		String ssxk2=request.getParameter("ssxk2");
		String ssxk3=request.getParameter("ssxk3");
		String ytdwmc=request.getParameter("ytdwmc");
		String ytdwdm=request.getParameter("ytdwdm");
		String ytdwxm=request.getParameter("ytdwxm");
		String bgdh=request.getParameter("bgdh");
		String ytdwlx=request.getParameter("ytdwlx");
		String gjdw=request.getParameter("gjdw");
		String ptwzmc=request.getParameter("ptwzmc");
		String wz=request.getParameter("wz");
		String pttxdz=request.getParameter("pttxdz");
		String yb=request.getParameter("yb");
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		String birth=request.getParameter("birth");
		String zc=request.getParameter("zc");
		String sxzy=request.getParameter("sxzy");
		String xl=request.getParameter("xl");
		String xw=request.getParameter("xw");
		String bgdh1=request.getParameter("bgdh1");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String username=request.getParameter("username");
	
		jiben jiben = new jiben( username,ptmc,ptbh,pzny,pzwh,jsly,ptjb,szsx,ptzzxt,jjjgj,fwgmjj1,fwgmjj2,fwgmjj3,ssxk1,ssxk2,ssxk3,ytdwmc,ytdwdm,ytdwxm,bgdh,ytdwlx,gjdw,ptwzmc,wz,pttxdz,yb,name,sex,birth,zc,sxzy,xl,xw,bgdh1,phone,email);
		//添加后消息显示
		if(dao.add(jiben)) {
	
			request.setAttribute("message", "添加成功");
			request.getRequestDispatcher("table1.1.jsp").forward(request,response);}
		else {
			request.setAttribute("message", "添加失败");
			request.getRequestDispatcher("table1.1.jsp").forward(request,response);
		}
		
		}
	}