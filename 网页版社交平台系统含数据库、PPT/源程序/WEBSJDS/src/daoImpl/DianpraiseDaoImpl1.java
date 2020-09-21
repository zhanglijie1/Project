package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import dao.DianpraiseDao1;
import db.BaseDao;

public class DianpraiseDaoImpl1 extends BaseDao implements DianpraiseDao1{
	/**
	 * ��ѯ���û��Ƿ��Ѿ����ޣ�������޹��ˣ���loveMe����ɾ��˵˵��topic�����û��ĵ��޹�ϵ�ٵ��һ�Σ���ȡ������
	 * ��û�е��ޣ���
	 * 
	 */
	
	public void dianpraise(int userId,int topicId) {
		Connection conn  = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			conn = super.getConn();
			pst = conn.prepareStatement("select love_id from loveme where love_userId = ? and love_topicId = ?");
			pst.setInt(1, userId); 
			pst.setInt(2, topicId);
			
			rs = pst.executeQuery();
			int loveId;
			if(rs.next()){
				loveId = rs.getInt(1);
			}else{
				loveId = 0;
			}
			 
			if(loveId != 0){ 
				pst = conn.prepareStatement("delete from loveMe where love_id = ?");
				pst.setInt(1, loveId);
				pst.executeUpdate(); 
				
			}else{
				pst = conn.prepareStatement("insert into loveMe values(null,?,?)");
				pst.setInt(1, topicId);
				pst.setInt(2, userId);
				pst.executeUpdate(); 
			} 
			
		} catch (SQLException e) { 
			e.printStackTrace();
		}finally{
			super.close(conn, pst, rs);
		}
		
		

	}
}
