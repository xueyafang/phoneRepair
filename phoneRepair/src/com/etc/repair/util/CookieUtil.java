package com.etc.repair.util;

import javax.servlet.http.Cookie;

public class CookieUtil {

	/**
	 * 获取cookie中指定名字的值
	 * @param cookies
	 * @param cookNmae
	 * @return
	 */
	public static  String  getCookie(Cookie[] cookies ,String cookNmae){
		String value="";
		if(cookies!=null){
			for(Cookie cook: cookies){
				String name = cook.getName();
				if(cookNmae.equals(name)){
					 value = cook.getValue();
				}
			}
		}
		return value;
	}
	
	/**
	 * 
	 * @param cookies
	 * @param cookNmae
	 * @return
	 */
	public static Cookie getcookies(Cookie[] cookies ,String cookNmae){
		if(cookies!=null){
			for(Cookie cook: cookies){
				String name = cook.getName();
				if(cookNmae.equals(name)){
					return cook;
				}
			}
		}
		return null;
	}
}
