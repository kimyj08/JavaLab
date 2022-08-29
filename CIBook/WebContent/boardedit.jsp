<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%@page import="util.*"%>

<%@ page import="db.*" %>

<%@ page import="java.util.*" %>

<%
	String no=request.getParameter("bid");
	
	DTOboard board=DAOboard.getDetail(no);

	request.setCharacterEncoding("utf-8");
	
	String btitle=request.getParameter("btitle");
	String bcontent=request.getParameter("bcontent");
	String bid=request.getParameter("bid");
	
	DAOboard.boardupdate(btitle,bcontent,bid);
	
	response.sendRedirect("boarddetail.jsp?bid");
			
%>