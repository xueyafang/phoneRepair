package com.etc.repair.web;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.etc.repair.biz.OrderBiz;
import com.etc.repair.biz.StoreBiz;
import com.etc.repair.vo.PageBean;
import com.etc.repair.vo.Store;

/**
 * Servlet implementation class StoreServlet
 */
public class StoreServlet extends HttpServlet {
	StoreBiz sBiz = new StoreBiz();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		//是否存在这个商家
		if("isExistStore".equals(method)){
			String susername = request.getParameter("susername");
			isExistStore(susername,request,response);
		}else if("getCode".equals(method)){
			getCode(request,response);
		}else if("regist".equals(method)){
			regist(request,response);
		}else if("login".equals(method)){
			String susername = request.getParameter("susername");
			String spassword = request.getParameter("spassword");
			String isAutoLogin = request.getParameter("isAutoLogin");
			login(request,response,susername,spassword,isAutoLogin);
		}else if("getStore".equals(method)){
			getStore(request,response);
		}else if("show".equals(method)){
			show(request,response);
		}else if("search".equals(method)){
			try {
				search(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if("fenye".equals(method)){
			//fenye(request,response);

		}else if("slistShow".equals(method)){
			try {
				slistShow(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}else if("searchBySid".equals(method)){
			try {
				searchBySid(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}else if("outLogin".equals(method)){
			outLogin(request,response);
		}else if("getComment".equals(method)){
			try {
				getComment(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}else if("slistSearch".equals(method)){
			try {
				slistSearch(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if("getAllStore".equals(method)){
			try {
				getAllStore(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if("deleteStore".equals(method)){
			try {
				deleteStore(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if("showStore".equals(method)){
			try{
			showStore(request,response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}else if("updateStore".equals(method)){
			try {
				updateStore(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if("storeCount".equals(method)){
			try {
				storeCount(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
	}
	/**
	 * 获取总共有多少个店铺
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
	private void storeCount(HttpServletRequest request,
			HttpServletResponse response) throws ClassNotFoundException, FileNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException {
		int storeCount = sBiz.totalCount();
		response.getWriter().print(storeCount);
	}

	/**
	 * 修改店铺信息
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
	private void updateStore(HttpServletRequest request,
			HttpServletResponse response) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, ServletException {
		int sid = Integer.parseInt(request.getParameter("sid"));
		String sname = request.getParameter("sname");
		String susername = request.getParameter("susername");
		String saddress = request.getParameter("saddress");
		String smajor = request.getParameter("smajor");
		String sdesc = request.getParameter("sdesc");
		String stime = request.getParameter("stime");
		int num = sBiz.updateStore(sid,sname,susername,saddress,smajor,sdesc,stime);
		getAllStore(request, response);
	}

	/**
	 * 展示某个店铺的信息
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
	private void showStore(HttpServletRequest request,
			HttpServletResponse response) throws ClassNotFoundException, FileNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException, ServletException {
		int sid = Integer.parseInt(request.getParameter("sid"));
		Store s = sBiz.showStore(sid);
		request.setAttribute("store", s);
		request.getRequestDispatcher("jsp/admin/store.jsp").forward(request, response);
	}

	/**
	 * 删除店铺信息
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws FileNotFoundException 
	 * @throws ClassNotFoundException 
	 */
	private void deleteStore(HttpServletRequest request,
			HttpServletResponse response) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		int sid = Integer.parseInt(request.getParameter("sid"));
		int num = sBiz.deleteStore(sid);
		response.getWriter().print(num);
	}

	/**
	 * 后台获取所有商户
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 * @throws SQLException 
	 * @throws ClassNotFoundException 
	 * @throws InstantiationException 
	 * @throws IllegalAccessException 
	 * @throws InvocationTargetException 
	 * @throws IllegalArgumentException 
	 */
	private void getAllStore(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException {
		int currPage = Integer.parseInt(request.getParameter("currPage"));
		int pageSize = Integer.parseInt(request.getParameter("pageSize"));
		List<Store> list = sBiz.getAllStore(currPage,pageSize);
		int totalCount = sBiz.totalCount();
		PageBean<Store> pageBean = new PageBean<Store>();
		pageBean.setCurrPage(currPage);
		pageBean.setPageSize(pageSize);
		pageBean.setTotalCount(totalCount);
		pageBean.setList(list);
		
		request.setAttribute("pageBean", pageBean);
		request.getRequestDispatcher("./jsp/admin/stores.jsp").forward(request, response);
	
		
	}

	/**
	 * 搜索用户的方法
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws FileNotFoundException 
	 * @throws ClassNotFoundException 
	 * @throws ServletException 
	 */
	
	private void slistSearch(HttpServletRequest request,
			HttpServletResponse response) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException, ServletException {
		String time = request.getParameter("time");
		String number = request.getParameter("number");
		int currPage = Integer.parseInt(request.getParameter("currPage"));
		int pageSize = Integer.parseInt(request.getParameter("pageSize"));
		HttpSession session = request.getSession();
		Store store = (Store) session.getAttribute("store");
		int sid = store.getSid();
		List list = sBiz.slistSearch(time,number,sid,currPage,pageSize);
		PageBean<Object> pageBean = new PageBean<Object>();
		pageBean.setCurrPage(currPage);
		pageBean.setPageSize(pageSize);
		int totalCount = sBiz.getTotalCount(sid,time,number);
		pageBean.setTotalCount(totalCount);
		request.setAttribute("list", list);
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("time", time);
		request.setAttribute("number", number);
		request.getRequestDispatcher("jsp/slist.jsp").forward(request, response);
	}

	/**

	 * 商户退出登录
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void outLogin(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("store");
		request.getRequestDispatcher("jsp/slogin.jsp").forward(request, response);
	}
	/**
	 * 获取评论
	 * @param request
	 * @param response
	 * @throws ClassNotFoundException
	 * @throws IllegalArgumentException
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 * @throws InstantiationException
	 * @throws SQLException
	 * @throws IOException
	 * @throws ServletException
	 */
	private void getComment(HttpServletRequest request,
			HttpServletResponse response) throws ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException, ServletException {
		int sid =  Integer.parseInt(request.getParameter("sid"));
		Store s = sBiz.getComment(sid);
		request.setAttribute("store", s);
		request.getRequestDispatcher("./jsp/comment.jsp").forward(request, response);
	}

	/**
	 * 店铺展示
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
	private void slistShow(HttpServletRequest request,
			HttpServletResponse response) throws ClassNotFoundException, FileNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException, ServletException {
		int sid = Integer.parseInt(request.getParameter("sid"));
		int currPage = Integer.parseInt(request.getParameter("currPage"));
		int pageSize = Integer.parseInt(request.getParameter("pageSize"));
		List list = sBiz.slistShow(sid,currPage,pageSize);
		PageBean<Object> pageBean = new PageBean<Object>();
		pageBean.setCurrPage(currPage);
		pageBean.setPageSize(pageSize);
		int totalCount = sBiz.getAllCount(sid);
		pageBean.setTotalCount(totalCount);
		request.setAttribute("list", list);	
		request.setAttribute("pageBean", pageBean);
		request.getRequestDispatcher("jsp/slist.jsp").forward(request, response);
		
	}

	/**
	 * 
	 * 商家详情
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
	private void searchBySid(HttpServletRequest request,
			HttpServletResponse response) throws ClassNotFoundException, FileNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException, IOException, ServletException {
		int sid =  Integer.parseInt(request.getParameter("sid"));
		Store s = sBiz.searchBySid(sid);
		request.setAttribute("store", s);
		request.getRequestDispatcher("./jsp/detail.jsp").forward(request, response);
	}

	
	/**
	 * 展示搜索出来的店铺
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
	private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException, IllegalAccessException, InstantiationException, SQLException {
		String city = request.getParameter("city");
		String province = request.getParameter("province");
		if("请选择城市".equals(city)){
			city = "";
		}
		if("请选择省份".equals(province)){
			province = "";
		}
		String address = province+"%"+city;
		String search = request.getParameter("search");
		int currPage = Integer.parseInt(request.getParameter("currPage"));
		int pageSize = Integer.parseInt(request.getParameter("pageSize"));
		List<Store> list = sBiz.searchShow(address,search,currPage,pageSize);
		PageBean<Store> pageBean = new PageBean<Store>();
		pageBean.setCurrPage(currPage);
		pageBean.setPageSize(pageSize);
		pageBean.setTotalCount(sBiz.searchTotalCount(address,search));
		pageBean.setList(list);
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("province", province);
		request.setAttribute("city", city);
		request.setAttribute("search", search);
		request.getRequestDispatcher("jsp/list.jsp").forward(request, response);
	}

	/**
	 * index开始展示6条数据
	 * @param request
	 * @param response
	 */
	private void show(HttpServletRequest request, HttpServletResponse response) {
		try {
			List<Store> list = sBiz.show();
			JSONArray json = new JSONArray();
			json = json.fromObject(list);
			response.getWriter().println(json);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}

	/**
	 * 通过省市去获取商店
	 * @param request
	 * @param response
	 */
	private void getStore(HttpServletRequest request, HttpServletResponse response) {
		String searchAddress = request.getParameter("searchAddress");
		try {
			List<Store> list = sBiz.getStore(searchAddress);
			//获取到了list然后把它弄到页面上
			JSONArray json = new JSONArray();
			json = json.fromObject(list);
			response.getWriter().println(json);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}

	/**
	 * 登录
	 * @param request
	 * @param response
	 * @param susername
	 * @param spassword
	 * @param isAutoLogin 
	 */
	private void login(HttpServletRequest request, HttpServletResponse response, String susername, String spassword, String isAutoLogin) {
		Store store = null;
		try {
			store = sBiz.login(susername,spassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(store==null){
			//商家为空,则登录失败			
			try {
				response.getWriter().print("用户名和密码不匹配,3秒之后跳转");
			} catch (IOException e) {
				e.printStackTrace();
			}
			// 案例2-定时跳转
			response.setHeader("refresh", "3;url=" + request.getContextPath()+"/jsp/slogin.jsp");
		}else{
			//登陆成功
			if(isAutoLogin!=null){
				//这是存的记住账号信息
				Cookie cUsername = new Cookie("username",store.getSusername());
				Cookie cPwd = new Cookie("password",store.getSpassword());
				response.addCookie(cUsername);
				response.addCookie(cPwd);
			}
			//只要商家登录成功,就把它放到session中
			HttpSession session = request.getSession();
			session.setAttribute("store", store);
			try {
				response.sendRedirect(request.getContextPath()+"/store?method=slistShow&sid="+store.getSid()+"&currPage=1&pageSize=5");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	/**
	 * 注册
	 * @param request
	 * @param response
	 */
	private void regist(HttpServletRequest request, HttpServletResponse response) {
		//1.获取字段sid;
		response.setContentType("text/html;charset=utf-8");
		getForm(request,response);
		String susername = (String) request.getAttribute("susername");
		String spassword = (String) request.getAttribute("spassword");
		String sname = (String) request.getAttribute("sname");
		String saddress = (String) request.getAttribute("saddress");
		String spic = (String) request.getAttribute("spic");
		String stime = (String) request.getAttribute("stime");
		String sdesc = (String) request.getAttribute("sdesc");
		String smajor = (String) request.getAttribute("smajor");
		boolean flag = false;
		try {
			flag = sBiz.regist(susername,spassword,sname,saddress,spic,stime,sdesc,smajor);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		if(flag){
			response.setHeader("refresh", "0;url=" +request.getContextPath()+"/jsp/slogin.jsp");
		}else{
			response.setHeader("refresh", "0;url=" + request.getContextPath()+"/jsp/sregist.jsp");
		}
	}

	/**
	 * 获取表单字段
	 * @param request
	 * @param response
	 */
	private void getForm(HttpServletRequest request, HttpServletResponse response) {
		try{
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter pw = response.getWriter();
			try {
				DiskFileItemFactory factory = new DiskFileItemFactory();
				String storePath = getServletContext().getRealPath("/upload");
				boolean isMultipart = ServletFileUpload.isMultipartContent(request);
				if (!isMultipart) {
					pw.write("传输方式有错误！");
					return;
				}
				ServletFileUpload upload = new ServletFileUpload(factory);
				upload.setFileSizeMax(4 * 1024 * 1024);
				upload.setSizeMax(6 * 1024 * 1024);
				
				List<FileItem> items = upload.parseRequest(request);
				for (FileItem item : items) {
					//如果不是普通表单字段
					if (!item.isFormField()) {
						String mimeType = item.getContentType();
						if (mimeType.startsWith("image")) {
							InputStream in = item.getInputStream();
							String fileName = item.getName();
							if (fileName == null || "".equals(fileName.trim())) {
								continue;
							}
							fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
							String newStorePath = makeStorePath(storePath);
							String id = UUID.randomUUID().toString().replaceAll("-", "");
							String ext = fileName.substring(fileName.lastIndexOf("."));
							String storeFile = newStorePath + "\\" + id + ext;
							String path[] = storeFile.split("webapps");
							String requirePath = path[1];
							request.setAttribute("spic", requirePath);
							OutputStream out = new FileOutputStream(storeFile);
							byte[] b = new byte[1024];
							int len = -1;
							while ((len = in.read(b)) != -1) {
								out.write(b, 0, len);
							}
							in.close();
							out.close();
							item.delete();
						} else {
							request.setAttribute("msg", "上传文件格式有错误！");
						}
					}else{
						String name = item.getFieldName();  
			            String value = item.getString();
			            value = new String(value.getBytes("iso-8859-1"),"utf-8");
			            request.setAttribute(name, value);
					}
				}
			} catch (org.apache.commons.fileupload.FileUploadBase.FileSizeLimitExceededException e) {
				request.setAttribute("msg", "单个文件不能超过4M");
			} catch (org.apache.commons.fileupload.FileUploadBase.SizeLimitExceededException e) {
				request.setAttribute("msg", "文件总和不能超过6M");
			} catch (FileUploadException e) {
				request.setAttribute("msg", "文件上传失败");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	/**
	 * 建立路径
	 * @param storePath
	 * @return
	 */
	private String makeStorePath(String storePath) {
		Date date = new Date();
		DateFormat df = DateFormat.getDateInstance(DateFormat.MEDIUM);
		String s = df.format(date);
		String path = storePath + "\\" +"store"+"\\"+ s;
		File file = new File(path);
		if (!file.exists()) {
			file.mkdirs();// 创建多级目录，mkdir只创建一级目录
		}
		return path;
	}

	/**
	 * 获取验证码
	 * @param response 
	 * @param request 
	 */
	private void getCode(HttpServletRequest request, HttpServletResponse response) {
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
	 * 是否存在用户
	 * @param susername
	 * @param request
	 * @param response
	 */
	private void isExistStore(String susername, HttpServletRequest request, HttpServletResponse response) {
		boolean flag;
		try {
			flag = sBiz.isExistStore(susername);
			if(flag){
				//存在这个用户
				response.getWriter().print(1);
			}else{
				//不存在这个用户
				response.getWriter().print(0);
			}
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