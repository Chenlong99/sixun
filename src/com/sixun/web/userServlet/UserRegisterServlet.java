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
 **         Servlet: ���ղ��� ��ת ��ʾ-----jsp ҵ���߼��ж�---service
 * 
 */
public class UserRegisterServlet extends UserBaseServlet {
	
	String path;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		path= this.getServletContext().getContextPath();
		
		// ����������������
		request.setCharacterEncoding("UTF-8");
		// ��ȡ���ύ������urlЯ���Ĳ���
		String method = request.getParameter("method");
			
		if ("register".equals(method)) {
			// �û�ע����Ϣ���
			
			// �ض���
		} else if ("update".equals(method)) {
				
			
		} else if ("findById".equals(method)) {
			// ����Id��ѯ
				
		}

	}
	

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);

	}

}
