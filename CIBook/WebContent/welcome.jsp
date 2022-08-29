<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<%!// 선언문 사용
		String greeting = "Welcome to Web Character Illustrated Book";
		String tagline = "Welcome to Web Illustrated-Book!";%>
		
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
			<div class="text-center">
				<p>이 사이트는 캐릭터 총집합 사이트 입니다.</p><br>
				<p>나무위키 포맷을 모방한 캐릭터 총집합형 사이트이니</p><br>
				<p>회원들의 많은 참여 부탁드립니다.</p><br>
				<!-- <p>이 사이트는 캐릭터 총집합 사이트 입니다.</p><br>
				<p>이 사이트는 캐릭터 총집합 사이트 입니다.</p><br> -->
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>