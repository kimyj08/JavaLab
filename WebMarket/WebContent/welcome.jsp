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

<%@ include file="header.jsp" %>
	<!-- <nav class="navbar navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="welcome.jsp">Home</a>
			</div>
		</div>
	</nav> -->

	<%!// 선언문 사용
	String greeting = "Welcome to Web Shopping Mall";
	String tagline = "Welcome to Web Market!";%>

	<!-- 표현문 사용 -->

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<h3><%=tagline%></h3>
			<%!
				Date day=new java.util.Date();
				LocalDate now=LocalDate.now();
			
				/* int year=now.getYear();
				String month=now.getMonth().toString();
				int monthly=now.getMonthValue();
				int days=now.getDayOfMonth(); */
				
				int hour=day.getHours();
				int minute=day.getMinutes();
				int second=day.getSeconds();
			%>
			
			<h4>현재 접속 시간은 <%=now%> <%=hour %>시 <%=minute %>분 <%=second %>초 입니다.</h4>
			<h4>현재 접속 시간은 <%=day %> 입니다.</h4>
		</div>
	</div>

<%@ include file="footer.jsp" %>
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