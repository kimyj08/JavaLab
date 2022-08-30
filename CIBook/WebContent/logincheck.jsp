<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	String mnick=request.getParameter("mnick");
	String mpass=request.getParameter("mpass");

	int result=DAOmember.login(mnick,mpass);

	// 로그인 시 3가지 경우의 수가 발생된다.
	// 1) 로그인 성공(아이디/비번 일치)-> '로그인 승인' + 메인으로 보내기
	// 2) 로그인 실패 (아아디는 일치/비번 불일치)-> '다시 로그인 시도'로 처리
	// 3) 로그인 실패 (아아디가 없는 경우)-> '회원가입'으로 처리

	if(result==1) {
		
		// 로그인 성공 후 세션 넣기.
		session.setAttribute("mnick",mnick);
		
		out.print("<script>alert('로그인 성공. 도감목록으로 이동');</script>");
		out.print("<script>location.href='cibooklist.jsp'</script>");
		/* response.sendRedirect("welcome.jsp"); */
	} else if(result==2) {
		out.print("<script>alert('비밀번호 불일치. 재로그인');</script>");
		out.print("<script>location.href='loginpage.jsp'</script>");
		/* response.sendRedirect("loginpage0822.jsp"); */
	} else {
		out.print("<script>alert('회원 가입이 필요합니다.');</script>");
		out.print("<script>location.href='memberinputpage.jsp'</script>");
		/* response.sendRedirect("memberinputpage0822.jsp"); */
	}

%>