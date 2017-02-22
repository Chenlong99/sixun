package com.sixun.web.userServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sixun.factory.BeanFactory;
import com.sixun.service.IGuestCommentService;
import com.sixun.service.ISupplyDemandService;
import com.sixun.service.IUserRecordService;
import com.sixun.service.IUserRegisterService;


public class UserBaseServlet extends HttpServlet {
	
	IGuestCommentService  guestCommentService= BeanFactory.getInstance("guestCommentService");
	ISupplyDemandService   supplyDemandService=BeanFactory.getInstance("supplyDemandService");
	IUserRecordService userRecordService = BeanFactory.getInstance("userRecordService");
	IUserRegisterService userRegisterService = BeanFactory.getInstance("userRegisterService");
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		super.service(request, response);
			
	}

}
