<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.*" %>

<%
	request.setCharacterEncoding("utf-8");

	String btitle=request.getParameter("btitle");
	String bmemo=request.getParameter("bmemo");
	
	DAOboard.join(btitle, bmemo);
			
%>