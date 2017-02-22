package com.sixun.web.managerServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sixun.entity.UserRecord;
import com.sixun.page.PageBean;

public class ManagerUserRecordServlet extends ManagerBaseServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		to = this.getServletContext().getContextPath()
				+ "/servlet/managerUserRecord?method=list";
		// 处理中文乱码问题
		request.setCharacterEncoding("UTF-8");
		
		// 获取表单提交过来的url携带的参数
		String method = request.getParameter("method");
		System.out.println(method);
		
		 if ("list".equals(method)) {
			 
			getUserRecord();
			getByPage(request);
			to = request.getRequestDispatcher("/sys/userRecord/userRecordList.jsp");
		} 
		
	}
	
	public void getUserRecord() {
		// 查询菜系信息-----需要保存到context域对象中，因为用的地方比较多，而且菜系信息比较少
		// 先从域对象中获取
		List<UserRecord> userRecord = (List<UserRecord>) this
				.getServletContext().getAttribute("userRecord");
		if (userRecord == null) {
			// 如果获取不到就去查询
			userRecord = userRecordService.getByName(null);
			this.getServletContext().setAttribute("userRecord", userRecord);
		}
	}


	public void getByPage(HttpServletRequest request) {

		// 使用分页pageNow 使用条件realName userName
		String pageNow = request.getParameter("pageNow");
		String pageCount = request.getParameter("pageCount");
		String userName = request.getParameter("userName");
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

		if (userName == null) {

			userName = (String) session.getAttribute("userName");
			System.out.println("userName" + userName);
		} else {
			session.setAttribute("userName", userName);
		}

		PageBean<UserRecord> pb = userRecordService.list(pageNow, userName);
		request.setAttribute("pb", pb);

		System.out.println("----------------分页结果--------------------");
		System.out.println(pb.getPageNow() + "  " + pb.getTotalRows());
		System.out.println(pb.getDatas());

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
