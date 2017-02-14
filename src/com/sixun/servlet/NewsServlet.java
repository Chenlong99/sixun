package com.sixun.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.sixun.entity.News;
import com.sixun.page.PageBean;
import com.sixun.util.StringUtils;

public class NewsServlet extends BaseServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		to = this.getServletContext().getContextPath()
				+ "/servlet/news?method=list";

		// ����������������
		request.setCharacterEncoding("UTF-8");

		// ��ȡ�����ύ������urlЯ���Ĳ���
		String method = request.getParameter("method");
		System.out.println(method);

		if ("add".equals(method)) {
			News news = upload(request);
			System.out.println("������Ϣ�ɹ���" + news);
			// �ض���
			if (!newsService.addNews(news)) {
				throw new RuntimeException("������Ϣʧ��");
			}
		} else if ("update".equals(method)) {
			
			News news = upload(request);
			System.out.println("�޸�news��" + news);
			if (!newsService.updateNews(news)) {
				
				throw new RuntimeException("�޸ĵ�����Ϣʧ��");
			}
			
		} else if ("delete".equals(method)) {
			String id = request.getParameter("id");
			newsService.deleteNews(id);
		} else if ("findUser".equals(method)) {
			// ��̨ͨ���û�����ѯnews����
			String userName = request.getParameter("userName");
			System.out.println("userName-----------" + userName);
			List<News> newList = newsService.getByName(userName);
			getByPage(request);
			request.setAttribute("newList", newList);
			System.out.println("��û��List" + newList);
			to = request.getRequestDispatcher("/sys/food/foodList.jsp");
		} else if ("list".equals(method)) {
			
			List<News> newList = newsService.getAllNews();
			System.out.println("�������servlet�е�getByPage֮ǰ");
			getByPage(request);
			request.setAttribute("newList", newList);
			System.out.println("��û��List" + newList);
			to = request.getRequestDispatcher("/sys/food/foodList.jsp");
		} else if ("findById".equals(method)) {

			findById(request);

			to = request.getRequestDispatcher("/sys/food/updateFood.jsp");

		}
	}

	public void findById(HttpServletRequest request) {
		String id = request.getParameter("id");
		News news = newsService.getNewsById(id);
		request.setAttribute("news", news);
	}

	public void getByPage(HttpServletRequest request) {
		// ʹ�÷�ҳpageNow ʹ������typeName foodName
		String pageNow = request.getParameter("pageNow");
		String pageCount = request.getParameter("pageCount");
		// �ж�typeName �� foodName �Ƿ���Ҫ���浽session "��" ""
		HttpSession session = request.getSession();
		if (pageNow == null) {
			pageNow = (String) session.getAttribute("pageNow");
			System.out.println("pageNow" + pageNow);
		}

		if (pageCount == null) {

			pageCount = (String) session.getAttribute("pageCount");
			System.out.println("pageCount" + pageCount);
		}

		PageBean<News> pb = newsService.listNews(pageNow, pageCount);

		System.out.println("----------------��ҳ���--------------------");
		System.out.println(pb.getPageNow() + "  " + pb.getTotalRows());
		System.out.println(pb.getDatas());
		
		request.setAttribute("pb", pb);

	}

	/**
	 * �ϴ�ͼƬ �ϴ���Ϣ Ŀ��----------�õ�һ��News����
	 * 
	 * @param request
	 */
	private News upload(HttpServletRequest request) {

		// ����һ���ļ��ϴ����
		ServletFileUpload upload = new ServletFileUpload(
				new DiskFileItemFactory());

		upload.setFileSizeMax(1024 * 1024 * 3);
		upload.setSizeMax(1024 * 1024 * 8);
		upload.setHeaderEncoding("UTF-8");// ����ͼƬ��Ҫ������

		// �ж��Ƿ����ļ��ϴ�����
		if (upload.isMultipartContent(request)) {
			// ����һ���޲ε�News����
			News news = new News();
			try {
				List<FileItem> items = upload.parseRequest(request);
				System.out.println(items.size() + "------**********");
				for (FileItem item : items) {
					System.out.println(item + "  **************   "
							+ item.isFormField());
					// �ж��Ƿ����ļ��ϴ�input
					if (item.isFormField()) {
						System.out.println("------------");
						// ��ͨ������
						// ��ȡ�ֶ�����
						String fieldName = item.getFieldName();// foodName
						// ��ȡinput����������
						String value = item.getString("UTF-8");
						// input������name�����newsʵ�����������һ��
						System.out.println(fieldName + " " + value);
						BeanUtils.setProperty(news, fieldName, value);
					} else {
						// �ļ��ϴ��� upload/ͼƬ����
						String imgName = item.getName();
						if (StringUtils.checkNull(imgName))
							return news;

						System.out.println("�ļ����ƣ�" + imgName);

						InputStream is = item.getInputStream();

						File toFile = new File(this.getServletContext()
								.getRealPath("/upload"), imgName);

						if (!toFile.getParentFile().exists()) {
							toFile.getParentFile().mkdirs();
						}
						FileOutputStream os = new FileOutputStream(toFile);

						byte[] buffer = new byte[1024];
						int len = 0;
						while ((len = is.read(buffer)) != -1) {
							os.write(buffer, 0, len);
							os.flush();
						}

						os.close();
						is.close();
						System.out.println("�ϴ��ɹ�����");

						news.setPhoto("upload/" + imgName);
					}

				}

				return news;
			} catch (Exception e) {
				throw new RuntimeException("��װ�������");
			}

		}
		return null;

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}