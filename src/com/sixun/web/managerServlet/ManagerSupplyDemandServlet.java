package com.sixun.web.managerServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sixun.entity.SupplyDemand;
import com.sixun.page.PageBean;

public class ManagerSupplyDemandServlet extends ManagerBaseServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		to = this.getServletContext().getContextPath()
				+ "/servlet/managerUserRecord?method=list";
		// ����������������
		request.setCharacterEncoding("UTF-8");
		
		// ��ȡ�����ύ������urlЯ���Ĳ���
		String method = request.getParameter("method");
		System.out.println(method);
		if ("list".equals(method)) {

			getUserRecord();
			getByPage(request);
			to = request.getRequestDispatcher("/sys/supplyDemand/supplyDemandList.jsp");
	}

	}
		public void getUserRecord() {
			// ��ѯ��ϵ��Ϣ-----��Ҫ���浽context������У���Ϊ�õĵط��Ƚ϶࣬���Ҳ�ϵ��Ϣ�Ƚ���
			// �ȴ�������л�ȡ
			List<SupplyDemand> supplyDemand = (List<SupplyDemand>) this
					.getServletContext().getAttribute("supplyDemand");
			if (supplyDemand == null) {
				// �����ȡ������ȥ��ѯ
				supplyDemand = supplyDemandService.getByName(null);
				this.getServletContext().setAttribute("supplyDemand", supplyDemand);
			}
			
		}
		
		public void getByPage(HttpServletRequest request) {

			// ʹ�÷�ҳpageNow ʹ������realName userName
			String pageNow = request.getParameter("pageNow");
			String pageCount = request.getParameter("pageCount");
			String userName = request.getParameter("userName");
			// �ж�realName �� userName �Ƿ���Ҫ���浽session "name" ""
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

			PageBean<SupplyDemand> pb = supplyDemandService.list(pageNow, userName);
			request.setAttribute("pb", pb);

			System.out.println("----------------��ҳ���--------------------");
			System.out.println(pb.getPageNow() + "  " + pb.getTotalRows());
			System.out.println(pb.getDatas());

		}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doGet(request, response);
	}

}