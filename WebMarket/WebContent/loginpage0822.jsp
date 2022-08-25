<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
  
<%@ include file="header.jsp" %>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
		
			<h1 class = "display-3">
				LOGIN
			</h1>
		</div>	
	</div>
	
	<br><br><br><br>
	
	<div class="container" style="max-width:330px">
    
		<main class="form-signin">
		  <form action="logincheck0822.jsp">
		  	<div class="d-flex justify-content-center">
		    	<img class="mb-4 rounded" src="https://cdn.indiepost.co.kr/uploads/images/2018/09/20/6onQxy-700x541.jpeg" alt="" width="72" height="57">
		    </div>
		    	
		<h1 class="h3 mb-3 fw-normal text-center">로그인 하세요.</h1>
		
		    <div class="form-floating">
		      <input type="text" name="mname" class="form-control" id="floatingInput" placeholder="id">
		      <label for="floatingInput">ID</label>
		    </div>
		    <div class="form-floating">
		      <input type="password" name="mpass" class="form-control" id="floatingPassword" placeholder="Password">
		      <label for="floatingPassword">P.W.</label>
		    </div>
		    
		    <br>
		
		<div class="d-flex justify-content-center">
		    <div class="checkbox mb-3">
		      <label>
		        <input type="checkbox" value="remember-me"> LOGIN REMEMBER
		      </label>
		</div>
    </div>
		    
		    <button class="w-100 btn btn-lg btn-primary" type="submit">LOGIN</button>
		    <br><br>
		    <img src="http://papaspick.com/web/upload/2019_web/icon/kakao_login.jpg" height="60" width="305px" class="rounded" hreg="#">
		    <p class="mt-5 mb-3 text-muted text-center">&copy; 2017–2022</p>
		  </form>
		</main>

	</div>
	
	<br><br>

<%@ include file="footer.jsp" %>
    
  </body>
</html>