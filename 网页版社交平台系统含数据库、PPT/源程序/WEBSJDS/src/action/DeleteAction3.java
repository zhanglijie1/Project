package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DeleteDao;
import dao.DeleteDao3;
import daoImpl.DeleteDaoImpl;
import daoImpl.DeleteDaoImpl3;

public class DeleteAction3 extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
		this.doPost(request, response);
	} 
	
	/**
	 * ɾ���û��Լ�����΢��
	 * 
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String topicId = request.getParameter("topicId");
		
		DeleteDao3 deleteDao = new DeleteDaoImpl3();
		deleteDao.deleteTopic(Integer.parseInt(topicId));
		
		request.getRequestDispatcher("/servlet/TopicListAction2").forward(request, response);
		 
	}

}
