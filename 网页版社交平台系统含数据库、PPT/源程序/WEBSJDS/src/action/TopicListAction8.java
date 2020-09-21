package action;



import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import dao.TopicListDao1;
import daoImpl.DianzanDao;
import daoImpl.TopicListDaoImpl1;

import entity.Topic;



public class TopicListAction8 extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}
 
	/**
	 * 社区detail.jsp的所有值查询的方法
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String topicId = request.getParameter("topicId");
		
		
		int shumu = DianzanDao.search(Integer.parseInt(topicId));
		
		JSONArray array = new JSONArray();
		JSONObject json = new JSONObject();
			json.put("name",shumu);
			array.add(json);
			response.setContentType("application/json");
			response.setCharacterEncoding("utf-8");
			response.getWriter().write(array.toJSONString());
		
			 
	}
}
