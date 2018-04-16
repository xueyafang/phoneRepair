package com.etc.repair.web;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.ProgressListener;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 设置编码
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter pw = response.getWriter();
		String url="upload.jsp";
		try {
			DiskFileItemFactory factory = new DiskFileItemFactory();
			String storePath = getServletContext().getRealPath("/upload");
			boolean isMultipart = ServletFileUpload.isMultipartContent(request);
			if (!isMultipart) {
				pw.write("传输方式有错误！");
				return;
			}
			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setFileSizeMax(4 * 1024 * 1024);
			upload.setSizeMax(6 * 1024 * 1024);
			
			List<FileItem> items = upload.parseRequest(request);
			for (FileItem item : items) {
				//如果不是普通表单字段
				if (!item.isFormField()) {
					String mimeType = item.getContentType();
					if (mimeType.startsWith("image")) {
						InputStream in = item.getInputStream();
						String fileName = item.getName();
						if (fileName == null || "".equals(fileName.trim())) {
							continue;
						}
						fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
						String newStorePath = makeStorePath(storePath);
						Date date = new Date();
						long s1 = date.getTime();
						String storeFile = newStorePath + "\\" + s1 + fileName;
						String path[] = storeFile.split("webapps");
						String requirePath = path[1];
						request.setAttribute("spic", requirePath);
						OutputStream out = new FileOutputStream(storeFile);
						byte[] b = new byte[1024];
						int len = -1;
						while ((len = in.read(b)) != -1) {
							out.write(b, 0, len);
						}
						in.close();
						out.close();
						item.delete();
						
						
					} else {
						
						request.setAttribute("msg", "上传文件格式有错误！");
					}
				}else{
					String name = item.getFieldName();  
		            String value = item.getString();
		            value = new String(value.getBytes("iso-8859-1"),"utf-8");
		            request.setAttribute(name, value);
				}
			}
		} catch (org.apache.commons.fileupload.FileUploadBase.FileSizeLimitExceededException e) {
			request.setAttribute("msg", "单个文件不能超过4M");
		} catch (org.apache.commons.fileupload.FileUploadBase.SizeLimitExceededException e) {
			request.setAttribute("msg", "文件总和不能超过6M");
		} catch (FileUploadException e) {
			request.setAttribute("msg", "文件上传失败");
		}
		request.getRequestDispatcher("store?method=getForm").forward(request, response);  
		//response.sendRedirect("/phoneRepair/store?method=getForm");
	}

	private String makeStorePath(String storePath) {
		Date date = new Date();
		DateFormat df = DateFormat.getDateInstance(DateFormat.MEDIUM);
		String s = df.format(date);
		String path = storePath + "\\" +"store"+"\\"+ s;
		File file = new File(path);
		if (!file.exists()) {
			file.mkdirs();// 创建多级目录，mkdir只创建一级目录
		}
		return path;

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}