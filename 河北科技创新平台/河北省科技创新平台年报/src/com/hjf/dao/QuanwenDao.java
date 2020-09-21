package com.hjf.dao;

import java.io.File;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.queryparser.classic.MultiFieldQueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;

import java.util.ArrayList;
import com.hjf.entity.Chaxun;




public class QuanwenDao {

	public static List<Chaxun> search(String name) throws Exception {
		List<Chaxun> list=new ArrayList<>();
		//String  dirPathString="d:\\lucene\\index";
		//System.out.println(dirPathString);
		//Directory dir = new SimpleFSDirectory(new File(dirPathString));//查询分析器  路径
				Directory directory = FSDirectory.open(new File("D:\\lelucene1\\index").toPath());
		//IndexReader reader = IndexReader.open(directory);
				IndexReader indexReader = DirectoryReader.open(directory);
				IndexSearcher searcher = new IndexSearcher(indexReader);

				String[] fields = { "pzrq", "ptmc", "name", "time", "ptjb", "ptlx", "ptbh", "guanlibumen" };// 索引的Field字段数组
				MultiFieldQueryParser parser = new MultiFieldQueryParser(fields, new StandardAnalyzer());
				Query query = parser.parse(name);

				TopDocs tds = searcher.search(query, 10);
				System.out.println("查询总记录数：" + tds.totalHits);
				ScoreDoc[] sds = tds.scoreDocs;
				for (ScoreDoc sd : sds) {
					System.out.println(sd.score);
					int docName = sd.doc;
					Document doc = searcher.doc(docName);
					String pzrq = doc.get("pzrq");
					String ptmc = doc.get("ptmc");
					String name1 = doc.get("name");
					String time = doc.get("time");
					String ptjb = doc.get("ptjb");
					String ptlx = doc.get("ptlx");
					String ptbh = doc.get("ptbh");
					String guanlibumen = doc.get("guanlibumen");
					
					Chaxun chaxun = new Chaxun(pzrq,ptmc,name1,time,ptjb,ptlx,ptbh,guanlibumen);

					list.add(chaxun);
					System.out.println("---Name:" + ptmc + "---English:" + name1);
				}
				
				return list;
	}

}
