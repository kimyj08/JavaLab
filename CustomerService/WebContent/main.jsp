<%@page import="db.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>고객 목록</h3>

<%

	/* ArrayList<DTOcustomer> members=(new DAOcustomer()).getList(); */
	
	/* 더 간편하게 getList() 매서드 만들 떄 static 걸어서 객체 생성 안해도 되게끔 하는 구문. */
	ArrayList<DTOcustomer> members=DAOcustomer.getList();

	for(DTOcustomer member : members) {
%>

	<%=member.getNo() %>
	<%-- <%=member.getId() %> --%>
	<a href="detail.jsp?no=<%=member.getNo() %>"><%=member.getId() %></a>
	
	<!-- detail 페이지 작성을 위해 없앰. -->
	<%-- <%=member.getName() %>
	<%=member.getPass() %>
	<%=member.getCdate() %> --%>
	<br>
<%
	}
%>

</body>
</html>