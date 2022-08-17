<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Member List</h3>
	<form action="memberinput.jsp" method="post">
		<div>
			<label>Member Name</label>
			<input name="mname" type="text" placeholder="이름을 입력하세요.">
		</div>
		<div>
			<label>Member Name</label>
			<input name="mtel" type="text" placeholder="전화번호를 입력하세요.">
		</div>
		<div>
			<input type="submit" value="등록">
			<input type="submit" value="취소" onclick="reset()">
		</div>
	</form>
</body>
</html>