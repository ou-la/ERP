package com.mybatisUtil;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionTset {
	private static String resource = "mybatis/mybatis-config.xml";
	private static SqlSession sqlSession = null;
	
	private static InputStream getConfig() {
		InputStream inputStream = null;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return inputStream;
	}
	
	public Object getMapper(Class cls) {
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(this.getConfig());
		sqlSession = sqlSessionFactory.openSession();
		Object obj = sqlSession.getMapper(cls);
		return obj;
	}
	
	public void commit() {
		sqlSession.commit();
	}
	
	public void closeSqlSession() {
		if (sqlSession != null) {
			sqlSession.close();
		}
	}
	
	/*public static void main(String[] args) {
		String resource = "mybatis/mybatis-config.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			SqlSession sqlSession = sqlSessionFactory.openSession();
			
			UserMapper usermapper = sqlSession.getMapper(UserMapper.class);
			//id
			User u = new User();
			u.setId("1");
			User user = usermapper.selectUserById(u);
			System.out.println(user.getUname()+"-------------"+user.getPhone());
			//pwd
			User u1 = new User();
			u1.setPwd("123456");
			List<User> user1 = usermapper.selectUserByPwd(user);
			System.out.println(user1);
			//关闭
			sqlSession.close();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}*/
}
