package com.etc.repair.web;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

/**
 * Servlet implementation class UploadServlet
 */
public class UploadServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//设置文件上传路径
		String filePath = getServletContext().getRealPath("/")+"upload";
//		System.out.println(filePath);
		File file = new File(filePath);
		if(!file.exists()){
			file.mkdir();
		}
		
		SmartUpload smartUpload = new SmartUpload();
		//初始化对象
		smartUpload.initialize(getServletConfig(), request, response);
		//设置上传文件
		smartUpload.setMaxFileSize(1024*1024*10);
		//设置所有文件大小
		smartUpload.setMaxFileSize(1024*1024*100);
		//设置文件类型
		smartUpload.setAllowedFilesList("jpg,gif,png");
//		String result = "上传成功";
		try {
			smartUpload.upload();
			//保存文件
			smartUpload.save(filePath);
			com.jspsmart.upload.File tempFile = smartUpload.getFiles().getFile(0);
			String fileName = tempFile.getFileName();
			request.getRequestDispatcher("/phoneRepair/store/getSpic").forward(request, response);
		} catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//获取文件上传的属性
		/*for(int i=0;i<smartUpload.getFiles().getCount();i++){
			com.jspsmart.upload.File tempFile = smartUpload.getFiles().getFile(i);
			System.out.println("*****************");
			System.out.println("上传文件名:"+tempFile.getFileName());
			System.out.println("上传文件大小:"+tempFile.getSize());
		}
		System.out.println("上传结果:"+result);*/
//		request.setAttribute("result", result);
//		request.getRequestDispatcher("result.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
