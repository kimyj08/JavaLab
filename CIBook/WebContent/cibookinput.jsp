<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%@page import="util.*"%>

<%@ page import="db.*" %>

<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>

<%@ page import="java.util.*" %>

<%
	String cname=null;
	String cbirth=null;
	String cgender=null;
	String cft=null;
	String cdesc=null;
	String cowner=null;
	String caddr=null;
	
	String ciname1=null;
	byte[] cifile1=null;
	String ciname2=null;
	byte[] cifile2=null;
	String ciname3=null;
	byte[] cifile3=null;
	
	ServletFileUpload sfu=new ServletFileUpload(new DiskFileItemFactory());
	
	List items=sfu.parseRequest(request);
	
	Iterator iter=items.iterator();
	
	while(iter.hasNext()) {
		FileItem item=(FileItem) iter.next();
		String name=item.getFieldName();
		
		if(item.isFormField()) {
			String value=item.getString("utf-8");
			if(name.equals("cname")) {
				cname=value;
			} else if(name.equals("cbirth")) {
				cbirth=value;
			} else if(name.equals("cgender")) {
				cgender=value;
			} else if(name.equals("cft")) {
				cft=value;
			} else if(name.equals("cdesc")) {
				cdesc=value;
			} else if(name.equals("cowner")) {
				caddr=value;
			} else if(name.equals("cdesc")) {
				cdesc=value;
			}
		} else {
			if(name.equals("image1")) {
				ciname1=item.getName();
				cifile1=item.get();
			
				String root=application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root,ciname1,cifile1);
			} else if(name.equals("image2")) {
				ciname2=item.getName();
				cifile2=item.get();
			
				String root=application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root,ciname2,cifile2);
			} else if(name.equals("image3")) {
				ciname3=item.getName();
				cifile3=item.get();
			
				String root=application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root,ciname3,cifile3);
			}
		}
	}
	
	DAOcibook.insert(cname,cbirth,cgender,ciname1,ciname2,ciname3,cft,cdesc,cowner,caddr);
	
	response.sendRedirect("cibooklist.jsp");
			
%>