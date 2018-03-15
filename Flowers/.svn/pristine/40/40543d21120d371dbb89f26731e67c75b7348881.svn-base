package com.flowers.action;


import java.io.IOException;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flowers.model.Member;
import com.flowers.service.UploadHeaderService;
import com.flowers.util.BeanJsonUtil;
import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

/**
 * �ϴ�ͼƬServlet
 * @author Lanqiao08
 *
 */



@WebServlet("/upload.jhtml")
public class UploadImagesServlet extends  HttpServlet  {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		SmartUpload  smartUpload=new  SmartUpload();
		smartUpload.initialize(getServletConfig(),request, response);
		smartUpload.setMaxFileSize(2*1024*1024);
		smartUpload.setAllowedFilesList("jpg,png,gif");
		Member member=(Member) session.getAttribute("member");
		String memberid=member.getMemberID();
		//System.out.println(memberid+"88888888");
		try {
			smartUpload.upload();
		} catch (SmartUploadException e) {
			e.printStackTrace();
		}
		//��ȡ��ͼƬ����������
		String pic=  smartUpload.getRequest().getParameter("info");
		//��ȡ��һ���ϴ����ļ�
		File file = smartUpload.getFiles().getFile(0); 
		// C://tomcat/webapp/project
		String  webPath =request.getServletContext().getRealPath("/");//�õ���Ŀ�ĸ�Ŀ¼�ľ���·��   
		String address="";
		if(!file.isMissing()){
			//��ȡ��ǰʱ�䣬��ΪͼƬ�������֣����ʹ��ԭ���ֿ��ܸ��Ƿ������ϵ�ͼƬ ��ȷ��ͼƬΨһ��
			String picname = new Date().getTime() + "";  
			java.io.File webFile=new java.io.File(webPath+"static/images");
			System.out.println(!webFile.exists());
			if(!webFile.exists()){
				webFile.mkdirs();
			}
			
			address="/static/images/"+picname+"."+file.getFileExt();
			
			try {
				
				file.saveAs(address, File.SAVEAS_VIRTUAL);
			} catch (SmartUploadException e) {
				System.out.println("�ϴ�ͼƬ����������г����쳣");
				e.printStackTrace();
			}
		}
		UploadHeaderService uhd=new UploadHeaderService(); //将图片转到数据库
		String   project    =request.getContextPath();
		uhd.updateheader(project+address, memberid);
		HashMap  map=new HashMap();
		map.put("url", project+address); //��Ҫ����·����ʹ�����
		BeanJsonUtil.writeJson(response, map);
	
		
		
	}
}
