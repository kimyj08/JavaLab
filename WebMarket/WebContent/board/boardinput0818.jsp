<%@page import="util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.*" %>

<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>

<%@ page import="java.util.*" %>

<%
	String title=null;
	String content=null;
	String iname=null;
	byte[] ifile=null;

	ServletFileUpload sfu=new ServletFileUpload(new DiskFileItemFactory());

	List items=sfu.parseRequest(request);
	
	Iterator iter=items.iterator();
	
	while(iter.hasNext()) {
		FileItem item=(FileItem) iter.next();
		String name=item.getFieldName();
		
		if(item.isFormField()) {
			String value=item.getString("utf-8");
			if(name.equals("title")) {
				title=value;
			} else if(name.equals("content")) {
				content=value;
			}
		} else {
			if(name.equals("image")) {
				iname=item.getName();
				ifile=item.get();
			
				String root=application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root,iname,ifile);
			}
		}
	}
	
	DAOboard0818.boardinsert(title,content,iname);
	
	response.sendRedirect("boardlist.jsp");
	
%>