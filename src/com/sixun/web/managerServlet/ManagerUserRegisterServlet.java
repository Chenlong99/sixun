package com.sixun.web.managerServlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.sixun.entity.UserRecord;
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
public class ManagerUserRegisterServlet extends ManagerBaseServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		to=this.getServletContext().getContextPath()+"/servlet/managerUserRegister?method=list";
		// 处理中文乱码问题
		request.setCharacterEncoding("UTF-8");
		// 获取表单提交过来的url携带的参数
		String method = request.getParameter("method");
			
		if ("register".equals(method)) {
			// 用户注册信息添加
			UserRegister userRegister = copyToBean(request, UserRegister.class);
			
			System.out.println("注册成功"+userRegister);
			// 重定向
			if (!userRegisterService.add(userRegister)) {
				throw new RuntimeException("添加信息失败");
			}
			request.setAttribute("userRegister", userRegister);
			request.getRequestDispatcher("/App/denglu/login.jsp").forward(request, response);
		} else if ("update".equals(method)) {
				
			UserRegister userRegister =copyToBean(request, UserRegister.class);
			System.out.println("修改userRecord：" + userRegister);
			if (!userRegisterService.update(userRegister)) {
					
				throw new RuntimeException("修改信息失败");
			}
			
		} else if ("delete".equals(method)) {
			// 删除
			String id = request.getParameter("id");
			userRegisterService.delete(id);
			
		} else if ("list".equals(method)) {
			// 查询所有人
			getUser();
			getByPage(request);
			to = request.getRequestDispatcher("/sys/userRegister/registerList.jsp");
				
		} else if ("findById".equals(method)) {
			// 根据Id查询
			findById(request, response);
				
			to = request.getRequestDispatcher("/sys/userRegister/updateRegister.jsp");	
		}

	}
	
	public void getUser() {
		// 查询注册信息-----需要保存到context域对象中，因为用的地方比较多，而且用户信息比较少
		// 先从域对象中获取
		List<UserRegister> user = (List<UserRegister>) this.getServletContext().getAttribute(
				"user");
		if (user == null) {
			// 如果获取不到就去查询
			user = userRegisterService.getByName(null);
			this.getServletContext().setAttribute("user", user);
		}
	}

	public void getByPage(HttpServletRequest request) {
		// 使用分页pageNow 使用条件userName pageCount
		String pageNow = request.getParameter("pageNow");
		String userName = request.getParameter("userName");
		String pageCount = request.getParameter("pageCount");
		// 判断userName 和 pageCount 是否需要保存到session " " ""
		HttpSession session = request.getSession();
		
		if (userName == null) {
			userName = (String) session.getAttribute("userName");
			// System.out.println(userName);
		} else {
			// System.out.println(userName);
			session.setAttribute("userName", userName);
		}

		if (pageNow == null) {
			pageNow = (String) session.getAttribute("pageNow");
		} else {

			session.setAttribute("pageNow", pageNow);
		}

		if (pageCount == null) {
			pageCount = (String) session.getAttribute("pageCount");
		} else {
			session.setAttribute("pageCount", pageCount);
		}

		PageBean<UserRegister> pb = userRegisterService.list(pageNow, userName);

		request.setAttribute("pb", pb);

		System.out.println("----------------分页结果--------------------");
		System.out.println(pb.getPageNow() + "  " + pb.getTotalRows());
		System.out.println(pb.getDatas());

	}

	private void findById(HttpServletRequest request,
			HttpServletResponse response) {
		String id = request.getParameter("id");
		UserRegister user = new UserRegisterServiceImpl().getById(id);
		request.setAttribute("user", user);
	}
	
	private void update(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String passwordAgain = request.getParameter("password");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		// 所有字符串非空判断
		boolean isok = StringUtils.checkNull(id, username, password,
				passwordAgain, phone, email);
		if (isok) {
			// 跳转到修改页面重新添加
			return;
		}

		System.out.println(id + " " + username + " " + password + " "
				+ passwordAgain + " " + phone + " " + email);
		// 转型
		try {

			// 跳转到修该后的页面
			response.sendRedirect("/sys/register/registerList.jsp");

		} catch (Exception e) {
			// throw new RuntimeException();
			// 跳转到错误页面
			e.printStackTrace();
		}
	}

	/**
	 * 封装 上传信息 目的----------得到一个Messages对象
	 * 
	 * @param request
	 */
	private <T> T copyToBean(HttpServletRequest request, Class<T> clazz) {
		T t = null;
		try {
			t = clazz.newInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			Map map = request.getParameterMap();
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
