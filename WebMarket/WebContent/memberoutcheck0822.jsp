<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	String mname=request.getParameter("mname");
	String mpass=request.getParameter("mpass");

	int result=DAOmember0822.login(mname,mpass);

	// 로그인 시 3가지 경우의 수가 발생된다.
	// 1) 로그인 성공(아이디/비번 일치)-> '로그인 승인' + 메인으로 보내기
	// 2) 로그인 실패 (아아디는 일치/비번 불일치)-> '다시 로그인 시도'로 처리

	if(result==1) {
		
		out.print("<script>alert('비밀번호 일치. 회원 탈퇴!');</script>");
	
		int result2=DAOmember0822.memberout(mname,mpass);
			if(result2==1) {
				session.removeAttribute("mname");
				out.print("<script>location.href='welcome.jsp'</script>");
			} else {
				out.print("<script>alert('회원탈퇴 실패. 다시 시도하세요.');</script>");
				out.print("<script>location.href='meminfopage0822.jsp'</script>");
			}
	} else if(result==2) {
		out.print("<script>alert('비밀번호 불일치. 다시 시도하세요.');</script>");
		out.print("<script>location.href='meminfopage0822.jsp'</script>");
		/* response.sendRedirect("loginpage0822.jsp"); */
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>