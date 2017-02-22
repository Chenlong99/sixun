package com.sixun.util;

public class StringUtils {
	
	/**
	 * 字符串非空判断
	 * @param strings   需要进行非空判断的字符串
	 * @return      这些字符串是否为空
	 *             true---------都不为null且不为空字符串
	 */
	
	public static boolean checkNull(String...strings){
		
		if(strings==null) return true;
		
		for(String str:strings){
			if(str==null || str.length()==0){
			     return true;	
			}
		}
		return false;
	}
}
