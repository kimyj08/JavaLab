<%@page import="java.time.LocalDate"%>
<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구독</title>
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
				CHARACTER ILLUSTRATED BOOK SUBSCRIBE
			</h1>
		</div>
	</div>

	<br><br>

<%
	String cid=request.getParameter("cid");
	String cname=request.getParameter("cname");
	String cprice=request.getParameter("cprice");

	DTOcibook cibook=DAOcibook.getDetail(cid);
	
	String img1=cibook.getCiname1();
	String imgstr1="";
	
	if(img1!=null) {
		imgstr1="images/"+img1;
	}
%>
	<div class="container text-center">
		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<strong>구독 도감</strong> <br>
				<img src="<%=imgstr1 %>" class="rounded mx-auto d-block" alt="사진" width="500">
				<strong>캐릭터 이름</strong> : <%=cibook.getCname() %><br>
				<strong>특징</strong> : <%=cibook.getCft() %><br>	
				<strong>설명</strong> : <%=cibook.getCdesc() %><br>
				<strong>캐릭터 주인</strong> : <%=cibook.getCowner() %><br>
				<em>구독일 : <%=LocalDate.now() %></em>
			<div>
	
				<table class="table table-hover">
				<tr>
					<th class="text-center">캐릭터명</th> 
					<th class="text-center">구독가격</th> 
				</tr>
				<tr>
					<td class="text-center"><%=cname %></td>
					<td class="text-center"><%=cprice %>원</td>
				</table>
	
				<div class="col-4" align="left">
					<%=mnick %>님 정말 구독을 하시겠습니까?
				</div><br><br>

		<a class="btn btn-danger" href="subscribe.jsp?cid=<%=cid %>&cname=<%=cname %>&cprice=<%=cprice %>" role="button">구독완료</a><br><br>
		<a class="btn btn-secondary" href="cibookdetail.jsp?cid=<%=cid %>" role="button">취소</a>
			</div>
			</div>
		</div>
	</div>

<br><br><br><br><br><br>

<%@ include file="../footer.jsp" %>
	
</body>
</html>