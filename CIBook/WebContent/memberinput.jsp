<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%@page import="util.*"%>

<%@ page import="db.*" %>

<%@ page import="java.util.*" %>

<%
	request.setCharacterEncoding("utf-8");

	String mnick=request.getParameter("mnick");
	String mpass=request.getParameter("mpass");
	String mtel=request.getParameter("mtel");
	String memail=request.getParameter("memail");
	String mgender=request.getParameter("mgender");
	
	DAOmember.join(mnick,mpass,mtel,memail,mgender);
	
	response.sendRedirect("loginpage.jsp");
	
	// out.print("<script>alert('회원가입 성공! 환영합니다 :D');</script>");
			
%>