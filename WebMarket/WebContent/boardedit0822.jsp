<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%@page import="util.*"%>

<%@ page import="db.*" %>

<%@ page import="java.util.*" %>

<%
	request.setCharacterEncoding("utf-8");
	
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	String bid=request.getParameter("bid");
	
	DAOboard0822.boardupdate(title,content,bid);
	
	response.sendRedirect("boarddetail.jsp?bid="+bid);
%>