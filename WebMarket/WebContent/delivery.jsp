<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 구매 정보 넘겨 받기
	request.setCharacterEncoding("utf-8");
	
	String dpid=request.getParameter("pid");
	String dpname=request.getParameter("pname");
	String dpprice=request.getParameter("pprice");

	// 고객정보 조회
	String mname=(String)session.getAttribute("mname");
	DTOmember0822 member=DAOmember0822.getDetail(mname);
	
	String dmno=member.getMno();
	String dmtel=member.getMtel();
	String dmaddr=member.getMaddr();

	// DB 넣기
	int result=DAOdelivery0822.insert(dpid,dmno,dmaddr,dmtel,dpname,dpprice);
%>