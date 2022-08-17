<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.*" %>
<% 

	String mname="Kim";
	String mtel="010-1234-5678";
	
	int result=DAOmember.join(mname,mtel);

	out.print(result);

%>