package com.etc.repair.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.repair.biz.OrderBiz;
import com.etc.repair.biz.StoreBiz;
import com.etc.repair.biz.UserBiz;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class CountServlet
 */
public class CountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CountServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response){
		String method=request.getParameter("method");
		if("getCount".equals(method)){
			getCount(request,response);
		}
				
	}

	/**
	 * 获取商店,用户,订单的数量
	 * @param request
	 * @param response
	 */
	private void getCount(HttpServletRequest request,
			HttpServletResponse response) {
		StoreBiz sBiz = new StoreBiz();
		UserBiz uBiz = new UserBiz();
		OrderBiz oBiz = new OrderBiz();
		try {
			int store = sBiz.totalCount();
			int user = uBiz.totalCount();
			int order = oBiz.orderCount();
			List<Integer> list = new ArrayList<Integer>();
			list.add(store);
			list.add(user);
			list.add(order);
			JSONArray json = new JSONArray();
			json = json.fromObject(list);
			response.getWriter().println(json);
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
