<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 10  이하의 짝수만 출력하세요.
	스크립트 태그 3종을 모두 사용하세요. -->
<%!
	int count=10;

	String quiz(String data) {
		return data.quiz();
	}
%>
<%
	for(int i=1;i<=count;i++) {
		if(i%2==0) {
			out.print(i);
		}
	}
%>
<%=count %>
</body>
</html>