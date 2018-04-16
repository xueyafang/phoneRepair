package com.etc.repair.dao;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.repair.util.BaseDao;
import com.etc.repair.vo.Store;
import com.etc.repair.vo.User;

public class UserDao extends BaseDao{
	/**
	 * 登录
	 * 
	 * @param username
	 * @param password
	 * @return
	 * @throws IOException
	 * @throws SQLException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 * @throws IllegalArgumentException
	 * @throws ClassNotFoundException
	 */
	public User login(String username, String password) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		//查询是否有这个用户
		List<User> list = query
				("select * from user where username=? and password=?", new Object[]{username,password}, User.class);
		//如果有这个用户，返回该用户，如果没有则返回空
		if(list.size()>0){
			return list.get(0);
		}else{
			return null;
		}
	}

	
	/**
	 * 判断账号是否存在
	 * @param username
	 * @return
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws InstantiationException 
	 * @throws IllegalAccessException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 * @throws ClassNotFoundException 
	 */
	public boolean select(String username) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		List<User> list = query("select * from user where username=?",
				new Object[] { username }, User.class);
		// 如果list中有数据，表示存在这个账号
		if (list.size() > 0) {
			return false;// 不能注册
		} else {
			// 否则不存在
			return true;// 可以注册
		}
	
	}


	//注册
	public boolean regist(User u) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		//添加
		int count = Update("insert into user(uid,username,password,score,name) values(?,?,?,?,?)",
				u.getUid(), u.getUsername(), u.getPassword(), 100,u.getName());
		//三目运算符    添加成功返回true
		return count==1?true:false;
		
	}

	/**
	 * 个人信息
	 * @param uid
	 * @return
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws InstantiationException 
	 * @throws IllegalAccessException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 * @throws ClassNotFoundException 
	 */
	public User searchUid(int uid) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		List<User> list = query("select * from user where uid=?", new Object[]{uid}, User.class);
		User us = list.get(0);
		return us;
	}
	/**
	 * 用户列表
	 * @param response 
	 * @param request 
	 * @param request
	 * @param response
	 * @return
	 * @throws ClassNotFoundException
	 * @throws IllegalArgumentException
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 * @throws InstantiationException
	 * @throws SQLException
	 * @throws IOException
	 */
	public List<User> getAllUser(int currPage, int pageSize) throws SQLException {
		pstmt = con.prepareStatement("select * from user limit ?,? ");
		pstmt.setInt(1, pageSize*(currPage-1));
		pstmt.setInt(2, pageSize);
		rs = pstmt.executeQuery();
		List<User> list = new ArrayList<User>();
		while(rs.next()){
			User s = new User();
			s.setUid(rs.getInt("uid"));
			s.setName(rs.getString("name"));
			s.setUsername(rs.getString("username"));
			s.setScore(rs.getInt("score"));
			list.add(s);
		}
		return list;
		
	}


	public int totalCount() throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		List<User> list = query("select * from user",new Object[]{},User.class);
		return list.size();
	}

/**
 * 后台修改用户
 * @param uid
 * @return
 * @throws IOException 
 * @throws SQLException 
 * @throws InstantiationException 
 * @throws IllegalAccessException 
 * @throws InvocationTargetException 
 * @throws IllegalArgumentException 
 * @throws ClassNotFoundException 
 */
	public User showUser(int uid) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		List<User> list = query(" select * from user where uid=?",new Object[]{uid},User.class);
		User user = list.get(0);
		return user;
		
	
	}


public int editUser(int uid, String username, String name, int score, String password) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
	int num = Update(" update user set username=?,name=?,score=?,password=?where uid=?", username,name,score,password,uid);
	return num;
	
}


public int deleteUser(int uid) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
	Update("delete from orders where uid=?",uid);
	int num = Update("delete from user where uid=?",uid);
	return num;
}
	


}
