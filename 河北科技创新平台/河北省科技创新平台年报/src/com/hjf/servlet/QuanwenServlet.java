package com.hjf.servlet;

import java.io.File;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.IndexWriterConfig.OpenMode;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;


import com.hjf.dao.QuanwenDao;
import com.hjf.entity.Chaxun;

import com.mysql.jdbc.PreparedStatement;

import com.hjf.util.*;;



@WebServlet("/QuanwenServlet")
public class QuanwenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 public QuanwenServlet() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
    QuanwenDao dao = new QuanwenDao();

    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		if ("search".equals(method)) {
			search(req, resp);
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
		String NAME = req.getParameter("NAME");
		java.sql.Connection conn;
		DBUtil connection = new DBUtil();
		conn = connection.getConn();
		PreparedStatement pstmt = null;
		if(NAME!="") {
		try {
			pstmt = (PreparedStatement) conn.prepareStatement("  select * from weihu join fengmian on weihu.username=fengmian.username ");
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		ResultSet rs = null;
		try {
			rs = pstmt.executeQuery();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
// 为表字段建立索引
//Directory dir = new SimpleFSDirectory(new File(indexDir));
		Directory directory = FSDirectory.open(new File("D:\\lelucene1\\index").toPath());
// 分词
		Analyzer luceneAnalyzer = new StandardAnalyzer();
		IndexWriterConfig iwc = new IndexWriterConfig(luceneAnalyzer);
		iwc.setOpenMode(OpenMode.CREATE);
		IndexWriter indexWriter = new IndexWriter(directory, iwc);

		try {
			while (rs.next()) {
				
				Document doc = new Document();
				
				doc.add(new TextField("id1", rs.getString(1), Field.Store.YES));
				doc.add(new TextField("ptbh", rs.getString(2), Field.Store.YES));

				
				doc.add(new TextField("ptmc", rs.getString(3), Field.Store.YES));

				doc.add(new TextField("ytdw", rs.getString(4), Field.Store.YES));

				doc.add(new TextField("ptjb", rs.getString(5), Field.Store.YES));

				doc.add(new TextField("ptlx", rs.getString(6), Field.Store.YES));

				doc.add(new TextField("pzwh", rs.getString(7), Field.Store.YES));
				doc.add(new TextField("pzrq", rs.getString(8), Field.Store.YES));
				doc.add(new TextField("id", rs.getString(10), Field.Store.YES));
				doc.add(new TextField("guanlibumen", rs.getString(11), Field.Store.YES));
				doc.add(new TextField("name", rs.getString(12), Field.Store.YES));
				doc.add(new TextField("bumen", rs.getString(13), Field.Store.YES));
				doc.add(new TextField("telephone", rs.getString(14), Field.Store.YES));
				doc.add(new TextField("phone", rs.getString(15), Field.Store.YES));
				doc.add(new TextField("email", rs.getString(16), Field.Store.YES));
				doc.add(new TextField("time", rs.getString(17), Field.Store.YES));
			

				indexWriter.addDocument(doc);
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		System.out.println("numDocs" + indexWriter.numRamDocs());
		indexWriter.close();
		try {
			List<Chaxun> list=QuanwenDao.search(NAME);
			req.setAttribute("message", "查询成功");
			req.setAttribute("list", list);
			req.getRequestDispatcher("quanwenjiansuo.jsp").forward(req,resp);
		} catch (Exception e) {
// TODO: handle exception
			System.out.println(e);
		}
	}
	
	else {
		req.getRequestDispatcher("quanwenjiansuo.jsp").forward(req,resp);}
	}
	}
	
		
		
		
		
		
	
	

