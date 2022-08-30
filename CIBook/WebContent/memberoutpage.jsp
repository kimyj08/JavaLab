<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	out.print("<script>alert('정말 탈퇴하시겠습니까?');</script>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>본인확인</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
  
<%@ include file="header.jsp" %>

<%
	if(mnick==null) {
		out.print("<script>alert('로그인이 필요합니다.');</script>");
		out.print("<script>location.href='loginpage.jsp'</script>");
	}
%>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
		
			<h1 class = "display-3">
				MEMBER OUT
			</h1>
		</div>	
	</div>
	
	<br><br><br><br>
	
	<div class="container" style="max-width:330px">
    
		<main class="form-signin">
		  <form action="memberoutcheck.jsp">
		  	<div class="d-flex justify-content-center">
		    	<img class="mb-4 rounded" src="https://cdn.indiepost.co.kr/uploads/images/2018/09/20/6onQxy-700x541.jpeg" alt="" width="72" height="57">
		    </div>
		    	
		<h1 class="h3 mb-3 fw-normal text-center">탈퇴하려면 비밀번호를 입력하세요.</h1>
		
		    <div class="form-floating">
		      <input type="text" name="mnick" class="form-control" id="floatingInput" placeholder="id">
		      <label for="floatingInput">ID</label>
		    </div>
		    <div class="form-floating">
		      <input type="password" name="mpass" class="form-control" id="floatingPassword" placeholder="Password">
		      <label for="floatingPassword">P.W.</label>
		    </div>
		    
		    <br>
		    	    
		    <button class="w-100 btn btn-lg btn-primary" type="submit">탈퇴하기</button>
		    <br><br>
		    <p class="mt-5 mb-3 text-muted text-center">&copy; 2017–2022</p>
		  </form>
		</main>

	</div>
	
	<br><br>

<%@ include file="footer.jsp" %>
    
  </body>
</html>
