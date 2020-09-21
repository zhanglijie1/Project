package com.hjf.mybatis.util;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class SqlSessionFactoryUtil {

    //SqlSessionFactory 对象
    private static SqlSessionFactory sqlSessionFactory = null;
    //类线程锁
    private static final Class CLASS_LOCK = SqlSessionFactoryUtil.class;

    private SqlSessionFactoryUtil(){}

    /*
     * 使用静态工厂构建SqlSessionFactory
     */
    public static SqlSessionFactory initSqlSessionFactory(){
        String resource = "mybatisConfig.xml";
        InputStream inputStream = null;
        try{
            inputStream = Resources.getResourceAsStream(resource);
        }catch(IOException e){
           e.printStackTrace();
        }
        synchronized(CLASS_LOCK){
            if(sqlSessionFactory == null){
                sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
            }
        }

        return sqlSessionFactory;
    }

    /*
     *  开启SqlSession
     */
     public static SqlSession openSqlSession(){
         if (sqlSessionFactory == null){
             initSqlSessionFactory();
         }
         return sqlSessionFactory.openSession();
     }
}

