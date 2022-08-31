<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캐릭터 도감</title>
	<!-- CSS only -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
		crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark p-0 navbar-sticky-top">
		<div class="container-fluid">
	    <a class="navbar-brand" href="welcome.jsp">Character Illustrated Book</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="welcome.jsp">Home</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="boardlist.jsp">게시판</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link disabled" href="#">Link</a>
	        </li>

	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            	도감
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="cibooklist.jsp">도감목록</a></li>
	            <li><a class="dropdown-item" href="cibookinputpage.jsp">도감생성</a></li>
	            <li><hr class="dropdown-divider"></li>
	            <%
            		String mnick=(String)session.getAttribute("mnick");
	            
	            	if(mnick!=null) {
	            %>
	            <li><a class="dropdown-item" href="mycibooks.jsp">내도감</a></li>
	            <%
	            	}
	            %>
	            <li><a class="dropdown-item" href="cibooksub.jsp">도감구독</a></li>
	          </ul>
	        </li>
	        
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            	회원관리
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="loginpage.jsp">로그인</a></li>
	            <li><a class="dropdown-item" href="logoutpage.jsp">로그아웃</a></li>
	            <%
	            	if(mnick!=null) {
	            %>
	            <li><a class="dropdown-item" href="meminfopage.jsp">내정보</a></li>
	            <%
	            	}
	            %>
	            <li><hr class="dropdown-divider"></li>
	            <li><a class="dropdown-item" href="memberinputpage.jsp">회원가입</a></li>
	            <%
	            	if(mnick!=null) {
	            %>
	            <li><a class="dropdown-item" href="memberoutpage.jsp">회원탈퇴</a></li>
	            <%
	            	}
	            %>
	          </ul>
	        </li>
	        
	        <li class="nav-item dropdown">
	        <%
	        	if(session.getAttribute("mlevel")!=null) {
	        		
	        		String mlevel=(String)session.getAttribute("mlevel");
	        
					if(mlevel.equals("1")) {
			%>
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            	관리자전용
	          </a>
			<% 
					}
				}
			%>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="members.jsp">회원관리</a></li>
	            <li><a class="dropdown-item" href="cibooks.jsp">도감관리</a></li>
	            <li><a class="dropdown-item" href="cibooksubs.jsp">구독관리</a></li>
	            <li><a class="dropdown-item" href="boards.jsp">게시판관리</a></li>
	            <li><hr class="dropdown-divider"></li>
	            <li><a class="dropdown-item" href="etcs.jsp">기타</a></li>
	          </ul>
	        </li>
	        
	        <li class="nav-item">
	          <a class="nav-link" href="information.jsp">INFO.</a>
	        </li>
	        
	        <li class="nav-item">
	          <a class="nav-link disabled">Disabled</a>
	        </li>
	      </ul>
	      <!-- <form class="d-flex" role="search">
	        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
	        <button class="btn btn-outline-info" type="submit">Search</button>
	      </form> --> 
	      <div class="text-white">
		    <%
		      if(mnick!=null) {
		    	  out.print(mnick+"님 로그인 상태입니다.");
		      } else {
		    	  out.print("방문을 환영합니다. 로그인 하세요.");
		      }
		      %>
		      
		      <%-- <%
				String mname = (String)session.getAttribute("mname");
				String status = "";
				if (mname == null) {
					status = "로그인 하세요";
				} else {
					status = mname + " 님 방문을 환영합니다.";
				}
				
				boolean login = true;
			 %> --%>
	      </div> 
	      	
	    </div>
	  </div>
	</nav>
</body>
</html>