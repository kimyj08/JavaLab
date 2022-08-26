<%@page import="db.DAOdelivery0822"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String dstatus=request.getParameter("did");
	
	DAOdelivery0822.statusup("did");

%>