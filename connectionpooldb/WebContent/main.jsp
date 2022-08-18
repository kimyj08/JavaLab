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
<h3>Board List</h3>
<% 

	ArrayList<DTOboard> b=DAOmember.getList();

	for(DTOboard board:b) {
		
%>	

	<%=board.getBid() %>
	<a href="detail.jsp?bid=<%=board.getBid() %>"><%=board.getTitle() %></a>
	<br>
	
<% 
	}
%>



</body>
</html>