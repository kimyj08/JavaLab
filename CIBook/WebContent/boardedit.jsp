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
	String bid=request.getParameter("bid");
	
	DAOboard.boardupdate(btitle,bcontent,bid);
	
	response.sendRedirect("boarddetail.jsp?bid="+bid);
%>