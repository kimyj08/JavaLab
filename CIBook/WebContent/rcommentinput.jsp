<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%@page import="util.*"%>

<%@ page import="db.*" %>

<%@ page import="java.util.*" %>

<%
	request.setCharacterEncoding("utf-8");
	
	String rcid=request.getParameter("rcid");
	String rnick=request.getParameter("rnick");
	String rcm=request.getParameter("rcm");
	
	DAOrcomment.insert(rcid,rnick,rcm);
	
	response.sendRedirect("cibookdetail.jsp?cid="+rcid);
	
%>