package com.etc.repair.dao;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import com.etc.repair.util.BaseDao;
import com.etc.repair.vo.Orders;
import com.etc.repair.vo.Store;

public class StoreDao extends BaseDao{

	public boolean isExistStore(String susername) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		List<Store> list = query("select * from store where susername=?", new Object[]{susername}, Store.class);
		if(list.size()==0){
			//不存在
			return false;
		}
		return true;
	}

	public boolean regist(String susername, String spassword, String sname, String saddress, String spic, String stime,
			String sdesc, String smajor) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		int count = Update("insert into store(susername,spassword,sname,saddress,spic,stime,sdesc,smajor) values(?,?,?,?,?,?,?,?)", susername,spassword,sname,saddress,spic,stime,sdesc,smajor);
		return (count==1)?true:false;
	}

	public Store login(String susername, String spassword) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		List<Store> list = query("select * from store where susername=? and spassword=?", new Object[]{susername, spassword},Store.class);
		if(list.size()>0){
			return list.get(0);
		}
		
		return null;
	}

	/**
	 * 通过省市获取商家列表
	 * @param province
	 * @return
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws InstantiationException 
	 * @throws IllegalAccessException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 * @throws ClassNotFoundException 
	 */
	public List<Store> getStore(String searchAddress) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		pstmt = con.prepareStatement("select * from store where saddress like ?");	
		pstmt.setString(1, "%"+searchAddress+"%");
		rs = pstmt.executeQuery();
		List<Store> list = new ArrayList<Store>();
		while(rs.next()){
			Store store = new Store();
			store.setSid(rs.getInt("sid"));
			store.setSname(rs.getString("sname"));
			store.setSpic(rs.getString("spic"));
			store.setSdesc(rs.getString("sdesc"));
			store.setSmajor(rs.getString("smajor"));
			store.setSaddress(rs.getString("saddress"));
			list.add(store);
		}
		return list;
	}

	public List<Store> show() throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		pstmt = con.prepareStatement("select * from store limit 6");	
		rs = pstmt.executeQuery();
		List<Store> list = new ArrayList<Store>();
		while(rs.next()){
			Store store = new Store();
			store.setSid(rs.getInt("sid"));
			store.setSname(rs.getString("sname"));
			store.setSpic(rs.getString("spic"));
			store.setSdesc(rs.getString("sdesc"));
			store.setSmajor(rs.getString("smajor"));
			store.setSaddress(rs.getString("saddress"));
			list.add(store);
		}
		return list;
	}

	public List<Store> searchShow(String address, String search, int currPage, int pageSize) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		pstmt = con.prepareStatement("select * from store where saddress like ? and sdesc like ? limit ?,?");
		pstmt.setString(1, "%"+address+"%");
		pstmt.setString(2, "%"+search+"%");
		pstmt.setInt(3, pageSize*(currPage-1));
		pstmt.setInt(4, pageSize);
		rs = pstmt.executeQuery();
		List<Store> list = new ArrayList<Store>();
		while(rs.next()){
			Store s = new Store();
			s.setSid(rs.getInt("sid"));
			s.setSname(rs.getString("sname"));
			s.setSaddress(rs.getString("saddress"));
			s.setSmajor(rs.getString("smajor"));
			s.setSpic(rs.getString("spic"));
			list.add(s);
		}
		return list;
	}


	public Store searchBySid(int sid) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		List<Store> list = query("select * from store where sid=?", new Object[]{sid}, Store.class);
		Store s = list.get(0);
		return s;
	}


	public int searchTotalCount(String address, String search) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		List<Store> list = query("select * from store where saddress like ? and sdesc like ?", new Object[]{"%"+address+"%","%"+search+"%"}, Store.class);
		return list.size();
	}

	public List slistShow(int sid, int currPage, int pageSize) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		pstmt = con.prepareStatement("select u.name,u.username,o.date,o.oid from user u,orders o where sid=? and u.uid=o.uid limit ?,?");
		pstmt.setInt(1, sid);
		pstmt.setInt(2, pageSize*(currPage-1));
		pstmt.setInt(3,pageSize);
		rs = pstmt.executeQuery();
		List list = new ArrayList();
		while(rs.next()){
			List list1 = new ArrayList();
			String name = rs.getString("name");
			String username = rs.getString("username");
			Date date = rs.getDate("date");
			String oid = rs.getString("o.oid");
			list1.add(name);
			list1.add(username);
			list1.add(date);
			list1.add(oid);
			list.add(list1);
		}
		return list;
	}

	public Store getComment(int sid) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		List<Store> list = query("select * from store where sid=?", new Object[]{sid}, Store.class);
		Store s = list.get(0);
		return s;
	}

	public List slistSearch(String time, String number, int sid, int currPage, int pageSize) throws SQLException {
		if(!"".equals(number)&&!"".equals(time)){
			pstmt = con.prepareStatement("select u.name,u.username,o.date from user u,orders o where date=? and username=? and sid=? and u.uid=o.uid limit ?,?");
			pstmt.setString(1,time);
			pstmt.setString(2, number);
			pstmt.setInt(3, sid);
			pstmt.setInt(4, pageSize*(currPage-1));
			pstmt.setInt(5, pageSize);
		}else if("".equals(number)&&!"".equals(time)){
			pstmt = con.prepareStatement("select u.name,u.username,o.date from user u,orders o where date=? and sid=? and u.uid=o.uid limit ?,?");
			pstmt.setString(1,time);
			pstmt.setInt(2, sid);
			pstmt.setInt(3, pageSize*(currPage-1));
			pstmt.setInt(4, pageSize);
		}else if(!"".equals(number)&&"".equals(time)){
			pstmt = con.prepareStatement("select u.name,u.username,o.date from user u,orders o where username=? and sid=? and u.uid=o.uid limit ?,?");
			pstmt.setString(1, number);
			pstmt.setInt(2, sid);
			pstmt.setInt(3, pageSize*(currPage-1));
			pstmt.setInt(4, pageSize);
		}else if("".equals(number)&&"".equals(time)){
			pstmt = con.prepareStatement("select u.name,u.username,o.date from user u,orders o where sid=? and u.uid=o.uid limit ?,?");
			pstmt.setInt(1, sid);
			pstmt.setInt(2, pageSize*(currPage-1));
			pstmt.setInt(3, pageSize);
		}
		
		rs = pstmt.executeQuery();
		List list = new ArrayList();
		while(rs.next()){
			List list1 = new ArrayList();
			String name = rs.getString("name");
			String username = rs.getString("username");
			Date date = rs.getDate("date");
			list1.add(name);
			list1.add(username);
			list1.add(date);
			list.add(list1);
		}
		return list;
	}

	public List<Store> getAllStore(int currPage, int pageSize) throws SQLException {
			pstmt = con.prepareStatement("select * from store limit ?,? ");
			pstmt.setInt(1, pageSize*(currPage-1));
			pstmt.setInt(2, pageSize);
			rs = pstmt.executeQuery();
			List<Store> list = new ArrayList<Store>();
			while(rs.next()){
				Store s = new Store();
				s.setSaddress(rs.getString("saddress"));
				s.setSdesc(rs.getString("sdesc"));
				s.setSid(rs.getInt("sid"));
				s.setSmajor(rs.getString("smajor"));
				s.setSname(rs.getString("sname"));
				s.setSpassword(rs.getString("spassword"));
				s.setSusername(rs.getString("susername"));
				list.add(s);
			}
			return list;
	 }

	public int totalCount() throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		List<Store> list = query("select * from store ", new Object[]{}, Store.class);
		return list.size();
	}

	public int deleteStore(int sid) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		Update("delete from orders where sid=?",sid);
		int num = Update(" delete from store where sid=? ", sid);
		return num;
	}

	public Store showStore(int sid) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		List<Store> list = query("select * from store where sid=? ", new Object[]{sid}, Store.class);
		Store s = list.get(0);
		return s;
	}

	public int updateStore(int sid, String sname, String susername,
			String saddress, String smajor, String sdesc, String stime) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		int num = Update("update store set sname=?,susername=?,saddress=?,smajor=?,sdesc=?,stime=? where sid=? ", 
				sname,susername,saddress,smajor,sdesc,stime,sid);
		return num;
	}
	
	public int getAllCount(int sid) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		List list = query("select * from orders where sid=?", new Object[]{sid}, Orders.class);
		return list.size();
	}

	public int getTotalCount(int sid, String time, String number) throws SQLException {
		if(!"".equals(number)&&!"".equals(time)){
			pstmt = con.prepareStatement("select u.name,u.username,o.date from user u,orders o where date=? and username=? and sid=? and u.uid=o.uid");
			pstmt.setString(1,time);
			pstmt.setString(2, number);
			pstmt.setInt(3, sid);
		
		}else if("".equals(number)&&!"".equals(time)){
			pstmt = con.prepareStatement("select u.name,u.username,o.date from user u,orders o where date=? and sid=? and u.uid=o.uid");
			pstmt.setString(1,time);
			pstmt.setInt(2, sid);
			
		}else if(!"".equals(number)&&"".equals(time)){
			pstmt = con.prepareStatement("select u.name,u.username,o.date from user u,orders o where username=? and sid=? and u.uid=o.uid");
			pstmt.setString(1, number);
			pstmt.setInt(2, sid);
			
		}else if("".equals(number)&&"".equals(time)){
			pstmt = con.prepareStatement("select u.name,u.username,o.date from user u,orders o where sid=? and u.uid=o.uid");
			pstmt.setInt(1, sid);
			
		}
		rs = pstmt.executeQuery();
		List list = new ArrayList();
		while(rs.next()){
			List list1 = new ArrayList();
			String name = rs.getString("name");
			String username = rs.getString("username");
			Date date = rs.getDate("date");
			list1.add(name);
			list1.add(username);
			list1.add(date);
			list.add(list1);
		}
		return list.size();
	}

	public List<Object> getAddress() throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		pstmt = con.prepareStatement("select saddress from store");
		rs = pstmt.executeQuery();
		List<Object> list = new ArrayList<Object>();
		Set<String> set = new HashSet<String>();
		int count = 1;
		double totalCount = 0;
		Map<String ,Integer> map = new HashMap<String ,Integer>();
		while(rs.next()){
			//1.先把4个直辖市改为省
			String saddress = rs.getString("saddress");
			String[] str = saddress.split("市");
			List<String> province1 = new ArrayList<String>();
			province1.add("北京");
			province1.add("上海");
			province1.add("天津");
			province1.add("重庆");
			if(province1.contains(str[0])){
				saddress = saddress.replace('市', '省');
				//2.把区改为市
				saddress = saddress.replace('区', '市');
			}
			//3.将地址按省和市分开
			String[] str1 = saddress.split("省");
			//省份为str1[0]
			set = map.keySet();
			for (String string : set) {
				if(string.equals(str1[0])){
					count = map.get(str[0])+1;
					break;
				}
				count = 1;
			}
			map.put(str1[0],count);
			totalCount++;
			//统计出昌平,朝阳占的百分比
			
			//list.add(saddress);
			//遍历map
			
		}
		
		for (Entry<String, Integer> entry : map.entrySet()) { 
			double percent = entry.getValue()/totalCount*100;
		    list.add(entry.getKey()+" "+percent);
		} 
		return list;
	}
	



}
