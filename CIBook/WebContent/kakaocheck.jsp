<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mnick=request.getParameter("mnick");
	
	int result=DAOmember.kakaologin(mnick);
	
	if(result==1) {
		
		// 로그인 성공 후 세션 넣기.
		session.setAttribute("mnick",mnick);
		
		out.print("<script>alert('로그인 성공. 도감목록으로 이동');</script>");
		out.print("<script>location.href='cibooklist.jsp'</script>");
		/* response.sendRedirect("welcome.jsp"); */
	} else if(result==3) {
		out.print("<script>alert('회원 가입이 필요합니다.');</script>");
		out.print("<script>location.href='memberinputpage.jsp'</script>");
		/* response.sendRedirect("memberinputpage0822.jsp"); */
	}
%>