package com.etc.repair.biz;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import com.etc.repair.dao.OrderDao;
import com.etc.repair.vo.Orders;
import com.etc.repair.vo.PageBean;

public class OrderBiz {
	OrderDao oDao = new OrderDao();
	
	/**
	 * 生成订单
	 * @param oid
	 * @param sid
	 * @param uid
	 * @param date
	 * @return
	 * @throws ClassNotFoundException
	 * @throws FileNotFoundException
	 * @throws SQLException
	 * @throws IOException
	 */
	public int insertOrder(String oid, int sid, int uid, Date date) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		// TODO Auto-generated method stub
		oDao.getconn();
		int num = oDao.insertOrder(oid,sid,uid,date);
		oDao.close();
		return num;
	}
	
	/**
	 * 显示当前生成的订单
	 * @param oid
	 * @return
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws InstantiationException 
	 * @throws IllegalAccessException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 * @throws ClassNotFoundException 
	 */
	public List<Object> showOrder(String oid) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		// TODO Auto-generated method stub
		oDao.getconn();
		List<Object> list = oDao.showOrder(oid);
		oDao.close();
		return list;
	}

	/**
	 * 将付款状态改为1
	 * @param oid
	 * @return
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws FileNotFoundException 
	 * @throws ClassNotFoundException 
	 */
	public int updateUstate(String oid) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		// TODO Auto-generated method stub
		oDao.getconn();
		int num = oDao.updateUstate(oid);
		oDao.close();
		return num;
	}

	/**
	 * 改变订单中商户的状态,故障,价格
	 * @param oid
	 * @param fault
	 * @param price
	 * @return
	 * @throws ClassNotFoundException
	 * @throws FileNotFoundException
	 * @throws SQLException
	 * @throws IOException
	 */
	public int updateSstate(String oid, String fault, double price) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		oDao.getconn();
		int num = oDao.updateSstate(oid,fault,price);
		oDao.close();
		return num;
	}

	/**
	 * 后台获取所有的订单
	 * @param pageSize 
	 * @param currPage 
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws FileNotFoundException 
	 * @throws ClassNotFoundException 
	 */
	public List<Orders> getAllOrder(int currPage, int pageSize) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		oDao.getconn();
		List<Orders> list = oDao.getAllOrder(currPage,pageSize);
		oDao.close();
		return list;
	}

	/**
	 * 移除单条订单
	 * @param oid 
	 * @return
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws FileNotFoundException 
	 * @throws ClassNotFoundException 
	 */
	public int removeOrder(String oid) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		oDao.getconn();
		int num = oDao.removeOrder(oid);
		oDao.close();
		return num;
	}

	/**
	 * 获取订单数量
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
	public int getOrderCount() throws ClassNotFoundException, FileNotFoundException, SQLException, IOException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException {
		oDao.getconn();
		int num = oDao.getOrderCount();
		oDao.close();
		
		return num;
	}



	public int totalCount(int uid) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		oDao.getconn();
		int totalCount = oDao.totalCount(uid);
		oDao.close();
		return totalCount;
	}

	public List<List> showOrder(int uid, int currPage, int pageSize) throws Exception {
		oDao.getconn();
		List<List> list = oDao.showOrders(uid,currPage,pageSize);
		oDao.close();
		return list;
	}

	public int orderCount() throws ClassNotFoundException, FileNotFoundException, SQLException, IOException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException {
		oDao.getconn();
		int orderCount = oDao.orderCount();
		oDao.close();
		return orderCount;
	}

}
