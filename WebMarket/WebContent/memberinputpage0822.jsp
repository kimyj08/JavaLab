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

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				회원 등록
			</h1>
		</div>
	</div>
	
	<div class="container">
		<form action="memberinput0822.jsp" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">ID</label>
				<div class="col-sm-8">
					<input name="mname" type="text" class="form-control" placeholder="사용할 아이디를 입력하세요">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">PASSWORD</label>
				<div class="col-sm-8">
					<input name="mpass" type="password" class="form-control" placeholder="비밀번호를 입력하세요">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">TEL.</label>
				<div class="col-sm-8">
					<input name="mtel" type="text" class="form-control" placeholder="전화번호를 입력하세요">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">EMAIL</label>
				<div class="col-sm-8">
					<input name="memail" type="text" class="form-control" placeholder="이메일을 입력하세요">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">GENDER</label>
				<div class="col-sm-8">
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="mgender" id="inlineRadio1" value="남성">
					  <label class="form-check-label" for="flexRadioDefault1">남성</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="mgender" id="inlineRadio2" value="여성">
					  <label class="form-check-label" for="flexRadioDefault2">여성</label>
					</div>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">ADDRESS</label>
				<div class="col-sm-8">
					<input name="maddr" type="text" class="form-control" placeholder="주소(배송지)를 입력하세요">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">IMAGE UPLOAD</label>
				<div class="col-sm-8">
				  <input type="file" name="image" class="form-control" id="inputGroupFile02">
				</div>
			</div>
			
			<div class="form-group-row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
					<input type="reset" class="btn btn-danger" value="취소" onclick="reset()">
				</div>
			</div>
		
		</form>
	</div>

<%@ include file="footer.jsp" %>

</body>
</html>