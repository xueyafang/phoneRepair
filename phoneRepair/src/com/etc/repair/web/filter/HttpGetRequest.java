package com.etc.repair.web.filter;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

/**
 * 过滤  get请求
 * @author Limin
 *
 */
public class HttpGetRequest extends HttpServletRequestWrapper{

	public HttpGetRequest(HttpServletRequest request) {
		super(request);
	}
	

	@Override
	public String getParameter(String name) {
		String value = super.getParameter(name);
		//如果是get请求，name就用   new String() 来改变格式
		String method = this.getMethod();
		if("get".equalsIgnoreCase(method)){
			if(value!=null){
				try {
					value = new String(value.getBytes("iso-8859-1"),"utf-8");
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
			}
		}
		return value;
	}
	
}
