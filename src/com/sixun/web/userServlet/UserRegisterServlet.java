package com.sixun.web.userServlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.sixun.entity.UserRegister;
import com.sixun.page.PageBean;
import com.sixun.service.impl.UserRegisterServiceImpl;
import com.sixun.util.StringUtils;

/**
 * @author tk
 * 
 **         Servlet: 接收参数 跳转 显示-----jsp 业务逻辑判断---service
 * 
 */
public class UserRegisterServlet extends UserBaseServlet {
	
	String path;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		path= this.getServletContext().getContextPath();
		
		// 处理中文乱码问题
		request.setCharacterEncoding("UTF-8");
		// 获取表单提交过来的url携带的参数
		String method = request.getParameter("method");
			
		if ("register".equals(method)) {
			// 用户注册信息添加
			
			// 重定向
		} else if ("update".equals(method)) {
				
			
		} else if ("findById".equals(method)) {
			// 根据Id查询
				
		}

	}
	

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);

	}

}
