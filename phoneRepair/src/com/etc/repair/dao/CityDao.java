package com.etc.repair.dao;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.List;

import com.etc.repair.util.BaseDao;
import com.etc.repair.vo.City;
import com.etc.repair.vo.Province;

public class CityDao extends BaseDao {

	public String getProvince() throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		// TODO Auto-generated method stub
		List<Province> list = query("select * from province", new Object[]{}, Province.class);
		String provinceList = "";
		for(int i=0;i<list.size();i++){
			if(i==(list.size()-1)){
				provinceList = provinceList+list.get(i).getName();
				break;
			}
			provinceList = provinceList+list.get(i).getName()+",";
		}
		return provinceList;
	}

	public String getCity(Integer provinceId) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		List<City> list = query("select * from city where provinceId=?", new Object[]{provinceId }, City.class);
		String cityList = "";
		for(int i=0;i<list.size();i++){
			if(i==(list.size()-1)){
				cityList = cityList+list.get(i).getName();
				break;
			}
			cityList = cityList+list.get(i).getName()+",";
		}
		return cityList;
	}

}
