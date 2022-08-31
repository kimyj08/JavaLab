<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String scid=request.getParameter("cid");

	if(scid!=null) {
		out.print("<script>alert('구독이 완료되었습니다.');</script>");
		out.print("<script>location.href='cibookdetail.jsp?cid='"+scid+"</script>");
	}
%>