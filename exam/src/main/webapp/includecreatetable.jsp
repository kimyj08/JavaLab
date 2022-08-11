<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="includedb.jsp"%>

<%
	String sql="CREATE TABLE prof("
			+"pno		varchar(20)	not null,"
			+"pname		varchar(20),"
			+"pdept		varchar(30),"
			+"pmobile	varchar(30),"
			+"primary key(pno))";

	pstmt=conn.prepareStatement(sql);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
			
%>