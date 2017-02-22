package com.sixun.web.managerServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sixun.factory.BeanFactory;
import com.sixun.service.IGuestCommentService;
import com.sixun.service.ISupplyDemandService;
import com.sixun.service.IUserRecordService;
import com.sixun.service.IUserRegisterService;


/**
 * @author tk
 * 使用工厂模式创建service 层对象
 */
public class ManagerBaseServlet extends HttpServlet {
	
	
	IGuestCommentService  guestCommentService= BeanFactory.getInstance("guestCommentService");
	ISupplyDemandService   supplyDemandService=BeanFactory.getInstance("supplyDemandService");
	IUserRecordService userRecordService = BeanFactory.getInstance("userRecordService");
	IUserRegisterService userRegisterService = BeanFactory.getInstance("userRegisterService");
	Object to;
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		super.service(request, response);
		
		 //跳转
 		if(to instanceof RequestDispatcher){
 			((RequestDispatcher)to).forward(request, response);
 		}else if(to instanceof String){
 			response.sendRedirect(to.toString());
 		}
	
	}

}
