<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.*" %>

<%
	/* 한글로 받아올 때 한글로 가져오는 구문. */
	request.setCharacterEncoding("utf-8");

	String mname=request.getParameter("mname");
	String mtel=request.getParameter("mtel");
	
	DAOmember m=new DAOmember();
	m.join(mname, mtel);
			
%>