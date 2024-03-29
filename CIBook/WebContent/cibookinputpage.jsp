<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캐릭터 등록</title>
</head>
<body>
<%@ include file="header.jsp" %>

<%
	if(mnick==null) {
		out.print("<script>alert('로그인이 필요합니다.');</script>");
		out.print("<script>location.href='loginpage.jsp'</script>");
	} else {
		DTOmember member=DAOmember.getDetail(mnick);
%>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				캐릭터 등록
			</h1>
		</div>
	</div>
	
	<div class="container">
		<form action="cibookinput.jsp" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">NAME</label>
				<div class="col-sm-8">
					<input name="cname" type="text" class="form-control" placeholder="캐릭터 이름을 입력하세요">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">BIRTH</label>
				<div class="col-sm-8">
					<input name="cbirth" type="text" class="form-control" placeholder="캐릭터의 생일을 입력하세요('YYYY-MM-DD'형식으로 입력하세요.)">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">CHARACTER-GENDER</label>
				<div class="col-sm-8">
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="cgender" id="inlineRadio1" value="남성">
					  <label class="form-check-label" for="flexRadioDefault1">남성</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="cgender" id="inlineRadio2" value="여성">
					  <label class="form-check-label" for="flexRadioDefault2">여성</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="cgender" id="inlineRadio3" value="unknown">
					  <label class="form-check-label" for="flexRadioDefault2">알 수 없음.</label>
					</div>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">FEATURE</label>
				<div class="col-sm-8">
					<textarea name="cft" rows="5" cols="20" class="form-control" placeholder="캐릭터 특징을 입력하세요"></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">DESC.</label>
				<div class="col-sm-8">
					<textarea name="cdesc" rows="5" cols="20" class="form-control" placeholder="캐릭터 설명을 입력하세요"></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<!-- <label class="col-sm-2">IMAGE UPLOAD</label> -->
				<div class="col-sm-8">
				  <input type="file" name="image1" class="form-control" id="inputGroupFile01">
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-5">
				  <input type="file" name="image2" class="form-control" id="inputGroupFile02">
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-5">
				  <input type="file" name="image3" class="form-control" id="inputGroupFile03">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">OWNER</label>
				<div class="col-sm-8">
					<input name="cowner" type="text" class="form-control" value="<%=member.getMnick() %>" readonly>
				</div>
			</div>
					
			<div class="form-group row">
				<label class="col-sm-2">ADDRESS</label>
				<div class="col-sm-8">
					<input name="caddr" type="text" class="form-control" placeholder="캐릭터의 개발지를 입력하세요(도로명주소 형식으로 입력하세요.)">
				</div>
			</div>
<%
	}
%>
				
			
			<!-- <div class="form-group row">
				<label class="col-sm-2">COLOR</label>
				<div class="col-sm-8">
					<select name="ccolor" class="form-select" size="8" aria-label="size 10 select example">
					  <option selected>캐릭터의 색깔을 선택하세요.</option>
					  <option value="pink">pink</option>
					  <option value="red">red</option>
					  <option value="orange">orange</option>
					  <option value="yellow">yellow</option>
					  <option value="green">green</option>
					  <option value="blue">blue</option>
					  <option value="purple">purple</option>
					  <option value="black">black</option>
					  <option value="whie">white</option>
					  <option value="mix">mix</option>
					</select>
				</div>
			</div> -->
			
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