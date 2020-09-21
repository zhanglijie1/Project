package com.picture.servlet;
import com.picture.dao.Dao;

import dao.UserDao;
import daoImpl.UserDaoImpl;
import entity.Users;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
 
/**
 * Servlet implementation class upServlet
 */
//@WebServlet("/upServlet")
public class upServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//֪ͨ�ͻ�����utf-8������н���
		       
				response.setContentType("text/html;charset=utf-8");
				//���ݿ���UTF-8�����������
				request.setCharacterEncoding("UTF-8");
				
				String name=null;
			
			    Users picture=new Users();
			    Dao dao=new Dao();
				//�ж������Ƿ�Ϊmultipar����
				if(!ServletFileUpload.isMultipartContent(request))
				{
					throw new RuntimeException("��ǰ����֧���ļ��ϴ�");
				}
				//Ϊ���ڴ��̵��ļ����һ��FileItem����
				DiskFileItemFactory factory = new DiskFileItemFactory();
				//������ʱ�ļ��ı߽�ֵ�����ڸ�ֵʱ���ϴ��ļ����ȱ�������ʱ�ļ��У������ϴ��ļ���ֱ��д�뵽�ڴ�
				//��λ���ֽڣ����ñ߽�ֵ1M��һ�ֽ�=1024M;
				factory.setSizeThreshold(1024*1024*1);
				//�����ļ���ʱ����
				String temppath=this.getServletContext().getRealPath("/temp");
				File temp=new File(temppath);
				factory.setRepository(temp);
				//����һ���µ��ļ��ϴ��������
				ServletFileUpload upload = new ServletFileUpload(factory);
				//����ÿһ��item��ͷ���ַ����룬����Խ���ļ��������������⣻
				upload.setHeaderEncoding("UTF-8");
				//���õ����ļ������߽�ֵ(������2M)
				upload.setFileSizeMax(1024*1024*2);
				//����һ���ϴ������ļ��ܺ͵����ֵ(���ϴ�����ļ�������,�������Ϊ5M)
				upload.setSizeMax(1024*1024*5);
				//��������,��ȡ���е�item
				try {
				//
					//����ServletFileUpload.parseRequest��������request����
					//�õ�һ�������������ϴ����ݵ�List����
				List <FileItem> items = upload.parseRequest(request);
				//����
				for(FileItem item:items){
				//��itemΪ��ͨ����
					if(item.isFormField()){
					//��ȡ������������
					String fieldName = item.getFieldName();
					if(fieldName.equals("name")){
					//��ȡ�����Ե�ֵ
					 name=item.getString("UTF-8");
					}
					System.out.println(fieldName+"="+name);
				//��	itemΪ�ļ�����
					}else{
					//��ȡ�ļ���С
					long size=item.getSize();
					//��ȡ�ļ�����
					String contentType = item.getContentType();
					//��ȡ�ϴ��ļ�ԭʼ����
					String fileName = item.getName();
					System.out.println("�ļ���С��"+size);
					System.out.println("�ļ������ͣ�"+contentType);
					//System.out.println("�ļ������ƣ�"+fileName);
				    //��ȡ�ļ���,�����ȡ�����ϴ��ļ����ļ�����·�����֣�ֻ�����ļ�������
					if(fileName.contains("\\"))
		            {
		                //����������ȡ�ַ���
						fileName=fileName.substring(fileName.lastIndexOf("\\")+1);
		            }
					//�����ļ�������Ϊͬ�����ļ��Ḳ�ǣ�����Ҫ�����ļ��������ú���+�ļ���
					fileName=System.currentTimeMillis()+fileName;
					System.out.println("�ļ������ƣ�"+fileName);
					//��ȡ������,��ʵ���ϴ��ļ�������
					InputStream inputStream = item.getInputStream();
					
					//String parent=this.getServletContext().getRealPath("./images");
					String path="C:\\Users\\HP\\eclipse-workspace\\WEBSJDS\\WebContent\\images";
					File dirFile=new File(path);
					if(!dirFile.exists()){
						//�����༶Ŀ¼mkdirs()
						dirFile.mkdir();
					}
					//����Ŀ¼�ļ����������ڱ����ϴ��ļ�
					File file = new File(path, fileName);
					//�����ļ������
					OutputStream os=new FileOutputStream(file);	
					//���������е�����д�뵽�����
					int len=0;
					byte[] buf=new byte[1024];
					while((len=inputStream.read(buf))!=-1){
						os.write(buf, 0, len);
					}
                   //ͼƬ�ϴ���֮���·��
					path="C:\\Users\\HP\\eclipse-workspace\\WEBSJDS\\WebContent\\images"+"\\"+fileName;
					String path1="images"+"\\"+fileName;
					picture.setUserName(name);
					picture.setUserimg(path1);
					System.out.println(picture.getUserName()+"----"+picture.getUserimg());
                   //����Dao�е�add()����
					dao.add(picture);
					os.close();
					inputStream.close();
					//ɾ����ʱ�ļ�
					item.delete();
					
					}
				}	
					
				} catch (FileUploadException e) {
					
					e.printStackTrace();
				}
				
				
				UserDao userDao = new UserDaoImpl();
				HttpSession session = request.getSession();
				Users users = userDao.isLogin1((String)session.getAttribute("username")); 
				session.setAttribute("loginUser1", users); 
				request.getRequestDispatcher("/servlet/TopicListAction").forward(request, response);
				
			}
 
	}
 
 
