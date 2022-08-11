<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="includedb.jsp" %>

<%
	String memo=request.getParameter("item");

	//String memo="방가방가...지민지민";
	
	String sql="INSERT INTO visit VALUES(?)";
	
	pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,memo);
		
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();

%>