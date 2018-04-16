package com.etc.repair.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class EncodingFilter implements Filter{
	public void init(FilterConfig filterConfig) throws ServletException {
//		System.out.println("过滤器初始化");
	}

	/**
	 * 
	 */
	public void doFilter(ServletRequest req, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
			/**
			 * 设置编码格式
			 *      1.请求的编码  post
			 *      get
			 */
		HttpServletRequest request=(HttpServletRequest)req;
		HttpGetRequest httpGetRequest=new HttpGetRequest(request);
		request.setCharacterEncoding("utf-8");
		/**
		 * 响应的编码设置
		 */
		HttpServletResponse resp = (HttpServletResponse)response;
		resp.setContentType("text/html;charset=UTF-8");
		//放行
		chain.doFilter(httpGetRequest, resp);
	}

	public void destroy() {
//		System.out.println("过滤器销毁");
	}

}
