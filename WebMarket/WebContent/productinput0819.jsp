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
	String pname=null;
	String pdesc=null;
	String pprice=null;
	String pfilename1=null;
	byte[] pifile1=null;
	String pfilename2=null;
	byte[] pifile2=null;
	String pfilename3=null;
	byte[] pifile3=null;
	
	ServletFileUpload sfu=new ServletFileUpload(new DiskFileItemFactory());
	
	List items=sfu.parseRequest(request);
	
	Iterator iter=items.iterator();
	
	while(iter.hasNext()) {
		FileItem item=(FileItem) iter.next();
		String name=item.getFieldName();
		
		if(item.isFormField()) {
			String value=item.getString("utf-8");
			if(name.equals("pname")) {
				pname=value;
			} else if(name.equals("pdesc")) {
				pdesc=value;
			} else if(name.equals("pprice")) {
				pprice=value;
			}
		} else {
			if(name.equals("image1")) {
				pfilename1=item.getName();
				pifile1=item.get();
			
				String root=application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root,pfilename1,pifile1);
			} else if(name.equals("image2")) {
				pfilename2=item.getName();
				pifile2=item.get();
			
				String root=application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root,pfilename2,pifile2);
			} else if(name.equals("image3")) {
				pfilename3=item.getName();
				pifile3=item.get();
			
				String root=application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root,pfilename3,pifile3);
			}
		}
	}
	
	DAOproduct0819.insert(pname,pdesc,pprice,pfilename1,pfilename2,pfilename3);
	
	response.sendRedirect("productlist.jsp");
			
%>