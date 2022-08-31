<%@page import="db.DAOsubscribe"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String dstatus=request.getParameter("did");
	
	DAOsubscribe.statusup("did");
%>