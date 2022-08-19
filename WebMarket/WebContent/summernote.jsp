<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" />
    <script type="text/javascript" src="cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- include summernote css/js-->
    <link href="summernote-bs5.css" rel="stylesheet">
    <script src="summernote-bs5.js"></script>
</head>
<body>

<%@ include file="header.jsp" %>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				제품 등록
			</h1>
		</div>
	</div>
	
	<div class="container">
		<form action="productinput0819.jsp" method="post" enctype="multipart/form-data">
			
			<div class="form-group row">
				<label class="col-sm-2">제품명</label>
				<div class="col-sm-3">
					<input name="pname" type="text" class="form-control" placeholder="제품명을 입력하세요">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">제품설명</label>
				<div class="col-sm-3">
					<textarea name="pdesc" rows="5" cols="20" class="form-control" placeholder="제품 설명을 입력하세요"></textarea>
				</div>
			</div>
			
				    <div id="summernote"></div>
				    <script>
				      $('#summernote').summernote({
				        placeholder: 'Hello Bootstrap 5',
				        tabsize: 2,
				        height: 100
				      });
				    </script>
			
			<div class="form-group row">
				<label class="col-sm-2">제품가격</label>
				<div class="col-sm-3">
					<input name="pprice" type="text" class="form-control" placeholder="제품 가격을 입력하세요">
				</div>
			</div>			
			
			<div class="form-group row">
				<div class="col-sm-5">
				  <input type="file" name="image1" class="form-control" id="inputGroupFile02">
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-5">
				  <input type="file" name="image2" class="form-control" id="inputGroupFile02">
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-5">
				  <input type="file" name="image3" class="form-control" id="inputGroupFile02">
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