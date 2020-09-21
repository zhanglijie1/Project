package com.hjf.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import com.hjf.entity.Chaxun;
import com.hjf.entity.jiben;
import com.hjf.util.DBUtil;
import mapper.ChaxunMapper;

import com.hjf.mybatis.util.SqlSessionFactoryUtil;

public class ChaxunDao {

	public  List<Chaxun>search(String diaochaname,String name) {
		String sql = "select * from weihu "
				+ "join fengmian "
				+ "on weihu.username=fengmian.username "
				+ "where "+diaochaname+" like '%" + name +"%' ";
        
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;
		Chaxun chaxun = null;
		int i=0;
		List<Chaxun> list = new ArrayList<>();
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			while (rs.next()) {
				i=i+1;
				String pzrq = rs.getString("pzrq");
				String ptmc = rs.getString("ptmc");
				String name1 = rs.getString("name");
				String time = rs.getString("time");
				String ptjb = rs.getString("ptjb");
				String ptlx = rs.getString("ptlx");
				String ptbh = rs.getString("ptlx");
				String guanlibumen = rs.getString("ptlx");
				String username = rs.getString("username");
				chaxun = new Chaxun(i,pzrq,ptmc,name1,time,ptjb,ptlx,username,ptbh,guanlibumen);
				list.add(chaxun);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, state, conn);
		}
		
		return list;
	}
	
	public static List<Chaxun>search1() {
		String sql = "select distinct pzrq from weihu ";
		
       
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;
		Chaxun chaxun = null;
		
		List<Chaxun> list = new ArrayList<>();
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			while (rs.next()) {
				
				String pzrq = rs.getString("pzrq");
			
			
				chaxun = new Chaxun(pzrq);
				list.add(chaxun);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, state, conn);
		}
	System.out.println(list.size());
		return list;
	}

	
	public static List<jiben>search5(String data) {
		String sql = "select * from jiben where szsx like'%"+data+"%' ";
		
		
       System.out.println(sql);
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;
		jiben jiben = null;
		
		List<jiben> list = new ArrayList<>();
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			while (rs.next()) {
				String ptmc = rs.getString("ptmc");
				String ptbh = rs.getString("ptbh");
				String ptjb = rs.getString("ptjb");
				String szsx = rs.getString("szsx");
				String name = rs.getString("name");
				jiben = new jiben(ptmc,ptbh,ptjb,szsx,name);
				list.add(jiben);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, state, conn);
		}
	
		return list;
	}

	public  static Chaxun search2(String pzrq1) {
		String sql = "select count(*) from weihu "
				+ "join fengmian "
				+ "on weihu.username=fengmian.username "
				+ "where pzrq ='" + pzrq1 +"' ";
         
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;
		Chaxun chaxun = null;
		int i=0;
		
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			while (rs.next()) {
				
			
				String pzrq=rs.getString("count(*)");
			
				chaxun = new Chaxun(pzrq);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, state, conn);
		}
		System.out.println(chaxun.getPzrq());
		return chaxun;
	}
	
	public  List<Chaxun>search3(String diaochaname,String name,String diaochaname1,String name1,String diaochaname2,String name2,String pzrq1,String pzrq2,String key1,String key2,String zhi1,String zhi2) {
	    
        List<Chaxun> list = new ArrayList<>();
        SqlSession sqlSession = null;
      
        try{
            sqlSession = SqlSessionFactoryUtil.openSqlSession();
            ChaxunMapper ChaxunMapper = sqlSession.getMapper(ChaxunMapper.class);
            //查找id = 输入参数id 的角色
            list = ChaxunMapper.getChaxun(diaochaname,name,diaochaname1,name1,diaochaname2,name2,pzrq1,pzrq2,key1,key2,zhi1,zhi2);
            //打印查找到的角色信息
            System.out.println(list);
        }catch(Exception e){
            System.err.println(e.getMessage());
            return null;
        }finally{
            if(sqlSession != null){
                sqlSession.close();
            }
        }
        return list;
    }

	public   Chaxun search4(String username) {
		String sql = "select count(*) from weihu "
				+ "join fengmian "
				+ "on weihu.username=fengmian.username "
				+ "where username ='" + username +"' ";
         
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;
		Chaxun chaxun = null;
		
		
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			while (rs.next()) {
				
			
				String pzrq=rs.getString("count(*)");
			
				chaxun = new Chaxun(pzrq);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, state, conn);
		}
		System.out.println(chaxun.getPzrq());
		return chaxun;
		}

}
