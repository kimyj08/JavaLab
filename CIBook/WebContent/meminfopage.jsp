<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="db.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>

</head>
<body>

<%@ include file="header.jsp" %>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				회원 정보
			</h1>
		</div>
	</div>
	
<%
	DTOmember member=DAOmember.getDetail(mnick);
%>
	
	<div class="container">
		<form action="memberinput0822.jsp" method="post">
			
			<div class="form-group row">
				<label class="col-sm-2">ID</label>
				<div class="col-sm-8">
					<input name="mnick" value="<%=member.getMnick() %>" type="text" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">PASSWORD</label>
				<div class="col-sm-8">
					<input name="mpass" value="<%=member.getMpass() %>" type="password" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">TEL.</label>
				<div class="col-sm-8">
					<input name="mtel" value="<%=member.getMtel() %>" type="text" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">EMAIL</label>
				<div class="col-sm-8">
					<input name="memail" value="<%=member.getMemail() %>" type="text" class="form-control" placeholder="이메일을 입력하세요">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">GENDER</label>
				<div class="col-sm-8">
					<div class="form-check form-check-inline">
						<%
							String gender=member.getMgender();
							if(gender.equals("남성")) {
						%>
						  <input class="form-check-input" type="radio" name="mgender" id="inlineRadio1" value="남성" checked>
						  <label class="form-check-label" for="flexRadioDefault1">남성</label>
						</div>
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="mgender" id="inlineRadio2" value="여성">
						  <label class="form-check-label" for="flexRadioDefault2">여성</label>
					    <% } else { %>
					      <input class="form-check-input" type="radio" name="mgender" id="inlineRadio1" value="남성">
						  <label class="form-check-label" for="flexRadioDefault1">남성</label>
						</div>
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="mgender" id="inlineRadio2" value="여성" checked>
						  <label class="form-check-label" for="flexRadioDefault2">여성</label>
					    <% } %>
					</div>
				</div>
			</div>
			
			<br>
			
			<div class=container>
				<div class="form-group-row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" class="btn btn-primary" value="수정">
						<input type="reset" class="btn btn-warning" value="취소" onclick="reset()">
						<input type="button" class="btn btn-danger" onClick="confirm_onClick();" value="탈퇴">
					</div>
				</div>
			</div>
		
		</form>
		<script>
			function confirm_onClick() {
				var answer=confirm("정말 탈퇴하시겠습니까?");
				
				if(answer) {
					location.href="memberoutpage.jsp";
				} else {
					history.back();
				}
			}
		</script>
		
	</div>

<%@ include file="footer.jsp" %>

</body>
</html>