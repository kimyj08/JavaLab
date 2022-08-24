<%@page import="java.time.LocalDate"%>
<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BUY</title>
</head>
<body>

<%@ include file="../header.jsp" %>

<%
	if(mname==null) {
		out.print("<script>alert('로그인이 필요합니다.');</script>");
		out.print("<script>location.href='loginpage0822.jsp'</script>");
	}
%>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				PRODUCT BUY
			</h1>
		</div>
	</div>

	<br><br>

<%
	String pid=request.getParameter("pid");
	String pname=request.getParameter("pname");
	String pprice=request.getParameter("pprice");

	DTOmember0822 member=DAOmember0822.getDetail(mname);
%>
	<div class="container text-center">
		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<strong>배송주소</strong> <br>
				<strong>성명(아이디)</strong> : <%=member.getMname() %><br>
				<strong>주소</strong> : <%=member.getMaddr() %><br>	
				<strong>전화번호</strong> : <%=member.getMtel() %><br>
				<em>주문일 : <%=LocalDate.now() %></em>
			<div>
	
				<table class="table table-hover">
				<tr>
					<th class="text-center">제품명</th> 
					<th class="text-center">제품가격</th> 
				</tr>
				<tr>
					<td class="text-center"><%=pname %></td>
					<td class="text-center"><%=pprice %>원</td>
				</table>
	
				<div class="col-4" align="left">
					<%=mname %>님 정말 구매를 하시겠습니까?
				</div><br><br>

		<a class="btn btn-danger" href="delivery.jsp?pid=<%=pid %>&pname=<%=pname %>&pprice=<%=pprice %>" role="button">주문완료</a><br><br>
		<a class="btn btn-secondary" href="productdetail.jsp?pid=<%=pid %>" role="button">취소</a>
			</div>
			</div>
		</div>
	</div>

<br><br><br><br><br><br>

<%@ include file="../footer.jsp" %>
	
</body>
</html>