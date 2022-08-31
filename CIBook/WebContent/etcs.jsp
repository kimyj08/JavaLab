<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기타</title>
</head>
<body>

<%@ include file="../header.jsp" %>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				ETCS.
			</h1>
		</div>
	</div>

	<br><br>
	
	<div class="container text-center">
	
		<img class="mb-4 rounded" src="https://cdn.indiepost.co.kr/uploads/images/2018/09/20/6onQxy-700x541.jpeg" alt="대문사진" width="500"><br><br>
		
		<div class="card align-middle text-center border-info text-dark bg-light mb-3 m-auto" style="max-width: 30rem;">
			<div class="card-header">
		    	ETCS.<br>
			</div>
				<div class="card-body">
				<h5 class="card-title">이곳은 기타 페이지 입니다.<br></h5>
				<p class="card-text">관리자만 들어올 수 있습니다.<br>
								이 글을 읽고 있다면 당신은 관리자!!<br>
								(و ˃̵ᴗ˂̵)و<br>
								즐거운 시간 보내세요 :)<br>
								develop-date : 2022.08.24 ~ <br>
				</p>
				</div>
		</div>
		
		<br><br>

		<a class="btn btn-info" href="welcome.jsp" role="button">Home</a><br><br>
		<a class="btn btn-info" href="javascript:history.back();" role="button">돌아가기</a><br><br>
	</div>

<br><br><br><br><br><br>

<%@ include file="../footer.jsp" %>
	
</body>
</html>