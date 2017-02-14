package com.sixun.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sixun.entity.User;
import com.sixun.service.IUserService;
import com.sixun.service.impl.UserServiceImpl;
import com.sixun.util.StringUtils;

public class UserServlet extends HttpServlet {

  IUserService service =new UserServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ����������������	
		request.setCharacterEncoding("UTF-8");
		
		// ��ȡ���ύ������urlЯ���Ĳ���
		String method = request.getParameter("method");
		
		System.out.println(method);
		
		if ("add".equals(method)) {
			// ���Ա��
			try {
				add(request, response);
			} catch (Exception e) {
					
			}
			
		}
	}
		
	private void add(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		String passwordAgain = request.getParameter("passwordAgain");
		String phoneStr = request.getParameter("phone");
		String email = request.getParameter("email");
		// �����ַ����ǿ��ж�
		boolean isok = StringUtils.checkNull(userName, password, passwordAgain, phoneStr,
				email);
		if (!isok) {
			// ��ת�����ҳ���������
			return ;
		}
		System.out.println(userName+" "+password+" "+passwordAgain+" "+phoneStr+" "+email);
		// ת�� 
		try {
			service.addUser(new User(userName, password, passwordAgain, Integer.parseInt(phoneStr), email));
			// ��ת����ʾ����Ա��ҳ��
		} catch (Exception e) {
			throw new RuntimeException();
			// ��ת������ҳ��
		}
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

				doGet(request, response);
				
	}

}
