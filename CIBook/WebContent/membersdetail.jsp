<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Members Detail</title>
</head>
<body>

<%@ include file="../header.jsp" %>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				MEMBERS DETAIL
			</h1>
		</div>
	</div>

	<br><br>

<%
	String no=request.getParameter("mnick");

	DTOmember member=DAOmember.getDetail(no);
	
	String img=member.getMiname();
	String imgstr="";
	
	if(img!=null) {
		imgstr="images/"+img;
	}
%>
	<img src="<%=imgstr %>" class="rounded mx-auto d-block w-150 h-150" alt="사진">

	<br><br>
	
	<div class="container text-center">
		<div class="card align-middle text-center border-info text-dark bg-light mb-3 m-auto" style="max-width: 18rem;">
			<div class="card-header">
		    	no. : <%=member.getMno() %><br>
			</div>
				<div class="card-body">
				<h5 class="card-title">nickname(id) : <%=member.getMnick() %><br></h5>
				<p class="card-text">tel. : <%=member.getMtel() %><br>
								email : <%=member.getMemail() %><br>
								gender : <%=member.getMgender() %><br>
								image : <%=member.getMiname() %><br>
								member-level : <%=member.getMlevel() %><br>
								join-date : <%=member.getMdate() %><br>
				</p>
				</div>
		</div>
		
		<br><br>

		<a class="btn btn-info" href="members.jsp" role="button">목록보기</a><br><br>
		<!-- <a class="btn btn-secondary" href="productinputpage0819.jsp" role="button">등록</a> -->
	</div>

<br><br><br><br><br><br>

<%@ include file="../footer.jsp" %>
	
</body>
</html>