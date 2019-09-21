package com.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.User;
import com.mapper.UserMapper;
import com.mybatisUtil.SqlSessionTset;
  
@Controller
@RequestMapping("/select")
public class SelectController {
	/**
	private static String jdbcDriver = "com.mysql.jdbc.Driver";// mysql连接驱动,无需改
	
	public static String jdbcUrl = "jdbc:mysql://localhost:3306/skydrive?serverTimezone=UTC&characterEncoding=utf-8";
	public static String jdbcUser = "root";
	public static String jdbcPwd = "123";
	private static Connection conn;
	public static Statement st;
	
	static {
		try {
			Class.forName(jdbcDriver);// 加载mysql驱动类
			conn = DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPwd);
			// 驱动利用驱动地址，数据库用户名，密码创建连接
			st = conn.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	**/
	 
	@RequestMapping("/info")
	public String toInfo(HttpServletRequest req,HttpServletResponse resp,Model model) throws SQLException {
		/**
		List<Map> list =new ArrayList<Map>();//创建list集合用于存入map的键值对集合
		String sql ="select id,uname,phone from `user`";
		ResultSet rs = st.executeQuery(sql);
		//从数据库读取的内容，返回一个结果集。
		while (rs.next()) {
			String id = rs.getString("id");
			String uname = rs.getString("uname");
			String phone = rs.getString("phone");
			//获取用循环接收数据库的表格信息
			Map<String, String> map = new HashMap<String, String>(); 
			map.put("id", id);			
			map.put("uname", uname);		
			map.put("phone", phone);
			//用键值对存入到map集合中
			System.out.println(map);
			list.add(map);//在将map集合对象存入list集合
			System.out.println("放入集合");
			for (Map<?, ?> map_1 :list) {
				System.out.println(map_1);
			}//在打印台遍历出数据查看是否有错误
			req.setAttribute("key_list",list);//将list集合数据放入到request中共享
			resp.setCharacterEncoding("UTF-8");
			resp.setContentType("text/html;charset=UTF-8");
		}
		**/
		return "info";
	}
	
	@RequestMapping("/selectById")
	public String selectById(Model model) throws SQLException {
		SqlSessionTset ss = new SqlSessionTset();
		UserMapper um= (UserMapper)ss.getMapper(UserMapper.class);
		User u = new User();
		List<User> users = um.selectUserById(u);
		ss.closeSqlSession();
		model.addAttribute("key_list",users);
		return "info";
	}

	@RequestMapping("/selectByPwd")
	public String selectByPwd(Model model) throws SQLException {
		SqlSessionTset ss = new SqlSessionTset();
		UserMapper um= (UserMapper)ss.getMapper(UserMapper.class);
		User u = new User();
		List<User> users = um.selectUserByPwd(u);
		ss.closeSqlSession();
		model.addAttribute("key_list",users);
		return "info";
	}
	
	@RequestMapping("/insertOne")
	@ResponseBody
	public int insertOne(User user){
		try {
			SqlSessionTset ss = new SqlSessionTset();
			UserMapper um= (UserMapper)ss.getMapper(UserMapper.class);
			um.addUser(user);
			ss.commit();//数据库不运行sql语句的罪魁祸首
			ss.closeSqlSession();
			return 1;
		} catch (Exception e) {
			return 0;
		}
	}
	
	@RequestMapping("/deleteOne")
	public String deleteOne(String id) throws SQLException {
		SqlSessionTset ss = new SqlSessionTset();
		UserMapper um= (UserMapper)ss.getMapper(UserMapper.class);
		um.deleteUser(id);
		
		ss.commit();//数据库不运行sql语句的罪魁祸首
		ss.closeSqlSession();
		return "info";
	}
	
	@RequestMapping("/updateOne")
	@ResponseBody
	public int updateOne(User user){
		try {
			SqlSessionTset ss = new SqlSessionTset();
			UserMapper um= (UserMapper)ss.getMapper(UserMapper.class);
			List<User> users = um.selectUserByPwd(user);
			if(users.size()>0) {
				um.updateUser(user);
				ss.commit();//数据库不运行sql语句的罪魁祸首
			}
			/*else {
				MgTblMapper mm= (MgTblMapper)ss.getMapper(MgTblMapper.class);
				MgTbl mgTbl = new MgTbl();
				mgTbl.setId(id);
				List<MgTbl> mgTbls = um.selectUserByPwd(mgTbl);
				if(mgTbls.size()>0) {
					MgTbl m = new MgTbl();
					m.setId(id);
					m.setMgUserName(user.getUname());
					m.setMgUserPwd(user.getPwd());
					mm.updateMg(m);
				}else {
					return 0;
				}
			}
			
			um.updateUser(user);
			ss.commit();//数据库不运行sql语句的罪魁祸首
			ss.closeSqlSession();*/
			return 1;
		} catch (Exception e) {
			return 0;
		}
	}
}
