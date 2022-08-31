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

<%
	DTOmember member=DAOmember.getDetail(mnick);
%>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				회원 정보
			</h1>
		</div>
	</div>
	
	<div class="container">
		<form action="memberedit.jsp" method="post" enctype="multipart/form-data">
			
			<div class="form-group row">
				<label class="col-sm-2">ID</label>
				<div class="col-sm-8">
					<input name="mnick" value="<%=member.getMnick() %>" type="text" class="form-control" readonly>
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
				<label class="col-sm-2">PROFILE IMAGE</label>
				<div class="col-sm-8">
				  <input type="file" name="image" class="form-control" id="inputGroupFile01" onchange="setThumbnail(event);">
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
			
			<div class="form-group row">
				<label class="col-sm-2">프로필 사진 미리보기</label>
				<div id="image_container"></div>
			</div>
			
			<!-- 이미지 미리보기 -->
			<script>
			function setThumbnail(event){
				var reader = new FileReader();
				
				reader.onload = function(event){
					var img = document.createElement("img");
					img.setAttribute("src", event.target.result);
					img.setAttribute("class", "col-lg-6");
					document.querySelector("div#image_container").innerHTML="";
					document.querySelector("div#image_container").appendChild(img);
				};
				
				reader.readAsDataURL(event.target.files[0]);
			}
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