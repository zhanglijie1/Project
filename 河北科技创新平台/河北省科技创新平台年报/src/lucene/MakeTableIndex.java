package lucene;

import java.io.File;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.BaseCompositeReader;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.Term;
import org.apache.lucene.queryparser.classic.MultiFieldQueryParser;
import org.apache.lucene.queryparser.surround.parser.QueryParser;
import org.apache.lucene.index.IndexWriterConfig.OpenMode;
import org.apache.lucene.index.LeafReader;
import org.apache.lucene.search.BooleanClause;
import org.apache.lucene.search.BooleanClause.Occur;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import com.mysql.jdbc.PreparedStatement;

public class MakeTableIndex {
	public static void main(String[] args) throws IOException, SQLException {
//String indexDir = "d:\\lucene\\index";
		java.sql.Connection conn;
		DBUtil connection = new DBUtil();
		conn = connection.getConnection();
		PreparedStatement pstmt = (PreparedStatement) conn.prepareStatement("SELECT * FROM student ");
		ResultSet rs = pstmt.executeQuery();
// Ϊ���ֶν�������
//Directory dir = new SimpleFSDirectory(new File(indexDir));
		Directory directory = FSDirectory.open(new File("D:\\lelucene\\index").toPath());
// �ִ�
		Analyzer luceneAnalyzer = new StandardAnalyzer();
		IndexWriterConfig iwc = new IndexWriterConfig(luceneAnalyzer);
		iwc.setOpenMode(OpenMode.CREATE);
		IndexWriter indexWriter = new IndexWriter(directory, iwc);

		while (rs.next()) {
			System.out.println("name***" + rs.getString(1));
			Document doc = new Document();

			doc.add(new TextField("Name", rs.getString(1), Field.Store.YES));
			doc.add(new TextField("English", rs.getString(2), Field.Store.YES));

			indexWriter.addDocument(doc);
		}
		System.out.println("numDocs" + indexWriter.numRamDocs());
		indexWriter.close();
		try {
			search("�����ְܰ�");
		} catch (Exception e) {
// TODO: handle exception
			System.out.println(e);
		}

	}

// ------------------Search
	public static void search(String name) throws Exception {
//String  dirPathString="d:\\lucene\\index";
//System.out.println(dirPathString);
//Directory dir = new SimpleFSDirectory(new File(dirPathString));//��ѯ������  ·��
		Directory directory = FSDirectory.open(new File("D:\\lelucene\\index").toPath());
//IndexReader reader = IndexReader.open(directory);
		IndexReader indexReader = DirectoryReader.open(directory);
		IndexSearcher searcher = new IndexSearcher(indexReader);

		String[] fields = { "Name", "English" };// ������Field�ֶ�����
		MultiFieldQueryParser parser = new MultiFieldQueryParser(fields, new StandardAnalyzer());
		Query query = parser.parse(name);

		TopDocs tds = searcher.search(query, 10);
		System.out.println("��ѯ�ܼ�¼����" + tds.totalHits);
		ScoreDoc[] sds = tds.scoreDocs;
		for (ScoreDoc sd : sds) {
			System.out.println(sd.score);
			int docName = sd.doc;
			Document doc = searcher.doc(docName);

			String Name = doc.get("Name");
			String English = doc.get("English");
			System.out.println("---Name:" + Name + "---English:" + English);
		}
	}
}
