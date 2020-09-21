package com.hjf.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hjf.entity.Six;
import com.hjf.entity.Six;
import com.hjf.util.DBUtil;

public class SixDao {
	
	

		/**
		 * Ìí¼Ó1
		 * @param Er
		 * @return
		 */
		public boolean add1(Six Six) {
			String sql = "insert into Six1(username,zyxmly,zyxmlyfl,zyxmbh,zyxmmc,zyjhlb,zyqssj,zyjzsj,zyxmjfje,zyxmzt) values('" + Six.getUsername() + "','" + Six.getA() + "','" + Six.getB() + "','" + Six.getC()+ "','" + Six.getD()+ "','" + Six.getE()+ "','" + Six.getF()+ "','" + Six.getG()+ "','" + Six.getH()+ "','" + Six.getI()+"')";
			Connection conn = DBUtil.getConn();
			Statement state = null;
			boolean f = false;
			int a = 0;
			
			try {
				state = conn.createStatement();
				a=state.executeUpdate(sql);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBUtil.close(state, conn);
			}
			
			if (a > 0) {
				f = true;
			}
			return f;
		}
	

}
