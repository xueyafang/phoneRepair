package com.etc.repair.web;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.repair.biz.OrderBiz;
import com.etc.repair.vo.Orders;
import com.etc.repair.vo.PageBean;
import com.etc.repair.vo.User;

/**
 * Servlet implementation class OrderServlet
 */
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	OrderBiz oBiz = new OrderBiz();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String method = request.getParameter("method");
		if("insertOrder".equals(method)){
			try {
				insertOrder(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}else if("showOrder".equals(method)){
			//从这里进来说明是商家,下面的1代表商家
			String oid = request.getParameter("oid");
			try {
				showOrder(oid,request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}else if("pay".equals(method)){
			try{
				pay(request,response);
			}catch(Exception e){
				e.printStackTrace();
			}
			
		}else if("repairComplete".equals(method)){
			try{
				repairComplete(request,response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}else if("getAllOrder".equals(method)){
			try{
				getAllOrder(request,response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}else if("removeOrder".equals(method)){
			try{
				removeOrder(request,response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}else if("showOrders".equals(method)){
			try {
				showOrders(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if("orderCount".equals(method)){
			try {
				orderCount(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
	}
	/**
	 * 获取所有的订单
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws InstantiationException 
	 * @throws IllegalAccessException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 * @throws FileNotFoundException 
	 * @throws ClassNotFoundException 
	 */
 private void orderCount(HttpServletRequest request,
			HttpServletResponse response) throws ClassNotFoundException, FileNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		int orderCount = oBiz.orderCount();
		response.getWriter().print(orderCount);
	}

/**
  * 查询多条订单
  * @param string
  * @param request
  * @param response
 * @throws Exception 
  */
	private void showOrders( HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		int uid = Integer.parseInt(request.getParameter("uid"));
		int pageSize = Integer.parseInt(request.getParameter("pageSize"));
		int currPage = Integer.parseInt(request.getParameter("currPage"));
		List<List> list1 = oBiz.showOrder(uid,currPage,pageSize);
		PageBean<Object> pageBean = new PageBean<Object>();
		pageBean.setCurrPage(currPage);
		pageBean.setPageSize(pageSize);
		int totalCount = oBiz.totalCount(uid);
		pageBean.setTotalCount(totalCount);
		/*List<Object> list1 = oBiz.showOrders(uid);*/
		//将订单列表放进去
		request.setAttribute("list1", list1);
		request.setAttribute("pageBean", pageBean);
		request.getRequestDispatcher("jsp/repair.jsp").forward(request, response);

	}

	/**
	 * 移除单条订单
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws ClassNotFoundException 
	 */
	private void removeOrder(HttpServletRequest request, HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException {
		String oid = request.getParameter("oid");
		int num = oBiz.removeOrder(oid);
		response.getWriter().print(num);
		
	}

	/**
	 *  后台获取所有的订单
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws FileNotFoundException 
	 * @throws ClassNotFoundException 
	 * @throws ServletException 
	 * @throws InstantiationException 
	 * @throws IllegalAccessException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 */
	private void getAllOrder(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException, ServletException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException {
		// TODO Auto-generated method stub
		int currPage = Integer.parseInt(request.getParameter("currPage"));
		int pageSize = Integer.parseInt(request.getParameter("pageSize"));
		int totalCount = oBiz.getOrderCount();
		PageBean<Orders> pageBean = new PageBean<Orders>();
		pageBean.setTotalCount(totalCount);
		pageBean.setCurrPage(currPage);
		pageBean.setPageSize(pageSize);
		List<Orders> list = oBiz.getAllOrder(currPage,pageSize);
		request.setAttribute("list", list);
		request.setAttribute("pageBean", pageBean);
		request.getRequestDispatcher("jsp/admin/del_order.jsp").forward(request, response);
		
	}

	/**
	 * 维修完成,修改商户的状态 
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws FileNotFoundException 
	 * @throws ClassNotFoundException 
	 */
	private void repairComplete(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		// TODO Auto-generated method stub
		String oid = request.getParameter("oid");
		String fault = request.getParameter("fault");
		double price = Double.parseDouble(request.getParameter("price"));
		int num = oBiz.updateSstate(oid,fault,price);
		response.getWriter().print(num);
	}

	/**
	 * 用户付款
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws FileNotFoundException 
	 * @throws ClassNotFoundException 
	 */
	private void pay(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		String oid = request.getParameter("oid");
		int num = oBiz.updateUstate(oid);
		response.getWriter().print(num);
	}

	/**
	 * 生成订单
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws FileNotFoundException 
	 * @throws ClassNotFoundException 
	 * @throws ServletException 
	 * @throws InstantiationException 
	 * @throws IllegalAccessException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 */
	private void insertOrder(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException, ServletException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException {
		String oid = UUID.randomUUID().toString().replaceAll("-", "");
		int sid = Integer.parseInt(request.getParameter("sid"));
		int uid = Integer.parseInt(request.getParameter("uid"));
		Date date = new Date();
		int num = oBiz.insertOrder(oid,sid,uid,date);
		//显示订单,这个方法进去则为用户,0代表用户
		response.sendRedirect("/phoneRepair/order?method=showOrder&oid="+oid+"&flag="+0);
	}

	/**
	 * 显示订单
	 * @param oid
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws InstantiationException 
	 * @throws IllegalAccessException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 * @throws ClassNotFoundException 
	 * @throws ServletException 
	 */
	private void showOrder(String oid, HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException, ServletException {
		// TODO Auto-generated method stub
		List<Object> list = oBiz.showOrder(oid);
		int flag = Integer.parseInt(request.getParameter("flag"));
		//将订单列表放进去
		request.setAttribute("list", list);
		//判断是商家还是用户 1商家 0用户
		request.setAttribute("flag", flag);
		request.getRequestDispatcher("jsp/order.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
