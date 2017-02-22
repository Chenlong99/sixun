package com.sixun.web.managerServlet;

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

public class ManagerGuestCommentServlet extends ManagerBaseServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 处理中文乱码问题
		request.setCharacterEncoding("UTF-8");
		
		// 获取表单提交过来的url携带的参数
		String method = request.getParameter("method");
		System.out.println(method);
		 if ("list".equals(method)) {
			
			getMessages();
			getByPage(request);
			request.getRequestDispatcher("/sys/guestComment/GuestCommentList.jsp").forward(request, response);
		}
	}
	
	public void getMessages() {
		// 查询菜系信息-----需要保存到context域对象中，因为用的地方比较多，而且菜系信息比较少
		
		// 先从域对象中获取
		List<GuestComment> messages = (List<GuestComment>) this.getServletContext()
				.getAttribute("messages");
		if (messages == null) {
			// 如果获取不到就去查询
			messages = guestCommentService.getByName(null);
			this.getServletContext().setAttribute("Messages", messages);
		}
	}
	
	public void getByPage(HttpServletRequest request) {
			
		// 使用分页pageNow 使用条件 message
		String pageNow = request.getParameter("pageNow");
		String pageCount = request.getParameter("pageCount");
		String message = request.getParameter("message");
		// 判断realName 和 userName 是否需要保存到session "name" ""
		HttpSession session = request.getSession();
		
		if (pageNow == null) {
			pageNow = (String) session.getAttribute("pageNow");
			System.out.println("pageNow" + pageNow);
		}

		if (pageCount == null) {
			pageCount = (String) session.getAttribute("pageCount");
			System.out.println("pageCount" + pageCount);
		}
			
		if (message == null) {

			message = (String) session.getAttribute("message");
			System.out.println("message" + message);
		} else {
			session.setAttribute("message", message);
		}

		PageBean<GuestComment> pb = guestCommentService.list(pageNow, message);
		
		System.out.println(pb + " ---------------------");
	
		request.setAttribute("pb", pb);
		System.out.println("----------------分页结果--------------------");
		System.out.println(pb.getPageNow() + "  " + pb.getTotalRows());
		System.out.println(pb.getDatas());

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
