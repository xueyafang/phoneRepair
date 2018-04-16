package com.etc.repair.biz;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.repair.dao.UserDao;
import com.etc.repair.vo.User;

public class UserBiz {
	private UserDao userDao = new UserDao();
	
	
	/**
	 * 登录
	 * @param username
	 * @param password
	 * @return
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws FileNotFoundException 
	 * @throws ClassNotFoundException 
	 * @throws InstantiationException 
	 * @throws IllegalAccessException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 */
	public User login(String username, String password) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException {
		userDao.getconn();//获取数据库连接
		User u = userDao.login(username,password);
		userDao.close();//关闭数据库连接
		return u;//返回用户
	}

	/**
	 * 注册
	 * @param u
	 * @return
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws FileNotFoundException 
	 * @throws ClassNotFoundException 
	 * @throws InstantiationException 
	 * @throws IllegalAccessException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 */
	public Boolean regist(User u) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException {
		
		//获取数据库连接
		userDao.getconn();
		//查询数据是否存在，如果不存在返回true，如果存在返回false
		boolean flag = userDao.select(u.getUsername());
		if(flag){
				flag = userDao.regist(u);
		}
		//关闭数据库库
		userDao.close();
		//返回结果
		return flag;
	}
	/**
	 * 个人信息
	 * @param uid
	 * @return
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws FileNotFoundException 
	 * @throws ClassNotFoundException 
	 * @throws InstantiationException 
	 * @throws IllegalAccessException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 */
	public User searchUid(int uid) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException {
		userDao.getconn();
		User user = userDao.searchUid(uid);
		userDao.close();
		return user;
	}
	/**
	 * 获取用户列表
	 * @param pageSize 
	 * @param currPage 
	 * @param currPage
	 * @param pageSize
	 * @return
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws FileNotFoundException 
	 * @throws ClassNotFoundException 
	 * @throws InstantiationException 
	 * @throws IllegalAccessException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 */
	public List<User> getAllUser(int currPage, int pageSize) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		userDao.getconn();
		List<User> list = userDao.getAllUser(currPage, pageSize);
		userDao.close();
		return list;
	}


	public int totalCount() throws ClassNotFoundException, FileNotFoundException, SQLException, IOException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException {
		userDao.getconn();
		int totalCount = userDao.totalCount();
		userDao.close();
		return totalCount;
	}

	public User showUser(int uid) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		userDao.getconn();
		User user = userDao.showUser(uid);
		userDao.close();
		return user;
	}
	/**
	 * 后台修改用户信息
	 * @param uid 
	 * @param username
	 * @param name
	 * @param score
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
	public int editUser(int uid, String username, String name, int score,
			String password) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		userDao.getconn();
		int num = userDao.editUser(uid,username,name,score,password);
		userDao.close();
		return num;
	}

	public int deleteUser(int uid) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		userDao.getconn();
		int num = userDao.deleteUser(uid);
		userDao.close();
		return num;
	}

	
}
