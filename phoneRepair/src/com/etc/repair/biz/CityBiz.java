package com.etc.repair.biz;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;

import com.etc.repair.dao.CityDao;

public class CityBiz {
	CityDao cDao = new CityDao();
	public String getProvince() throws ClassNotFoundException, FileNotFoundException, SQLException, IOException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException {
		// TODO Auto-generated method stub
		cDao.getconn();
		String provinceList = cDao.getProvince();
		cDao.close();
		return provinceList;
	}
	public String getCity(Integer provinceId) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException {
		// TODO Auto-generated method stub
		cDao.getconn();
		String cityList = cDao.getCity(provinceId);
		cDao.close();
		return cityList;
	}

}
