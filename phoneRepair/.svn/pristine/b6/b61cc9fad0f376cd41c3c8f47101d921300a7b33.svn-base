package com.etc.repair.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import redis.clients.jedis.Jedis;


	
/**
 * Servlet implementation class CommentServlet
 */
public class CommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentServlet() {
        super();
    }
    
 

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		String method = request.getParameter("method");
		if("saveComment".equals(method)){
			try {
				saveComment(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if("getComments".equals(method)){
			try {
				getComments(request,response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}

	/**
	 * 获取所有评论
	 * @param request
	 * @param response
	 * @throws IOException 
	 */
	private void getComments(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String sid = request.getParameter("sid");
		//sid,username,comment
		Jedis jedis = new Jedis("127.0.0.1",6379);
		//获取jedis中所有的这件商品的评价
		List<String> plist = jedis.lrange(sid, 0, jedis.llen(sid));
		jedis.close();
		JSONArray json = new JSONArray();
		json = json.fromObject(plist);
		response.getWriter().println(json);
	}



	/**
	 * 用户付款完成进行评论,该方法去保存评论
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void saveComment(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String sid = request.getParameter("sid");
		String username = request.getParameter("username");
		String comment = request.getParameter("comment");
		//显示当前用户名+时间+内容
		Jedis jedis = new Jedis("127.0.0.1",6379);
		jedis.lpush(sid, username,comment);
		List<String> plist = jedis.lrange(sid, 0, jedis.llen(sid));
		response.sendRedirect("jsp/index.jsp");
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
	}

}
