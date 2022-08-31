<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 구매 정보 넘겨 받기
	request.setCharacterEncoding("utf-8");
	
	String scid=request.getParameter("cid");
	String scname=request.getParameter("cname");
	String scprice=request.getParameter("cprice");

	// 고객정보 조회
	String mnick=(String)session.getAttribute("mnick");
	DTOmember member=DAOmember.getDetail(mnick);
	
	String smno=member.getMno();
	String smtel=member.getMtel();

	// DB 넣기
	int result=DAOsubscribe.insert(scid,smno,smtel,scname,scprice);
	
	response.sendRedirect("cibookdetail.jsp?cid="+scid);
%>