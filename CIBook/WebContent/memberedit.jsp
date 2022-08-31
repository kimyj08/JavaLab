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
	String mpass=null;
	String mtel=null;
	String memail=null;
	String mgender=null;
	String mnick=null;
	
	String miname=null;
	byte[] mifile=null;

	ServletFileUpload sfu=new ServletFileUpload(new DiskFileItemFactory());
	
	List items=sfu.parseRequest(request);
	
	Iterator iter=items.iterator();
	
	while(iter.hasNext()) {
		FileItem item=(FileItem) iter.next();
		String name=item.getFieldName();
		
		if(item.isFormField()) {
			String value=item.getString("utf-8");
			if(name.equals("mpass")) {
				mpass=value;
			} else if(name.equals("mtel")) {
				mtel=value;
			} else if(name.equals("memail")) {
				memail=value;
			} else if(name.equals("mgender")) {
				mgender=value;
			} else if(name.equals("mnick")) {
				mnick=value;
			}
		} else {
			if(name.equals("image")) {
				miname=item.getName();
				mifile=item.get();
			
				String root=application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root,miname,mifile);
			}
		}
	}
	
	DAOmember.update(mpass,mtel,memail,mgender,miname,mnick);
	
	response.sendRedirect("meminfopage.jsp");
%>