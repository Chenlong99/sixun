package com.sixun.web.userServlet;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.locale.converters.DateLocaleConverter;

import com.sixun.entity.GuestComment;
import com.sixun.page.PageBean;

public class UserGuestCommentServlet extends UserBaseServlet {

	String path;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		path = this.getServletContext().getContextPath();
		
		// 处理中文乱码问题
		request.setCharacterEncoding("UTF-8");
		
		// 获取表单提交过来的url携带的参数
		String method = request.getParameter("method");
		System.out.println(method);
			
		if ("add".equals(method)) {
			GuestComment messages =copyToBean(request, GuestComment.class);
			System.out.println("添加信息成功：" + messages);
			// 重定向
			if (!guestCommentService.add(messages)) {
				throw new RuntimeException("添加信息失败");
			}
			response.sendRedirect( "/App/zuozong.jsp");
		} 
	}
	
	
	/**
	 * 封装 上传信息 目的----------得到一个Messages对象
	 * 
	 * @param request
	 */
	private <T> T copyToBean(HttpServletRequest request, Class<T> clazz) {
		//注册日期解析方式
		ConvertUtils.register(new DateLocaleConverter(), Date.class);
		T t = null;
		try {
			t= clazz.newInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			 Map map   = request.getParameterMap();
			BeanUtils.populate(t, map);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return t;
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
