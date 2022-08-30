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
	request.setCharacterEncoding("utf-8");
	
	String mpass=request.getParameter("mpass");
	String mtel=request.getParameter("mtel");
	String memail=request.getParameter("memail");
	String mgender=request.getParameter("mgender");
	String miname=request.getParameter("miname");
	String mnick=request.getParameter("mnick");
	
	DAOmember.update(mpass,mtel,memail,mgender,miname,mnick);
	
	response.sendRedirect("meminfopage.jsp?mnick="+mnick);
%>