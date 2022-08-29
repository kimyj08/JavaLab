<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%@page import="util.*"%>

<%@ page import="db.*" %>

<%@ page import="java.util.*" %>

<%
	request.setCharacterEncoding("utf-8");
	
	String btitle=request.getParameter("btitle");
	String bcontent=request.getParameter("bcontent");
	String bauthor=request.getParameter("bauthor");
	
	DAOboard.boardinsert(btitle,bcontent,bauthor);
	
	response.sendRedirect("boardlist.jsp");
			
%>