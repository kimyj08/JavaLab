<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file="../header.jsp" %>

<%
	if(mnick==null) {
		out.print("<script>alert('로그인이 필요합니다.');</script>");
		out.print("<script>location.href='loginpage.jsp'</script>");
	}
%>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				BOARD DETAIL
			</h1>
		</div>
	</div>

	<br><br>

<%
	String no=request.getParameter("bid");

	DTOboard board=DAOboard.getDetail(no);
%>
	<div class="container text-center">
		<div class="card align-middle text-center border-info text-dark bg-light mb-3 m-auto" style="max-width: 30rem;">
			<div class="card-header">
		    	no. : <%=board.getBid() %><br>
			</div>
				<div class="card-body">
				<h5 class="card-title">Title : <%=board.getBtitle() %><br></h5>
				<p class="card-text">Content : <%=board.getBcontent() %><br>
								Author : <%=board.getBauthor() %><br>
								Write-date : <%=board.getBdate() %><br>
				</p>
				</div>
		</div>	
	
		<br><br>

		<a class="btn btn-info" href="boardlist.jsp" role="button">목록보기</a><br><br>
		<a class="btn btn-warning" href="boardeditpage.jsp?bid=<%=board.getBid() %>" role="button">수정</a><br><br>
		<a class="btn btn-secondary" href="boardinputpage.jsp" role="button">새 글 작성</a>
	</div>

<br><br><br><br><br><br>

<%@ include file="../footer.jsp" %>
	
</body>
</html>