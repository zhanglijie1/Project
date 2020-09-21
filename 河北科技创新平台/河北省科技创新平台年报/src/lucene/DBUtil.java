package lucene;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 鏁版嵁搴撶殑宸ュ叿绫�?
 * @author zm
 *
 */
public class DBUtil {
	//eshop涓烘暟鎹簱鍚嶇О锛宒b_user涓烘暟鎹簱鐢ㄦ埛鍚峝b_password涓烘暟鎹簱瀵嗙�?
	public static String db_url = "jdbc:mysql://localhost:3306/test?characterEncoding=utf8&useSSL=true";//jdbc:mysql://localhost:3306/eshop?useUnicode=true&characterEncoding=UTF-8
	public static String db_user = "root";
	public static String db_password = "199126";

	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db_url, db_user, db_password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void close(Statement state, Connection conn) {
		if(state!=null) {
			try {
				state.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn!=null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public static void close(ResultSet rs, Statement state, Connection conn) {
		if(rs!=null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(state!=null) {
			try {
				state.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn!=null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
