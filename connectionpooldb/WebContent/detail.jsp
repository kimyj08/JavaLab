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
<% 

	String no="9";

	DTOboard board=DAOmember.getDetail(no);
	
	String img=board.getIname();
	String imgstr="";
	if(img!=null) {
		imgstr="images/"+img;
	}
%>

	<img src="<%=imgstr %>">
	
	<br><br>
	<%=board.getBid() %>
	<%=board.getTitle() %>
	<%=board.getContent() %>
	<%=board.getIname() %>
	<%=board.getBdate() %>

<%-- <%
	String bid=request.getParameter("bid");

	DTOboard board=DAOmember.getDetail(bid);

%>

	<%=board.getBid() %>
	<%=board.getTitle() %>
	<%=board.getContent() %>
	<%=board.getIname() %>
	<%=board.getBdate() %> --%>
	
</body>
</html>