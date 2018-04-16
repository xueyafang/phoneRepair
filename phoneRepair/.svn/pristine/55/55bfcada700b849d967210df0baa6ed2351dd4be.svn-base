package com.etc.repair.web;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.repair.biz.UserBiz;
import com.etc.repair.dao.UserDao;
import com.etc.repair.vo.PageBean;
import com.etc.repair.vo.Store;
import com.etc.repair.vo.User;

/**
 * Servlet implementation class UserServlet                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
 */
public class UserServlet extends HttpServlet {
	
	private UserBiz userBiz = new UserBiz();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");

		if("login".equals(method)){
			try {
				login(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}else if("getCode".equals(method)){
			getCode(request,response);
		}else if("regist".equals(method)){
			try{
				regist(request,response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}else if("outLogin".equals(method)){
			outLogin(request,response);
		}else if("searchUid".equals(method)){
			try {
				searchUid(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if("getAllUser".equals(method)){
			try {
				getAllUser(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if("showUser".equals(method)){
			try {
				showUser(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}else if("editUser".equals(method)){
			try {
				editUser(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}else if("deleteUser".equals(method)){
			try {
				deleteUser(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}else if("userCount".equals(method)){
			try {
				userCount(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
	
	}
	/**
	 * 获取所有的用户
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
	private void userCount(HttpServletRequest request,
			HttpServletResponse response) throws ClassNotFoundException, FileNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		int userCount = userBiz.totalCount();
		response.getWriter().print(userCount);
	}

	/**
	 * 删除用户
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws FileNotFoundException 
	 * @throws ClassNotFoundException 
	 */
	private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		//获取uid
		int uid = Integer.parseInt(request.getParameter("uid"));
		//传入biz层
		int num = userBiz.deleteUser(uid);
		response.getWriter().print(num);
		
	}

	/**
	 * 后台修改用户信息
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
	private void editUser(HttpServletRequest request,
			HttpServletResponse response) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException, ServletException {
		//获得要修改的信息
		int uid = Integer.parseInt(request.getParameter("uid"));
		String username = request.getParameter("username");
		String name = request.getParameter("name");
		int score = Integer.parseInt(request.getParameter("score"));
		String password = request.getParameter("password");
		//将获得的值传入到biz层
		int num = userBiz.editUser(uid,username,name,score,password);
		//调用getAllUser方法
		getAllUser(request, response);
	}

	/**
	 * 后台显示单个用户信息
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 * @throws SQLException 
	 * @throws InstantiationException 
	 * @throws IllegalAccessException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 * @throws ClassNotFoundException 
	 */
	private void showUser(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException {
		//获取uid
		int uid = Integer.parseInt(request.getParameter("uid"));
		
		//将获得的uid传入biz层
		User user = userBiz.showUser(uid);
		request.setAttribute("user", user);
		request.getRequestDispatcher("./jsp/admin/user.jsp").forward(request, response);
	}

	/**
	 * 查询所有用户
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
	 * @throws ServletException 
	 */
	private void getAllUser(HttpServletRequest request,
			HttpServletResponse response) throws ClassNotFoundException, FileNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException, ServletException {
			int currPage = Integer.parseInt(request.getParameter("currPage"));
			int pageSize = Integer.parseInt(request.getParameter("pageSize"));
			List<User> list = userBiz.getAllUser(currPage,pageSize);
			int totalCount = userBiz.totalCount();
			PageBean<User> pageBean = new PageBean<User>();
			pageBean.setCurrPage(currPage);
			pageBean.setPageSize(pageSize);
			pageBean.setTotalCount(totalCount);
			pageBean.setList(list);
			request.setAttribute("pageBean", pageBean);
			request.getRequestDispatcher("jsp/admin/users.jsp").forward(request,response);
		
	}

	/**
	 * 退出登录
	 * @param request
	 * @param response
	 */
	private void outLogin(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		String url = (String) session.getAttribute("url");
		try {
			/*if(url==null){*/
				response.sendRedirect("/phoneRepair/jsp/"+"index.jsp");
			/*}else{*/
				//response.sendRedirect("/phoneRepair/jsp/"+url);
			//}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**

	 * 获得验证码
	 * @param request
	 * @param response
	 */
	private void getCode(HttpServletRequest request,
			HttpServletResponse response) {
		String code = request.getParameter("msg");
		//获取生成的验证码
		HttpSession session = request.getSession();//创建session
		String code1 = (String)session.getAttribute("code");
		int result = 0;
		//判断验证码
		if(code != null && code1.equalsIgnoreCase(code)){
			result = 1;
		}else{
			result = 0;
		}
		//将数据传到前台
		try {
			response.getWriter().print(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**

	 * 注册
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws ClassNotFoundException 
	 * @throws InstantiationException 
	 * @throws IllegalAccessException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 */
	private void regist(HttpServletRequest request, HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException {
		
		//设置编码格式
				request.setCharacterEncoding("utf-8");
				//获取所有属性
				
				String username = request.getParameter("username");
				String password = request.getParameter("pwd");
				String name = request.getParameter("name");
				//装入对象
				User u = new User();
				u.setUsername(username);
				u.setPassword(password);
				u.setName(name);
				// 传入biz
						Boolean flag = userBiz.regist(u);
						// 如果成功
						if (flag) {
							response.sendRedirect(request.getContextPath() + "/jsp/login.jsp");
						} else {
							// 失败情况
							response.getWriter().print("注册失败,请重新注册");
							// 案例2-定时跳转
							response.setHeader("refresh", "2;url=" + request.getContextPath()+ "/jsp/regist.jsp");
						}
		
	}

	/**
	 * 登录
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws InstantiationException 
	 * @throws IllegalAccessException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 * @throws ClassNotFoundException 
	 */
	private void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException {
		//获取页面用户的账号和密码
		String username = request.getParameter("userAccount");
		String password = request.getParameter("password");
		String remb = request.getParameter("remember_name");
			User user = userBiz.login(username,password);
			if(user==null){
				response.getWriter().write("账号或密码错误，请重新输入！");
				response.setHeader("Refresh", "1;url="+request.getContextPath()+"/jsp/login.jsp");
			}else{
				//记住用户名、密码
				if("ok".equals(remb)){
					Cookie c1 = new Cookie("username",user.getUsername());
					c1.setPath("/phoneRepair");
					c1.setMaxAge(60*60*24*3);
					Cookie c2 = new Cookie("password",user.getPassword());
					c2.setPath("/phoneRepair");
					c2.setMaxAge(60*60*24*3);
					response.addCookie(c1);
					response.addCookie(c2);
				}
				//将用户放到session中
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				String url = (String) session.getAttribute("url");
				if(url==null){
					response.sendRedirect(request.getContextPath()+"/jsp/index.jsp");
				}else{
					response.sendRedirect(request.getContextPath()+"/jsp/"+url);
				}
				
			}

	}
	/**
	 * 个人信息
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws InstantiationException 
	 * @throws IllegalAccessException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 * @throws FileNotFoundException 
	 * @throws ClassNotFoundException 
	 * @throws ServletException 
	 */
	private void searchUid(HttpServletRequest request,
			HttpServletResponse response) throws ClassNotFoundException, FileNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException, ServletException {
		int uid = Integer.parseInt(request.getParameter("uid"));
		User us = userBiz.searchUid(uid);
		request.setAttribute("user", us);
		request.getRequestDispatcher("./jsp/userindex.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
