package com.etc.repair.dao;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.repair.util.BaseDao;
import com.etc.repair.vo.Admin;
import com.etc.repair.vo.Store;
import com.etc.repair.vo.User;

public class AdminDao extends BaseDao{
	
	/**
	 * 登录
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
	public Admin login(String username, String password) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		//判断数据库中是否有该用户
		List<Admin> list = query
				("select * from admin where username=? and password=?", new Object[]{username,password}, Admin.class);
		//如果有这个用户，返回该用户，如果没有则返回空
		if(list.size()>0){
			return list.get(0);
		}else{
			return null;
		}
	}


}
