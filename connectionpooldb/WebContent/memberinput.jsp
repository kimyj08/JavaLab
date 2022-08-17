<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.*" %>
<% 
	request.setCharacterEncoding("utf-8");

	String mname=request.getParameter("mname");
	String mtel=request.getParameter("mtel");
	
	DAOmember.join(mname, mtel);

%>