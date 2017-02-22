package com.sixun.web.userServlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.sixun.entity.UserRecord;
import com.sixun.page.PageBean;
import com.sixun.util.StringUtils;

public class UserRecordServlet extends UserBaseServlet {

	String path;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		path = this.getServletContext().getContextPath();
		// 处理中文乱码问题
		request.setCharacterEncoding("UTF-8");
			
		// 获取表单提交过来的url携带的参数
		String method = request.getParameter("method");
		System.out.println(method);

		if ("add".equals(method)) {
			UserRecord userRecord = upload(request);
			System.out.println("添加信息成功：" + userRecord);
			// 重定向
			if (!userRecordService.add(userRecord)) {
				throw new RuntimeException("添加信息失败");
			}

			response.sendRedirect(path + "/App/dangan.jsp");
		} 
	}


	
	/**
	 * 上传图片 上传信息 目的----------得到一个News对象
	 * 
	 * @param request
	 */
	private UserRecord upload(HttpServletRequest request) {

		// 创建一个文件上传组件
		ServletFileUpload upload = new ServletFileUpload(
				new DiskFileItemFactory());

		upload.setFileSizeMax(1024 * 1024 * 3);
		upload.setSizeMax(1024 * 1024 * 8);
		upload.setHeaderEncoding("UTF-8");// 建议图片不要传中文

		// 判断是否是文件上传表单
		if (upload.isMultipartContent(request)) {
			// 创建一个无参的News对象
			UserRecord userRecord = new UserRecord();
			try {
				List<FileItem> items = upload.parseRequest(request);
				System.out.println(items.size() + "------**********");
				for (FileItem item : items) {
					System.out.println(item + "  **************   "
							+ item.isFormField());
					// 判断是否是文件上传input
					if (item.isFormField()) {
						System.out.println("------------");
						// 普通表单项
						// 获取字段名称
						String fieldName = item.getFieldName();// foodName
						// 获取input输入框的内容
						String value = item.getString("UTF-8");
						// input输入框的name必须和news实体类的属性名一致
						System.out.println(fieldName + " " + value);
						BeanUtils.setProperty(userRecord, fieldName, value);
					} else {
						// 文件上传项 upload/图片名称
						String imgName = item.getName();
						if (StringUtils.checkNull(imgName))
							return userRecord;

						System.out.println("文件名称：" + imgName);

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
						System.out.println("上传成功！！");
						userRecord.setPhoto("upload/" + imgName);
					}
				}
				return userRecord;
			} catch (Exception e) {
				throw new RuntimeException("封装对象出错");
			}
		}
		return null;
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
