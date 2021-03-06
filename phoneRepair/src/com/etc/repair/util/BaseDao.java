package com.etc.repair.util;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.ParameterMetaData;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;


public class BaseDao extends JDBCUtil {
	/**
	 * 
	 * @param sql
	 * @param paramters
	 * @param clazz
	 * @return
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws FileNotFoundException 
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 * @throws SecurityException 
	 * @throws NoSuchMethodException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 */
	public  <T> ArrayList<T> query(String sql,Object [] paramters,Class<T> clazz) throws ClassNotFoundException, SQLException, IOException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException{
		ArrayList<T> list = new ArrayList<T>();
		pstmt = con.prepareStatement(sql);
		//给？赋值
		ParameterMetaData pmd = pstmt.getParameterMetaData();// 获取参数元数据
		int count = pmd.getParameterCount();
		// ?和参数个数不匹配
		if (paramters.length < count || paramters.length > count) {
			return null;
		}
		for (int i = 0; i < paramters.length; i++) {
			Object obj = paramters[i];
			pstmt.setObject(i + 1,obj);
		}
		
		//执行
		rs = pstmt.executeQuery();
		//结果集元数据
		ResultSetMetaData rsm = pstmt.getMetaData();
		
		while(rs.next()){
			//通过calss对象来创建我们需要
			T t = clazz.newInstance();
			//给t的属性赋值
			for (int i = 0; i < rsm.getColumnCount(); i++) {
				String key = rsm.getColumnName(i+1);
				Object value = rs.getObject(i+1);
				//把value的值赋值给t对象的key属性
				BeanUtils.copyProperty(t, key, value);//hibernate  映射数据库表和实体
			}
			//添加到集合
			list.add(t);
			System.out.println();
		}
		return list;
		
	}
	/**
	 * 增删改的通用方法
	 * 
	 * @param sql
	 *            :sql语句
	 * @param Object
	 *            ...paramters:不确定具体的个数
	 * @return int：修改的行数
	 * @throws IOException
	 * @throws SQLException
	 * @throws FileNotFoundException
	 * @throws ClassNotFoundException
	 */
	public int Update(String sql, Object... paramters)
			throws ClassNotFoundException, FileNotFoundException, SQLException,
			IOException {
		pstmt = con.prepareStatement(sql);
		// 给？赋值 了解有多少个问号，问号的值在哪？
		ParameterMetaData pmd = pstmt.getParameterMetaData();// 获取参数元数据
		int count = pmd.getParameterCount();
		// ?和参数个数不匹配
		if (paramters.length < count || paramters.length > count) {
			return -1;
		}
		for (int i = 0; i < paramters.length; i++) {
			pstmt.setObject(i + 1, paramters[i]);
		}
		int num = pstmt.executeUpdate();
		return num;
	}
}