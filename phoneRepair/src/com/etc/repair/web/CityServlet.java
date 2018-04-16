package com.etc.repair.web;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.repair.biz.CityBiz;

/**
 * Servlet implementation class CityServlet
 */
public class CityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    CityBiz cBiz = new CityBiz();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CityServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		if("getProvince".equals(method)){
			getProvince(request,response);
		}else if("getCity".equals(method)){
			getCity(request,response);
		}
	}

	/**
	 * 获取城市列表
	 * @param request
	 * @param response
	 */
	private void getCity(HttpServletRequest request, HttpServletResponse response) {
		String cityList;
		Integer provinceId = Integer.parseInt(request.getParameter("provinceId"));
		try {
			cityList = cBiz.getCity(provinceId);
			response.getWriter().print(cityList);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获取省份列表
	 * @param request
	 * @param response
	 */
	private void getProvince(HttpServletRequest request, HttpServletResponse response) {
		String provinceList;
		try {
			provinceList = cBiz.getProvince();
			response.getWriter().print(provinceList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
