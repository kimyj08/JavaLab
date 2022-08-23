<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="db.*" %>
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
				회원 정보
			</h1>
		</div>
	</div>
	
<%
	String mname=(String)session.getAttribute("mname");

	DTOmember0822 member=DAOmember0822.getDetail(mname);
%>
	
	<div class="container">
		<form action="memberinput0822.jsp" method="post" enctype="multipart/form-data">
			
			<div class="form-group row">
				<label class="col-sm-2">ID</label>
				<div class="col-sm-8">
					<input name="mname" value="<%=member.getMname() %>" type="text" class="form-control">
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
			
			<div class="form-group row">
				<label class="col-sm-2">ADDRESS</label>
				<div class="col-sm-8">
					<input name="maddr" value="<%=member.getMaddr() %>" type="text" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">IMAGE UPLOAD</label>
				<div class="col-sm-8">
				  <input type="file" name="image" class="form-control" id="inputGroupFile02">
				</div>
			</div>
			
			<script>
				// Get a reference to our file input
				const fileInput=document.querySelector('input[type="file"]');
				
				// Create a new File object
				const myFile=new File(['Hello World!'],'<%=member.getMiname() %>',{
					type:'text/plain',
					lastModified:new Date(),
				});
				
				//Now let's create a DataTransfer to get a Filelist
				const dataTransfer=new DataTransfer();
				dataTransfer.items.add(myFile);
				fileInput.files=dataTransfer.files;
			</script>
			
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
					location.href="memberoutpage0822.jsp";
				} else {
					history.back();
				}
			}
		</script>
		
	</div>

<%@ include file="footer.jsp" %>

</body>
</html>