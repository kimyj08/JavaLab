<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="includedb.jsp" %>

<%
	//String pno="0123789";
	//String pname="Lee";
	String pdept="eco";
	//String pmobile="01-111-2222";
	
	String sql="UPDATE prof SET Pdept=? WHERE pname='Lee'";
	
	pstmt=conn.prepareStatement(sql);
		//pstmt.setString(1,pno);
		//pstmt.setString(2,pname);
		pstmt.setString(3,pdept);
		//pstmt.setString(4,pmobile);
		
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();

%>