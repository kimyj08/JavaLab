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

<%@ include file="../header.jsp" %>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				게시판
			</h1>
		</div>
	</div>
	
	<br><br>
	
	<div class="container">
		<form action="boardinput0818.jsp" method="post" enctype="multipart/form-data">
			
			<div class="form-group row">
				<label class="col-sm-2">Title</label>
				<div class="col-sm-3">
					<input name="title" type="text" class="form-control" placeholder="제목을 입력하세요">
				</div>
			</div>
			
			<br>
			
			<div class="form-group row">
				<label class="col-sm-2">Content</label>
				<div class="col-sm-3">
					<textarea name="content" rows="5" cols="20" class="form-control" placeholder="내용을 입력하세요"></textarea>
				</div>
			</div>
			
			<br>
			
			<div class="form-group row">
				<div class="col-sm-5">
				  <input type="file" name="image" class="form-control" id="inputGroupFile02">
				</div>
			</div>
			
			<br>
			
			<div class="form-group-row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">&nbsp;&nbsp;
					<input type="reset" class="btn btn-danger" value="취소" onclick="reset()">
				</div>
			</div>
		
		</form>
	</div>

<%@ include file="../footer.jsp" %>

</body>
</html>