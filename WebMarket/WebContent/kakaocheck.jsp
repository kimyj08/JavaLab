<%@page import="db.DAOmember0822"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mname=request.getParameter("mname");
	
	int result=DAOmember0822.kakaologin(mname);
	
	if(result==1) {
		
		// 로그인 성공 후 세션 넣기.
		session.setAttribute("mname",mname);
		
		out.print("<script>alert('로그인 성공. 제품목록으로 이동');</script>");
		out.print("<script>location.href='productlist0822.jsp'</script>");
		/* response.sendRedirect("welcome.jsp"); */
	} else if(result==3) {
		out.print("<script>alert('회원 가입이 필요합니다.');</script>");
		out.print("<script>location.href='memberinputpage0822.jsp'</script>");
		/* response.sendRedirect("memberinputpage0822.jsp"); */
	}
%>