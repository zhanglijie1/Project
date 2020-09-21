package com.hjf.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hjf.dao.SanDao;
import com.hjf.entity.San;

/**
 * Servlet implementation class SanServlet
 */
@WebServlet("/SanServlet")
public class SanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
  SanDao dao= new SanDao();
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		if ("add1".equals(method)) {
			add1(req, resp);
		}else 
			if("add2".equals(method)) {
			add2(req, resp);
		}
			else 
				if("add3".equals(method)) {
				add3(req, resp);
			}
				else 
					if("add8".equals(method)) {
					add8(req, resp);
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
		String xyname = req.getParameter("xyname");
		String xysex = req.getParameter("xysex");
		String xybirth = req.getParameter("xybirth");
		String xyxl = req.getParameter("xyxl");
		String xyxw = req.getParameter("xyxw");
		String xybyyx = req.getParameter("xybyyx");
		String xysxzy = req.getParameter("xysxzy");
		String xyzc = req.getParameter("xyzc");
		String xyrccc= req.getParameter("xyrccc");
		String xygd = req.getParameter("xygd");
		String xygzxz = req.getParameter("xygzxz");
		String xyryzt = req.getParameter("xyryzt");
		String xyszdw = req.getParameter("xyszdw");
		System.out.println(xyszdw);
		San san = new San(username,xyname,xysex,xybirth,xyxl,xyxw,xybyyx,xysxzy,xyzc,xyrccc,xygd,xygzxz,xyryzt,xyszdw);
		
		//添加后消息显示
		if(dao.add1(san)){
		
			req.setAttribute("message", "添加成功");
			req.getRequestDispatcher("table.3.1.jsp").forward(req,resp);}
		else {
			req.setAttribute("message", "添加失败");
			req.getRequestDispatcher("table.3.1.jsp").forward(req,resp);}
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
		String username = req.getParameter("username");
		String xzname = req.getParameter("xzname");
		String xzsex = req.getParameter("xzsex");
		String xzbirth = req.getParameter("xzbirth");
		String xzxl = req.getParameter("xzxl");
		String xzxw = req.getParameter("xzxw");
		String xzbyyx = req.getParameter("xzbyyx");
		String xzsxzy = req.getParameter("xzsxzy");
		String xzzc = req.getParameter("xzzc");
		String xzrccc= req.getParameter("xzrccc");
		
		System.out.println(username);

		System.out.println(xzname);
		San san = new San(username,xzname,xzsex,xzbirth,xzxl,xzxw,xzbyyx,xzsxzy,xzzc,xzrccc);
		
		//添加后消息显示
		if(dao.add2(san)){
		
			req.setAttribute("message", "添加成功");
			req.getRequestDispatcher("table3.2.jsp").forward(req,resp);}
		else {
			req.setAttribute("message", "添加失败");
			req.getRequestDispatcher("table3.2.jsp").forward(req,resp);}
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
		String username = req.getParameter("username");
		String jsname = req.getParameter("jsname");
		String jssex = req.getParameter("jssex");
		String jsbirth = req.getParameter("jsbirth");
		String jsxl = req.getParameter("jsxl");
		String jsxw = req.getParameter("jsxw");
		String jsbyyx = req.getParameter("jsbyyx");
		String jssxzy = req.getParameter("jssxzy");
		String jszc = req.getParameter("jszc");
		String jsrccc= req.getParameter("jsrccc");
		String jsgd= req.getParameter("jsgd");
		String jsgzxz= req.getParameter("jsgzxz");
		
		
		System.out.println(username);

		System.out.println(jsname);
		San san = new San(username,jsname,jssex,jsbirth,jsxl,jsxw,jsbyyx,jssxzy,jszc,jsrccc,jsgd,jsgzxz);
		
		//添加后消息显示
		if(dao.add3(san)){
		
			req.setAttribute("message", "添加成功");
			req.getRequestDispatcher("table3.3.jsp").forward(req,resp);}
		else {
			req.setAttribute("message", "添加失败");
			req.getRequestDispatcher("table3.3.jsp").forward(req,resp);}
		}
	/**
	 * 添加1
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void add8(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String username = req.getParameter("username");
		String xygdname = req.getParameter("xygdname");
		String xygdsex = req.getParameter("xygdsex");
		String xygdbirth = req.getParameter("xygdbirth");
		String xygdxl = req.getParameter("xygdxl");
		String xygdxw = req.getParameter("xygdxw");
		String xygdbyyx = req.getParameter("xygdbyyx");
		String xygdsxzy = req.getParameter("xygdsxzy");
		String xygdzc = req.getParameter("xygdzc");
		String xygdrccc= req.getParameter("xygdrccc");
		String xygdgd = req.getParameter("xygdgd");
		String xygdgzxz = req.getParameter("xygdgzxz");
		String xygdryzt = req.getParameter("xygdryzt");
		String xygdszdw = req.getParameter("xygdszdw");
		System.out.println(xygdszdw);
		San san = new San(username,xygdname,xygdsex,xygdbirth,xygdxl,xygdxw,xygdbyyx,xygdsxzy,xygdzc,xygdrccc,xygdgd,xygdgzxz,xygdryzt,xygdszdw);
		
		//添加后消息显示
		if(dao.add8(san)){
		
			req.setAttribute("message", "添加成功");
			req.getRequestDispatcher("table.3.1.jsp").forward(req,resp);}
		else {
			req.setAttribute("message", "添加失败");
			req.getRequestDispatcher("table.3.1.jsp").forward(req,resp);}
		}
	
	
}
