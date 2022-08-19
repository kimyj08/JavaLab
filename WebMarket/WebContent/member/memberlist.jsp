<%@page import="db.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- CSS only -->
<!-- <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous"> -->
</head>
<body>

<%@ include file="../header.jsp" %>
	<!-- <nav class="navbar navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="welcome.jsp">Home</a>
			</div>
		</div>
	</nav> -->

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				MEMBER LIST
			</h1>
		</div>
	</div>
	
	<div class="container w-70">
		<table class="table table-striped table-hover">
		  <thead>
		    <tr>
		      <th scope="col">NO.</th>
		      <th scope="col">NAME</th>
		      <th scope="col">TEL</th>
		      <th scope="col">THUMBNAIL</th>
			</tr>
		  </thead>
		  <tbody>
				    
<%
				    	ArrayList<DTOmember0819> m=DAOmember0819.getList();

				    		    	for(DTOmember0819 member:m) {
				    %>		
	
		    <tr>
		      <th scope="row"><%=member.getMno() %></th>
		      <td><a href="memberdetail.jsp?mno=<%=member.getMno() %>"><%=member.getMname() %></a></td>
		      <td><a href="memberdetail.jsp?mno=<%=member.getMno() %>"><%=member.getMtel() %></a></td>
		      <%-- <th scope="row"><img src="<%=getParameter("imgstr") %>" class="rounded mx-auto d-block" alt="사진"></th> --%>
		    </tr>
		    
<% 
	}
%>
		    
		  </tbody>
		</table>
	</div>
	
<br><br>

<%@ include file="../footer.jsp" %>
	<!-- <footer class="container">
		<p>&copy; JULIA</p>
	</footer> -->


	<!-- JavaScript Bundle with Popper -->
	<!-- <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script> -->
</body>
</html>