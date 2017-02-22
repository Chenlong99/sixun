package com.sixun.web.userServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserSupplyDemandServlet extends UserBaseServlet {

	String path;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		path= this.getServletContext().getContextPath();
			
		// 处理中文乱码问题
		request.setCharacterEncoding("UTF-8");
		// 获取表单提交过来的url携带的参数
		String method = request.getParameter("method");
			
		if ("add".equals(method)) {
			// 信息添加
			
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
